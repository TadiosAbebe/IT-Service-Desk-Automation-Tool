$btn_firewall_enable_Click = { enable_firewall }

function enable_firewall {
    Set-NetFirewallProfile -Profile Domain, Public, Private -Enabled True
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

function Add-OutputBoxLine {
    Param ($Message)
    $OutputBox.AppendText("`r`n$Message")
    $OutputBox.Refresh()
    $OutputBox.ScrollToCaret()
}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'ui.ps1')
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form1.ShowDialog()