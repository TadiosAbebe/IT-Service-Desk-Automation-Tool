$global:selected_adapter = $null
$global:tb_ip1 = $null
$global:tb_subnet1 = $null
$global:tb_getway1 = $null

$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
$testadmin = $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
if ($testadmin -eq $false) {
    Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    exit $LASTEXITCODE
}

$btn_firewall_enable_Click = { enable_firewall }
$btn_firewall_disable_Click = { disable_firewall }
$btn_rdp_enable_Click = { enable_rdp }
$btn_rdp_disable_Click = { disable_rdp }
$btn_admin_enable_Click = { enable_admin }
$btn_set_password_Click = { set_admin_password }
$btn_add_thispc_Click = { add_thispcicon }
$btn_addnetwork_Click = { add_networkicon }
$btn_rename_Click = { rename_computer }
$lst_adapter_SelectedIndexChanged = { set_info }
$btn_dhcp_Click = {
    netsh interface ipv4 set address name=$global:selected_adapter source=dhcp
    netsh interface ipv4 set dnsservers name=$global:selected_adapter source=dhcp
    set_info_slow
}
$btn_changeip_Click = {
    $ip = $tb_ip_new.Text
    netsh interface ipv4 set address name=$global:selected_adapter source=static address=$ip store=persistent
    set_info_slow
}
$btn_changesubnet_Click = {
    $ip = $tb_ip_new.Text
    $sub = $tb_subnet_new.Text
    if ($ip -eq "") {
        $tb_ip_new.BackColor = "Red"        
    }
    else {
        $tb_ip_new.BackColor = "White"
        netsh interface ipv4 set address name=$global:selected_adapter source=static address=$ip mask=$sub store=persistent
        set_info_slow
    }
}
$btn_changegetway_Click = {
    $ip = $tb_ip_new.Text
    $get = $tb_getway_new.Text
    if ($ip -eq "") {
        $tb_ip_new.BackColor = "Red"        
    }
    else {
        $tb_ip_new.BackColor = "White"
        netsh interface ipv4 set address name=$global:selected_adapter source=static address=$ip gateway=$get store=persistent
        set_info_slow
    }
}
$btn_changedns_Click = {
    $d1 = $tb_dns_new.Text
    netsh interface ipv4 set dnsservers name=$global:selected_adapter  source=static address="$d1" validate=no
    set_info
}
$btn_changednsalt_Click = {
    $d2 = $tb_dnsalt_new.Text
    netsh interface ipv4 add dnsservers name=$global:selected_adapter address="$d2" validate=no index=2
    set_info
}
$btn_check_status_Click = { check_act_stat }
$btn_activate_Click = { windows_activate }
$btn_check_all_Click = {
    $cb1.Checked = $true
    $cb2.Checked = $true
    $cb3.Checked = $true
    $cb4.Checked = $true
    $cb5.Checked = $true
    $cb6.Checked = $true
    $cb7.Checked = $true
}
$btn_uncheck_all_Click = {
    $cb1.Checked = $false
    $cb2.Checked = $false
    $cb3.Checked = $false
    $cb4.Checked = $false
    $cb5.Checked = $false
    $cb6.Checked = $false
    $cb7.Checked = $false
}
$btn_clear_Click = {
    $tb_admin_password.Text = ""
    $tb_new_computer_name.Text = ""
    $tb_getway.Text = ""
    $tb_ip.Text = ""
    $tb_ip_new.Text = ""
    $tb_subnet.Text = ""
    $tb_subnet_new.Text = ""
    $tb_getway_new.Text = ""
    $tb_dns.Text = ""
    $tb_dns_new.Text = ""
    $tb_dnsalt.Text = ""
    $tb_dnsalt_new.Text = ""
}
$run_script_Click = {
    if ($cb1.Checked) { enable_firewall }
    if ($cb2.Checked) { enable_rdp }
    if ($cb3.Checked) { 
        enable_admin
        set_admin_password 
    }
    if ($cb4.Checked) { 
        set_param
    }
    if ($cb5.Checked) { rename_computer }
    if ($cb6.Checked) { 
        add_thispcicon
        add_networkicon 
    }
    if ($cb7.Checked) { 
        windows_activate
        set_info
    }
}
function set_param {
    if ($global:selected_adapter) {
        [bool]$check_fill = 1
        if ($tb_ip_new.Text -eq "") {
            $tb_ip_new.BackColor = "Red"
            $check_fill = 0
        }
        if ($tb_subnet_new.Text -eq "") {
            $tb_subnet_new.BackColor = "Red"
            $check_fill = 0
        }
        if ($tb_getway_new.Text -eq "") {
            $tb_getway_new.BackColor = "Red"
            $check_fill = 0
        }
        if ($tb_dns_new.Text -eq "") {
            $tb_dns_new.BackColor = "Red"
            $check_fill = 0
        }
        if ($tb_dnsalt_new.Text -eq "") {
            $tb_dnsalt_new.BackColor = "Red"
            $check_fill = 0
        }
        if ($check_fill) {
            $ip = $tb_ip_new.Text
            $sub = $tb_subnet_new.Text
            $get = $tb_getway_new.Text
            $d1 = $tb_dns_new.Text
            $d2 = $tb_dnsalt_new.Text
            netsh interface ipv4 set address name=$global:selected_adapter source=static address=$ip mask=$sub gateway=$get store=persistent
            netsh interface ipv4 set dnsservers name=$global:selected_adapter  source=static address="$d1" validate=no
            netsh interface ipv4 add dnsservers name=$global:selected_adapter address="$d2" validate=no index=2
        }
    }
    else {
        Write-Host "Network Adapter is not Selected" -foregroundcolor Red
        Add-OutputBoxLine -Message "Network Adapter is not Selected" 
    }
}

function windows_activate {
    $loc1 = Join-Path $PSScriptRoot "res\KMS_VL_ALL-34\AutoRenewal-Setup.cmd"
    $loc2 = Join-Path $PSScriptRoot "res\KMS_VL_ALL-34\Activate.cmd"
    Start-Process -FilePath "C:\Windows\System32\cmd.exe" -ArgumentList "/c", $loc1 -Verb RunAs -Wait
    Start-Process -FilePath "C:\Windows\System32\cmd.exe" -ArgumentList "/c", $loc2 -Verb RunAs -Wait
    check_act_stat
}

function check_act_stat {
    $licence_info = Get-CIMInstance -query "select Name, Description, LicenseStatus from SoftwareLicensingProduct where LicenseStatus=1" | Format-List Name, Description, LicenseStatus
    if ($licence_info) {
        Write-Host "Windows is Activated`n" -foregroundcolor Green
        Add-OutputBoxLine -Message "Windows is Activated"
    }
    else {
        Write-Host "Windows is Not Activated`n" -foregroundcolor Red
        Add-OutputBoxLine -Message "Windows is Not Activated"
    }    
}

function fetch_info_slow {
    if ($lst_adapter.SelectedItem) {
        Start-Sleep -s 4
        $global:selected_adapter = $lst_adapter.selecteditem
        $global:tb_ip1 = netsh interface ip show address "$global:selected_adapter" `
        | where { $_ -match "IP Address" } `
        | % { $_ -replace "^.*IP Address:\W*", "" }
        $global:tb_subnet1 = netsh interface ip show address "$global:selected_adapter" `
        | where { $_ -match "Subnet Prefix" } `
        | % { $_ -replace "^.*Subnet Prefix:\W*", "" }
        $global:tb_getway1 = netsh interface ip show address "$global:selected_adapter" `
        | where { $_ -match "Default Gateway" } `
        | % { $_ -replace "^.*Default Gateway:\W*", "" }
    }
    else {
        Write-Host "Select a Network Adapter" -foregroundcolor Red
        Add-OutputBoxLine -Message "Select a Network Adapter"
    }
}

function set_info_slow {
    fetch_info_slow
    if ($lst_adapter.SelectedItem) {
        Add-OutputBoxLine -Message "---------------------------------"
        Add-OutputBoxLine -Message "Network Interface: $global:selected_adapter"
        $tb_ip.Text = $global:tb_ip1
        Add-OutputBoxLine -Message "IPv4 Address: $global:tb_ip1"
        $tb_subnet.Text = $global:tb_subnet1
        Add-OutputBoxLine -Message "Subnet Address: $global:tb_subnet1"
        $tb_getway.Text = $global:tb_getway1
        Add-OutputBoxLine -Message "Default Gateway: $global:tb_getway1"
        $dns1 = ((((get-netipconfiguration -interfacealias $global:selected_adapter).dnsserver)[1]).serveraddresses)[0]
        $dns2 = ((((get-netipconfiguration -interfacealias $global:selected_adapter).dnsserver)[1]).serveraddresses)[1]
        $tb_dns.Text = $dns1
        Add-OutputBoxLine -Message "DNS Address: $dns1"
        $tb_dnsalt.Text = $dns2
        Add-OutputBoxLine -Message "Alternative DNS: $dns2"
        Add-OutputBoxLine -Message "---------------------------------"  
    }
    else {
        Write-Host "Select a Network Adapter" -foregroundcolor Red
        Add-OutputBoxLine -Message "Select a Network Adapter"
    }
}

function fetch_info {
    if ($lst_adapter.SelectedItem) {
        $global:selected_adapter = $lst_adapter.selecteditem
        $global:tb_ip1 = netsh interface ip show address "$global:selected_adapter" `
        | where { $_ -match "IP Address" } `
        | % { $_ -replace "^.*IP Address:\W*", "" }
        $global:tb_subnet1 = netsh interface ip show address "$global:selected_adapter" `
        | where { $_ -match "Subnet Prefix" } `
        | % { $_ -replace "^.*Subnet Prefix:\W*", "" }
        $global:tb_getway1 = netsh interface ip show address "$global:selected_adapter" `
        | where { $_ -match "Default Gateway" } `
        | % { $_ -replace "^.*Default Gateway:\W*", "" }
    }
    else {
        Write-Host "Select a Network Adapter" -foregroundcolor Red
        Add-OutputBoxLine -Message "Select a Network Adapter"
    }
}

function set_info {
    fetch_info
    if ($lst_adapter.SelectedItem) {
        Add-OutputBoxLine -Message "---------------------------------"
        Add-OutputBoxLine -Message "Network Interface: $global:selected_adapter"
        $tb_ip.Text = $global:tb_ip1
        Add-OutputBoxLine -Message "IPv4 Address: $global:tb_ip1"
        $tb_subnet.Text = $global:tb_subnet1
        Add-OutputBoxLine -Message "Subnet Address: $global:tb_subnet1"
        $tb_getway.Text = $global:tb_getway1
        Add-OutputBoxLine -Message "Default Gateway: $global:tb_getway1"
        $dns1 = ((((get-netipconfiguration -interfacealias $global:selected_adapter).dnsserver)[1]).serveraddresses)[0]
        $dns2 = ((((get-netipconfiguration -interfacealias $global:selected_adapter).dnsserver)[1]).serveraddresses)[1]
        $tb_dns.Text = $dns1
        Add-OutputBoxLine -Message "DNS Address: $dns1"
        $tb_dnsalt.Text = $dns2
        Add-OutputBoxLine -Message "Alternative DNS: $dns2"
        Add-OutputBoxLine -Message "---------------------------------"  
    }
    else {
        Write-Host "Select a Network Adapter" -foregroundcolor Red
        Add-OutputBoxLine -Message "Select a Network Adapter"
    }
}

function rename_computer {
    if ($tb_new_computer_name.Text -eq "") {
        $tb_new_computer_name.BackColor = "Red"
    }
    else {
        $new_name = $tb_new_computer_name.Text
        Rename-Computer -NewName $new_name
    }
}

function add_networkicon {
    New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}" -PropertyType DWord -Value 0 -Force
    check_net_ico
}

function check_net_ico() {
    $check_icon = get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}"
    if ($null -eq $check_icon. { F02C1A0D-BE21-4350-88B0-7367FC96EF3C }) {
        Write-Host "Network Icon has been added to the Desktop`n" -foregroundcolor Green
        Add-OutputBoxLine -Message "Network Icon has been added to the Desktop"
    }
    else {
        Write-Host "Network Icon has not been added to the Desktop`n"-foregroundcolor Red
        Add-OutputBoxLine -Message "Network Icon has not been added to the Desktop"
    }
}

function add_thispcicon {
    New-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel -Name "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" -PropertyType DWord -Value 0 -Force
    check_pc_ico
}

function check_pc_ico() {
    $check_icon = get-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel -Name "{F02C1A0D-BE21-4350-88B0-7367FC96EF3C}"
    if ($null -eq $check_icon. { 20D04FE0-3AEA-1069-A2D8-08002B30309D }) {
        Write-Host "This PC Icon has been added to the Desktop`n" -foregroundcolor Green
        Add-OutputBoxLine -Message "This PC Icon has been added to the Desktop"
    }
    else {
        Write-Host "This PC Icon has not been added to the Desktop`n" -foregroundcolor Red
        Add-OutputBoxLine -Message "This PC Icon has not been added to the Desktop"
    }
}

function set_admin_password {
    if ($tb_admin_password.Text -eq "") {
        $tb_admin_password.BackColor = "Red"
    }
    else {
        $password = $tb_admin_password.Text
        $set_pass = net user "Administrator" $password
        Write-Host $set_pass -foregroundcolor Green
        Add-OutputBoxLine -Message $set_pass
    }
}

function enable_admin {
    $enable_admin = net user "Administrator" /active:yes
    Write-Host $enable_admin -foregroundcolor Green
    Add-OutputBoxLine -Message $enable_admin
}


function enable_firewall {
    Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled True
    check_firewall_stat
}

function disable_firewall {
    Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled False
    check_firewall_stat 
}
function check_firewall_stat() {
    $firewall_profile = (get-NetFirewallProfile)
    $firewall_profile | ForEach-Object {
        if ($_.Enabled -eq 1) {
            write-host "the windows firewall $($_.Name) profile is enabled" -foregroundcolor Green
            Add-OutputBoxLine -Message "Windows firewall is enabled for $($_.Name)"
        }
        else {
            write-host "the windows filewall $($_.Name) profile is disabled" -foregroundcolor Red
            Add-OutputBoxLine -Message "Windows firewall is disabled for $($_.Name)"
        }
    };
    Write-Host "`n"
}

function enable_rdp {
    Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 0
    $getobj = Get-ciminstance -ClassName "Win32_TSGeneralSetting" -Namespace root\cimv2\terminalservices -Filter "TerminalName='RDP-tcp'"
    $getobj | Invoke-CimMethod -MethodName SetUserAuthenticationRequired -Arguments @{UserAuthenticationRequired = 0 } | Out-Null
    check_rdp_stat
}

function disable_rdp {
    Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -value 1
    check_rdp_stat  
}

function check_rdp_stat() {
    $check_rdp = get-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections"
    if ($check_rdp.fDenyTSConnections -eq 1) {
        Write-Host "Remote Desktop Protocol is Disabled`n" -foregroundcolor Red
        Add-OutputBoxLine -Message "Remote Desktop Protocol is Disabled"
    }
    else {
        Write-Host "Remote Desktop Protocol is Enabled`n" -foregroundcolor Green
        Add-OutputBoxLine -Message "Remote Desktop Protocol is Enabled"
    }
}

function Add-OutputBoxLine {
    Param ($Message)
    $OutputBox.AppendText("`r`n$Message")
    $OutputBox.Refresh()
    $OutputBox.ScrollToCaret()
}
function nondebug_mode() {
    Add-Type -Name Window -Namespace Console -MemberDefinition '
	[DllImport("Kernel32.dll")]
	public static extern IntPtr GetConsoleWindow();
	[DllImport("user32.dll")]
	public static extern bool ShowWindow(IntPtr hWnd, Int32 nCmdShow);'
    [Console.Window]::ShowWindow([Console.Window]::GetConsoleWindow(), 0)
}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'ui.ps1')
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form1.ShowDialog()