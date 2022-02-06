$Form1 = New-Object -TypeName System.Windows.Forms.Form

[System.Windows.Forms.GroupBox]$GroupBox1 = $null
[System.Windows.Forms.GroupBox]$GroupBox2 = $null
[System.Windows.Forms.GroupBox]$GroupBox3 = $null
[System.Windows.Forms.GroupBox]$GroupBox4 = $null
[System.Windows.Forms.GroupBox]$GroupBox5 = $null
[System.Windows.Forms.GroupBox]$GroupBox6 = $null
[System.Windows.Forms.GroupBox]$GroupBox7 = $null
[System.Windows.Forms.GroupBox]$GroupBox8 = $null
[System.Windows.Forms.Button]$btn_activate = $null
[System.Windows.Forms.Button]$btn_check_status = $null
[System.Windows.Forms.Button]$btn_set_password = $null
[System.Windows.Forms.Button]$btn_admin_enable = $null
[System.Windows.Forms.Button]$btn_firewall_disable = $null
[System.Windows.Forms.Button]$btn_firewall_enable = $null
[System.Windows.Forms.Button]$btn_rdp_disable = $null
[System.Windows.Forms.Button]$btn_rdp_enable = $null
[System.Windows.Forms.Button]$btn_dhcp = $null
[System.Windows.Forms.Button]$btn_changeip = $null
[System.Windows.Forms.Button]$btn_changednsalt = $null
[System.Windows.Forms.Button]$btn_changedns = $null
[System.Windows.Forms.Button]$btn_changegetway = $null
[System.Windows.Forms.Button]$btn_changesubnet = $null
[System.Windows.Forms.Button]$btn_rename = $null
[System.Windows.Forms.Button]$Button1 = $null
[System.Windows.Forms.Button]$Button2 = $null
[System.Windows.Forms.Button]$btn_addnetwork = $null
[System.Windows.Forms.Button]$btn_add_thispc = $null
[System.Windows.Forms.Button]$btn_clear = $null
[System.Windows.Forms.Button]$run_script = $null
[System.Windows.Forms.Button]$btn_uncheck_all = $null
[System.Windows.Forms.Button]$btn_check_all = $null
[System.Windows.Forms.CheckBox]$cb1 = $null
[System.Windows.Forms.CheckBox]$cb2 = $null
[System.Windows.Forms.CheckBox]$cb3 = $null
[System.Windows.Forms.CheckBox]$cb4 = $null
[System.Windows.Forms.CheckBox]$cb5 = $null
[System.Windows.Forms.CheckBox]$cb6 = $null
[System.Windows.Forms.CheckBox]$cb7 = $null
[System.Windows.Forms.Label]$lbl_ip = $null
[System.Windows.Forms.Label]$lbl_dnsalt = $null
[System.Windows.Forms.Label]$lbl_dns = $null
[System.Windows.Forms.Label]$lbl_gateway = $null
[System.Windows.Forms.Label]$lbl_subnet = $null
[System.Windows.Forms.Label]$lbl_computer_name = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.TextBox]$tb_subnet = $null
[System.Windows.Forms.TextBox]$tb_ip_new = $null
[System.Windows.Forms.TextBox]$tb_ip = $null
[System.Windows.Forms.TextBox]$tb_getway = $null
[System.Windows.Forms.TextBox]$tb_subnet_new = $null
[System.Windows.Forms.TextBox]$tb_getway_new = $null
[System.Windows.Forms.TextBox]$tb_dns = $null
[System.Windows.Forms.TextBox]$tb_dns_new = $null
[System.Windows.Forms.TextBox]$tb_dnsalt = $null
[System.Windows.Forms.TextBox]$tb_dnsalt_new = $null
[System.Windows.Forms.TextBox]$tb_computer_name = $null
[System.Windows.Forms.TextBox]$tb_new_computer_name = $null
[System.Windows.Forms.TextBox]$OutputBox = $null
[System.Windows.Forms.Panel]$left_panel = $null
[System.Windows.Forms.Panel]$right_panel = $null
[System.Windows.Forms.Panel]$window = $null
[System.Windows.Forms.ComboBox]$lst_adapter = $null
[System.Windows.Forms.MaskedTextBox]$tb_admin_password = $null
function InitializeComponent {

    $GroupBox1 = (New-Object -TypeName System.Windows.Forms.GroupBox)
    $GroupBox2 = (New-Object -TypeName System.Windows.Forms.GroupBox)
    $GroupBox3 = (New-Object -TypeName System.Windows.Forms.GroupBox)
    $GroupBox4 = (New-Object -TypeName System.Windows.Forms.GroupBox)
    $GroupBox5 = (New-Object -TypeName System.Windows.Forms.GroupBox)
    $GroupBox6 = (New-Object -TypeName System.Windows.Forms.GroupBox)
    $GroupBox7 = (New-Object -TypeName System.Windows.Forms.GroupBox)
    $GroupBox8 = (New-Object -TypeName System.Windows.Forms.GroupBox)
    $btn_activate = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_check_status = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_set_password = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_admin_enable = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_firewall_disable = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_firewall_enable = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_rdp_disable = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_rdp_enable = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_rename = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_changeip = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_changednsalt = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_changedns = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_changegetway = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_changesubnet = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_add_thispc = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_addnetwork = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_check_all = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_uncheck_all = (New-Object -TypeName System.Windows.Forms.Button)
    $run_script = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_dhcp = (New-Object -TypeName System.Windows.Forms.Button)
    $btn_clear = (New-Object -TypeName System.Windows.Forms.Button)
    $Button1 = (New-Object -TypeName System.Windows.Forms.Button)
    $Button2 = (New-Object -TypeName System.Windows.Forms.Button)
    $cb1 = (New-Object -TypeName System.Windows.Forms.CheckBox)
    $cb2 = (New-Object -TypeName System.Windows.Forms.CheckBox)
    $cb3 = (New-Object -TypeName System.Windows.Forms.CheckBox)
    $cb4 = (New-Object -TypeName System.Windows.Forms.CheckBox)
    $cb5 = (New-Object -TypeName System.Windows.Forms.CheckBox)
    $cb6 = (New-Object -TypeName System.Windows.Forms.CheckBox)
    $cb7 = (New-Object -TypeName System.Windows.Forms.CheckBox)
    $lbl_computer_name = (New-Object -TypeName System.Windows.Forms.Label)
    $lbl_ip = (New-Object -TypeName System.Windows.Forms.Label)
    $lbl_dnsalt = (New-Object -TypeName System.Windows.Forms.Label)
    $lbl_dns = (New-Object -TypeName System.Windows.Forms.Label)
    $lbl_gateway = (New-Object -TypeName System.Windows.Forms.Label)
    $lbl_subnet = (New-Object -TypeName System.Windows.Forms.Label)
    $Label1 = (New-Object -TypeName System.Windows.Forms.Label)
    $tb_computer_name = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_new_computer_name = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_getway = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_ip = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_ip_new = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_subnet = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_subnet_new = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_getway_new = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_dns = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_dns_new = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_dnsalt = (New-Object -TypeName System.Windows.Forms.TextBox)
    $tb_dnsalt_new = (New-Object -TypeName System.Windows.Forms.TextBox)
    $OutputBox = (New-Object -TypeName System.Windows.Forms.TextBox)
    $left_panel = (New-Object -TypeName System.Windows.Forms.Panel)
    $right_panel = (New-Object -TypeName System.Windows.Forms.Panel)
    $lst_adapter = (New-Object -TypeName System.Windows.Forms.ComboBox)
    $tb_admin_password = (New-Object -TypeName System.Windows.Forms.MaskedTextBox)
    $window = (New-Object -TypeName System.Windows.Forms.Panel)

    $GroupBox1.SuspendLayout()
    $GroupBox2.SuspendLayout()
    $GroupBox3.SuspendLayout()
    $GroupBox4.SuspendLayout()
    $GroupBox5.SuspendLayout()
    $GroupBox8.SuspendLayout()
    $GroupBox6.SuspendLayout()
    $GroupBox7.SuspendLayout()
    $left_panel.SuspendLayout()
    $right_panel.SuspendLayout()
    $window.SuspendLayout()
    $Form1.SuspendLayout()
    #
    #GroupBox1
    #
    $GroupBox1.AutoSizeMode = [System.Windows.Forms.AutoSizeMode]::GrowAndShrink
    $GroupBox1.Controls.Add($cb7)
    $GroupBox1.Controls.Add($btn_activate)
    $GroupBox1.Controls.Add($btn_check_status)
    $GroupBox1.Dock = [System.Windows.Forms.DockStyle]::Top
    $GroupBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $GroupBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]551))
    $GroupBox1.Name = [System.String]'GroupBox1'
    $GroupBox1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
    $GroupBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]580, [System.Int32]59))
    $GroupBox1.TabIndex = [System.Int32]0
    $GroupBox1.TabStop = $false
    $GroupBox1.Text = [System.String]'Windows Activation'
    $GroupBox1.UseCompatibleTextRendering = $true
    #
    #cb7
    #
    $cb7.AutoSize = $true
    $cb7.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $cb7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]557, [System.Int32]25))
    $cb7.Name = [System.String]'cb7'
    $cb7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]12, [System.Int32]11))
    $cb7.TabIndex = [System.Int32]6
    $cb7.UseCompatibleTextRendering = $true
    $cb7.UseVisualStyleBackColor = $true
    #
    #btn_activate
    #
    $btn_activate.BackColor = [System.Drawing.Color]::White
    $btn_activate.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_activate.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_activate.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_activate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]103, [System.Int32]25))
    $btn_activate.Name = [System.String]'btn_activate'
    $btn_activate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_activate.TabIndex = [System.Int32]1
    $btn_activate.Text = [System.String]'Activate'
    $btn_activate.UseCompatibleTextRendering = $true
    $btn_activate.UseVisualStyleBackColor = $false
    $btn_activate.add_Click($btn_activate_Click)
    #
    #btn_check_status
    #
    $btn_check_status.BackColor = [System.Drawing.Color]::White
    $btn_check_status.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_check_status.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_check_status.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_check_status.ForeColor = [System.Drawing.Color]::Black
    $btn_check_status.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]11, [System.Int32]25))
    $btn_check_status.Name = [System.String]'btn_check_status'
    $btn_check_status.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86, [System.Int32]24))
    $btn_check_status.TabIndex = [System.Int32]0
    $btn_check_status.Text = [System.String]'Check Status'
    $btn_check_status.UseCompatibleTextRendering = $true
    $btn_check_status.UseVisualStyleBackColor = $false
    $btn_check_status.add_Click($btn_check_status_Click)
    #
    #GroupBox2
    #
    $GroupBox2.Controls.Add($cb3)
    $GroupBox2.Controls.Add($tb_admin_password)
    $GroupBox2.Controls.Add($btn_set_password)
    $GroupBox2.Controls.Add($btn_admin_enable)
    $GroupBox2.Dock = [System.Windows.Forms.DockStyle]::Top
    $GroupBox2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $GroupBox2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]130))
    $GroupBox2.Name = [System.String]'GroupBox2'
    $GroupBox2.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
    $GroupBox2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]580, [System.Int32]65))
    $GroupBox2.TabIndex = [System.Int32]1
    $GroupBox2.TabStop = $false
    $GroupBox2.Text = [System.String]'Administrator Account Control'
    $GroupBox2.UseCompatibleTextRendering = $true
    #
    #cb3
    #
    $cb3.AutoSize = $true
    $cb3.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $cb3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]557, [System.Int32]28))
    $cb3.Name = [System.String]'cb3'
    $cb3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]12, [System.Int32]11))
    $cb3.TabIndex = [System.Int32]6
    $cb3.UseCompatibleTextRendering = $true
    $cb3.UseVisualStyleBackColor = $true
    #
    #tb_admin_password
    #
    $tb_admin_password.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_admin_password.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_admin_password.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]25))
    $tb_admin_password.Name = [System.String]'tb_admin_password'
    $tb_admin_password.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]190, [System.Int32]24))
    $tb_admin_password.TabIndex = [System.Int32]3
    #
    #btn_set_password
    #
    $btn_set_password.BackColor = [System.Drawing.Color]::White
    $btn_set_password.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_set_password.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_set_password.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_set_password.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287, [System.Int32]25))
    $btn_set_password.Name = [System.String]'btn_set_password'
    $btn_set_password.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]87, [System.Int32]24))
    $btn_set_password.TabIndex = [System.Int32]2
    $btn_set_password.Text = [System.String]'Set Password'
    $btn_set_password.UseCompatibleTextRendering = $true
    $btn_set_password.UseVisualStyleBackColor = $false
    $btn_set_password.add_Click($btn_set_password_Click)
    #
    #btn_admin_enable
    #
    $btn_admin_enable.BackColor = [System.Drawing.Color]::White
    $btn_admin_enable.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_admin_enable.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_admin_enable.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_admin_enable.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]11, [System.Int32]25))
    $btn_admin_enable.Name = [System.String]'btn_admin_enable'
    $btn_admin_enable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_admin_enable.TabIndex = [System.Int32]0
    $btn_admin_enable.Text = [System.String]'Enable'
    $btn_admin_enable.UseCompatibleTextRendering = $true
    $btn_admin_enable.UseVisualStyleBackColor = $false
    $btn_admin_enable.add_Click($btn_admin_enable_Click)
    #
    #GroupBox3
    #
    $GroupBox3.Controls.Add($cb1)
    $GroupBox3.Controls.Add($btn_firewall_disable)
    $GroupBox3.Controls.Add($btn_firewall_enable)
    $GroupBox3.Dock = [System.Windows.Forms.DockStyle]::Top
    $GroupBox3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $GroupBox3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]0))
    $GroupBox3.Name = [System.String]'GroupBox3'
    $GroupBox3.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
    $GroupBox3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]580, [System.Int32]65))
    $GroupBox3.TabIndex = [System.Int32]2
    $GroupBox3.TabStop = $false
    $GroupBox3.Text = [System.String]'Windows Firewall'
    $GroupBox3.UseCompatibleTextRendering = $true
    #
    #cb1
    #
    $cb1.AutoSize = $true
    $cb1.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $cb1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]557, [System.Int32]31))
    $cb1.Name = [System.String]'cb1'
    $cb1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]12, [System.Int32]11))
    $cb1.TabIndex = [System.Int32]6
    $cb1.UseCompatibleTextRendering = $true
    $cb1.UseVisualStyleBackColor = $true
    #
    #btn_firewall_disable
    #
    $btn_firewall_disable.BackColor = [System.Drawing.Color]::White
    $btn_firewall_disable.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_firewall_disable.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_firewall_disable.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_firewall_disable.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]25))
    $btn_firewall_disable.Name = [System.String]'btn_firewall_disable'
    $btn_firewall_disable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_firewall_disable.TabIndex = [System.Int32]1
    $btn_firewall_disable.Text = [System.String]'Disable'
    $btn_firewall_disable.UseCompatibleTextRendering = $true
    $btn_firewall_disable.UseVisualStyleBackColor = $false
    $btn_firewall_disable.add_Click($btn_firewall_disable_Click)
    #
    #btn_firewall_enable
    #
    $btn_firewall_enable.BackColor = [System.Drawing.Color]::White
    $btn_firewall_enable.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_firewall_enable.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_firewall_enable.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_firewall_enable.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10, [System.Int32]25))
    $btn_firewall_enable.Name = [System.String]'btn_firewall_enable'
    $btn_firewall_enable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_firewall_enable.TabIndex = [System.Int32]0
    $btn_firewall_enable.Text = [System.String]'Enable'
    $btn_firewall_enable.UseCompatibleTextRendering = $true
    $btn_firewall_enable.UseVisualStyleBackColor = $false
    $btn_firewall_enable.add_Click($btn_firewall_enable_Click)
    #
    #GroupBox4
    #
    $GroupBox4.Controls.Add($cb2)
    $GroupBox4.Controls.Add($btn_rdp_disable)
    $GroupBox4.Controls.Add($btn_rdp_enable)
    $GroupBox4.Dock = [System.Windows.Forms.DockStyle]::Top
    $GroupBox4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $GroupBox4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]65))
    $GroupBox4.Name = [System.String]'GroupBox4'
    $GroupBox4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]580, [System.Int32]65))
    $GroupBox4.TabIndex = [System.Int32]3
    $GroupBox4.TabStop = $false
    $GroupBox4.Text = [System.String]'Remote Desktop Protocol'
    $GroupBox4.UseCompatibleTextRendering = $true
    #
    #cb2
    #
    $cb2.AutoSize = $true
    $cb2.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $cb2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]557, [System.Int32]23))
    $cb2.Name = [System.String]'cb2'
    $cb2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]12, [System.Int32]11))
    $cb2.TabIndex = [System.Int32]6
    $cb2.UseCompatibleTextRendering = $true
    $cb2.UseVisualStyleBackColor = $true
    #
    #btn_rdp_disable
    #
    $btn_rdp_disable.BackColor = [System.Drawing.Color]::White
    $btn_rdp_disable.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_rdp_disable.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_rdp_disable.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_rdp_disable.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]25))
    $btn_rdp_disable.Name = [System.String]'btn_rdp_disable'
    $btn_rdp_disable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_rdp_disable.TabIndex = [System.Int32]1
    $btn_rdp_disable.Text = [System.String]'Disable'
    $btn_rdp_disable.UseCompatibleTextRendering = $true
    $btn_rdp_disable.UseVisualStyleBackColor = $false
    $btn_rdp_disable.add_Click($btn_rdp_disable_Click)
    #
    #btn_rdp_enable
    #
    $btn_rdp_enable.BackColor = [System.Drawing.Color]::White
    $btn_rdp_enable.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_rdp_enable.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_rdp_enable.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_rdp_enable.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10, [System.Int32]25))
    $btn_rdp_enable.Name = [System.String]'btn_rdp_enable'
    $btn_rdp_enable.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_rdp_enable.TabIndex = [System.Int32]0
    $btn_rdp_enable.Text = [System.String]'Enable'
    $btn_rdp_enable.UseCompatibleTextRendering = $true
    $btn_rdp_enable.UseVisualStyleBackColor = $false
    $btn_rdp_enable.add_Click($btn_rdp_enable_Click)
    #
    #GroupBox5
    #
    $GroupBox5.AutoSize = $true
    $GroupBox5.Controls.Add($GroupBox6)
    $GroupBox5.Controls.Add($GroupBox8)
    $GroupBox5.Controls.Add($GroupBox7)
    $GroupBox5.Dock = [System.Windows.Forms.DockStyle]::Top
    $GroupBox5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $GroupBox5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]195))
    $GroupBox5.Name = [System.String]'GroupBox5'
    $GroupBox5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]580, [System.Int32]356))
    $GroupBox5.TabIndex = [System.Int32]4
    $GroupBox5.TabStop = $false
    $GroupBox5.Text = [System.String]'Computer Customization'
    $GroupBox5.UseCompatibleTextRendering = $true
    #
    #GroupBox8
    #
    $GroupBox8.Controls.Add($cb5)
    $GroupBox8.Controls.Add($tb_computer_name)
    $GroupBox8.Controls.Add($lbl_computer_name)
    $GroupBox8.Controls.Add($tb_new_computer_name)
    $GroupBox8.Controls.Add($btn_rename)
    $GroupBox8.Dock = [System.Windows.Forms.DockStyle]::Top
    $GroupBox8.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3, [System.Int32]85))
    $GroupBox8.Name = [System.String]'GroupBox8'
    $GroupBox8.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]574, [System.Int32]62))
    $GroupBox8.TabIndex = [System.Int32]7
    $GroupBox8.TabStop = $false
    $GroupBox8.Text = [System.String]'Computer Name'
    $GroupBox8.UseCompatibleTextRendering = $true
    #
    #cb5
    #
    $cb5.AutoSize = $true
    $cb5.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $cb5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]554, [System.Int32]29))
    $cb5.Name = [System.String]'cb5'
    $cb5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]12, [System.Int32]11))
    $cb5.TabIndex = [System.Int32]6
    $cb5.UseCompatibleTextRendering = $true
    $cb5.UseVisualStyleBackColor = $true
    #
    #tb_computer_name
    #
    $tb_computer_name.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_computer_name.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_computer_name.ForeColor = [System.Drawing.SystemColors]::WindowText
    $tb_computer_name.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]23))
    $tb_computer_name.Name = [System.String]'tb_computer_name'
    $tb_computer_name.ReadOnly = $true
    $tb_computer_name.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]190, [System.Int32]24))
    $tb_computer_name.TabIndex = [System.Int32]1
    $tb_computer_name.Text = HOSTNAME.EXE
    #
    #lbl_computer_name
    #
    $lbl_computer_name.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $lbl_computer_name.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10, [System.Int32]23))
    $lbl_computer_name.Margin = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]0))
    $lbl_computer_name.Name = [System.String]'lbl_computer_name'
    $lbl_computer_name.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $lbl_computer_name.TabIndex = [System.Int32]0
    $lbl_computer_name.Text = [System.String]'Name :'
    $lbl_computer_name.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
    $lbl_computer_name.UseCompatibleTextRendering = $true
    #
    #tb_new_computer_name
    #
    $tb_new_computer_name.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_new_computer_name.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_new_computer_name.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287, [System.Int32]23))
    $tb_new_computer_name.Name = [System.String]'tb_new_computer_name'
    $tb_new_computer_name.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176, [System.Int32]24))
    $tb_new_computer_name.TabIndex = [System.Int32]2
    #
    #btn_rename
    #
    $btn_rename.BackColor = [System.Drawing.Color]::White
    $btn_rename.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_rename.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_rename.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_rename.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]469, [System.Int32]23))
    $btn_rename.Name = [System.String]'btn_rename'
    $btn_rename.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_rename.TabIndex = [System.Int32]3
    $btn_rename.Text = [System.String]'Rename'
    $btn_rename.UseCompatibleTextRendering = $true
    $btn_rename.UseVisualStyleBackColor = $false
    $btn_rename.add_Click($btn_rename_Click)
    #
    #GroupBox6
    #
    $GroupBox6.Controls.Add($btn_dhcp)
    $GroupBox6.Controls.Add($cb4)
    $GroupBox6.Controls.Add($tb_getway)
    $GroupBox6.Controls.Add($lst_adapter)
    $GroupBox6.Controls.Add($lbl_ip)
    $GroupBox6.Controls.Add($tb_ip)
    $GroupBox6.Controls.Add($lbl_dnsalt)
    $GroupBox6.Controls.Add($tb_ip_new)
    $GroupBox6.Controls.Add($lbl_dns)
    $GroupBox6.Controls.Add($btn_changeip)
    $GroupBox6.Controls.Add($lbl_gateway)
    $GroupBox6.Controls.Add($tb_subnet)
    $GroupBox6.Controls.Add($lbl_subnet)
    $GroupBox6.Controls.Add($tb_subnet_new)
    $GroupBox6.Controls.Add($btn_changednsalt)
    $GroupBox6.Controls.Add($tb_getway_new)
    $GroupBox6.Controls.Add($btn_changedns)
    $GroupBox6.Controls.Add($tb_dns)
    $GroupBox6.Controls.Add($btn_changegetway)
    $GroupBox6.Controls.Add($tb_dns_new)
    $GroupBox6.Controls.Add($btn_changesubnet)
    $GroupBox6.Controls.Add($tb_dnsalt)
    $GroupBox6.Controls.Add($tb_dnsalt_new)
    $GroupBox6.Dock = [System.Windows.Forms.DockStyle]::Top
    $GroupBox6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $GroupBox6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3, [System.Int32]147))
    $GroupBox6.Name = [System.String]'GroupBox6'
    $GroupBox6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]574, [System.Int32]206))
    $GroupBox6.TabIndex = [System.Int32]5
    $GroupBox6.TabStop = $false
    $GroupBox6.Text = [System.String]'Network'
    $GroupBox6.UseCompatibleTextRendering = $true
    #
    #cb4
    #
    $cb4.AutoSize = $true
    $cb4.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $cb4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]554, [System.Int32]27))
    $cb4.Name = [System.String]'cb4'
    $cb4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]12, [System.Int32]11))
    $cb4.TabIndex = [System.Int32]6
    $cb4.UseCompatibleTextRendering = $true
    $cb4.UseVisualStyleBackColor = $true
    #
    #tb_getway
    #
    $tb_getway.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_getway.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_getway.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]116))
    $tb_getway.Name = [System.String]'tb_getway'
    $tb_getway.ReadOnly = $true
    $tb_getway.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]190, [System.Int32]24))
    $tb_getway.TabIndex = [System.Int32]10
    #
    #lst_adapter
    #
    $lst_adapter.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $lst_adapter.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $lst_adapter.FormattingEnabled = $true
    $lst_adapter.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]11, [System.Int32]23))
    $lst_adapter.Name = [System.String]'lst_adapter'
    $lst_adapter.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]270, [System.Int32]23))
    $lst_adapter.TabIndex = [System.Int32]25
    $lst_adapter.Text = [System.String]'Select Network Adapter'
    $lst_adapter.add_SelectedIndexChanged($lst_adapter_SelectedIndexChanged)
    $adaptersup = get-netadapter -physical | Where-Object status -eq 'up'
    $add_adapters = foreach ($adp in $adaptersup) { $lst_adapter.Items.Add($adp.Name) }
    #
    #lbl_ip
    #
    $lbl_ip.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $lbl_ip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10, [System.Int32]62))
    $lbl_ip.Name = [System.String]'lbl_ip'
    $lbl_ip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]23))
    $lbl_ip.TabIndex = [System.Int32]4
    $lbl_ip.Text = [System.String]'IPv4 :'
    $lbl_ip.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
    $lbl_ip.UseCompatibleTextRendering = $true
    #
    #tb_ip
    #
    $tb_ip.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_ip.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_ip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]62))
    $tb_ip.Name = [System.String]'tb_ip'
    $tb_ip.ReadOnly = $true
    $tb_ip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]190, [System.Int32]24))
    $tb_ip.TabIndex = [System.Int32]5
    #
    #lbl_dnsalt
    #
    $lbl_dnsalt.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $lbl_dnsalt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]11, [System.Int32]167))
    $lbl_dnsalt.Name = [System.String]'lbl_dnsalt'
    $lbl_dnsalt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]23))
    $lbl_dnsalt.TabIndex = [System.Int32]23
    $lbl_dnsalt.Text = [System.String]'DNS Alt :'
    $lbl_dnsalt.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
    $lbl_dnsalt.UseCompatibleTextRendering = $true
    #
    #tb_ip_new
    #
    $tb_ip_new.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_ip_new.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_ip_new.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287, [System.Int32]62))
    $tb_ip_new.Name = [System.String]'tb_ip_new'
    $tb_ip_new.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176, [System.Int32]24))
    $tb_ip_new.TabIndex = [System.Int32]6
    #
    #lbl_dns
    #
    $lbl_dns.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $lbl_dns.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]11, [System.Int32]140))
    $lbl_dns.Name = [System.String]'lbl_dns'
    $lbl_dns.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]23))
    $lbl_dns.TabIndex = [System.Int32]22
    $lbl_dns.Text = [System.String]'DNS :'
    $lbl_dns.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
    $lbl_dns.UseCompatibleTextRendering = $true
    #
    #btn_changeip
    #
    $btn_changeip.BackColor = [System.Drawing.Color]::White
    $btn_changeip.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_changeip.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_changeip.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_changeip.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]469, [System.Int32]62))
    $btn_changeip.Name = [System.String]'btn_changeip'
    $btn_changeip.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_changeip.TabIndex = [System.Int32]7
    $btn_changeip.Text = [System.String]'Change'
    $btn_changeip.UseCompatibleTextRendering = $true
    $btn_changeip.UseVisualStyleBackColor = $false
    $btn_changeip.add_Click($btn_changeip_Click)
    #
    #lbl_gateway
    #
    $lbl_gateway.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $lbl_gateway.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10, [System.Int32]113))
    $lbl_gateway.Name = [System.String]'lbl_gateway'
    $lbl_gateway.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]78, [System.Int32]23))
    $lbl_gateway.TabIndex = [System.Int32]21
    $lbl_gateway.Text = [System.String]'Gateway :'
    $lbl_gateway.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
    $lbl_gateway.UseCompatibleTextRendering = $true
    #
    #tb_subnet
    #
    $tb_subnet.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_subnet.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_subnet.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]89))
    $tb_subnet.Name = [System.String]'tb_subnet'
    $tb_subnet.ReadOnly = $true
    $tb_subnet.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]190, [System.Int32]24))
    $tb_subnet.TabIndex = [System.Int32]8
    #
    #lbl_subnet
    #
    $lbl_subnet.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $lbl_subnet.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10, [System.Int32]86))
    $lbl_subnet.Name = [System.String]'lbl_subnet'
    $lbl_subnet.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]23))
    $lbl_subnet.TabIndex = [System.Int32]20
    $lbl_subnet.Text = [System.String]'Subnet :'
    $lbl_subnet.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
    $lbl_subnet.UseCompatibleTextRendering = $true
    #
    #tb_subnet_new
    #
    $tb_subnet_new.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_subnet_new.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_subnet_new.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287, [System.Int32]89))
    $tb_subnet_new.Name = [System.String]'tb_subnet_new'
    $tb_subnet_new.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176, [System.Int32]24))
    $tb_subnet_new.TabIndex = [System.Int32]9
    #
    #btn_changednsalt
    #
    $btn_changednsalt.BackColor = [System.Drawing.Color]::White
    $btn_changednsalt.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_changednsalt.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_changednsalt.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_changednsalt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]469, [System.Int32]170))
    $btn_changednsalt.Name = [System.String]'btn_changednsalt'
    $btn_changednsalt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_changednsalt.TabIndex = [System.Int32]19
    $btn_changednsalt.Text = [System.String]'Change'
    $btn_changednsalt.UseCompatibleTextRendering = $true
    $btn_changednsalt.UseVisualStyleBackColor = $false
    $btn_changednsalt.add_Click($btn_changednsalt_Click)
    #
    #tb_getway_new
    #
    $tb_getway_new.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_getway_new.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_getway_new.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287, [System.Int32]116))
    $tb_getway_new.Name = [System.String]'tb_getway_new'
    $tb_getway_new.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176, [System.Int32]24))
    $tb_getway_new.TabIndex = [System.Int32]11
    #
    #btn_changedns
    #
    $btn_changedns.BackColor = [System.Drawing.Color]::White
    $btn_changedns.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_changedns.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_changedns.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_changedns.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]469, [System.Int32]143))
    $btn_changedns.Name = [System.String]'btn_changedns'
    $btn_changedns.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_changedns.TabIndex = [System.Int32]18
    $btn_changedns.Text = [System.String]'Change'
    $btn_changedns.UseCompatibleTextRendering = $true
    $btn_changedns.UseVisualStyleBackColor = $false
    $btn_changedns.add_Click($btn_changedns_Click)
    #
    #tb_dns
    #
    $tb_dns.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_dns.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_dns.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]143))
    $tb_dns.Name = [System.String]'tb_dns'
    $tb_dns.ReadOnly = $true
    $tb_dns.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]190, [System.Int32]24))
    $tb_dns.TabIndex = [System.Int32]12
    #
    #btn_changegetway
    #
    $btn_changegetway.BackColor = [System.Drawing.Color]::White
    $btn_changegetway.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_changegetway.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_changegetway.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_changegetway.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]469, [System.Int32]116))
    $btn_changegetway.Name = [System.String]'btn_changegetway'
    $btn_changegetway.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_changegetway.TabIndex = [System.Int32]17
    $btn_changegetway.Text = [System.String]'Change'
    $btn_changegetway.UseCompatibleTextRendering = $true
    $btn_changegetway.UseVisualStyleBackColor = $false
    $btn_changegetway.add_Click($btn_changegetway_Click)
    #
    #tb_dns_new
    #
    $tb_dns_new.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_dns_new.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_dns_new.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287, [System.Int32]143))
    $tb_dns_new.Name = [System.String]'tb_dns_new'
    $tb_dns_new.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176, [System.Int32]24))
    $tb_dns_new.TabIndex = [System.Int32]13
    #
    #btn_changesubnet
    #
    $btn_changesubnet.BackColor = [System.Drawing.Color]::White
    $btn_changesubnet.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_changesubnet.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_changesubnet.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_changesubnet.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]469, [System.Int32]89))
    $btn_changesubnet.Name = [System.String]'btn_changesubnet'
    $btn_changesubnet.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]24))
    $btn_changesubnet.TabIndex = [System.Int32]16
    $btn_changesubnet.Text = [System.String]'Change'
    $btn_changesubnet.UseCompatibleTextRendering = $true
    $btn_changesubnet.UseVisualStyleBackColor = $false
    $btn_changesubnet.add_Click($btn_changesubnet_Click)
    #
    #tb_dnsalt
    #
    $tb_dnsalt.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_dnsalt.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_dnsalt.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]91, [System.Int32]170))
    $tb_dnsalt.Name = [System.String]'tb_dnsalt'
    $tb_dnsalt.ReadOnly = $true
    $tb_dnsalt.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]190, [System.Int32]24))
    $tb_dnsalt.TabIndex = [System.Int32]14
    #
    #tb_dnsalt_new
    #
    $tb_dnsalt_new.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
    $tb_dnsalt_new.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $tb_dnsalt_new.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287, [System.Int32]170))
    $tb_dnsalt_new.Name = [System.String]'tb_dnsalt_new'
    $tb_dnsalt_new.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]176, [System.Int32]24))
    $tb_dnsalt_new.TabIndex = [System.Int32]15
    #
    #GroupBox7
    #
    $GroupBox7.Controls.Add($cb6)
    $GroupBox7.Controls.Add($btn_add_thispc)
    $GroupBox7.Controls.Add($btn_addnetwork)
    $GroupBox7.Dock = [System.Windows.Forms.DockStyle]::Top
    $GroupBox7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $GroupBox7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3, [System.Int32]20))
    $GroupBox7.Name = [System.String]'GroupBox7'
    $GroupBox7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]574, [System.Int32]65))
    $GroupBox7.TabIndex = [System.Int32]6
    $GroupBox7.TabStop = $false
    $GroupBox7.Text = [System.String]'Desktop Icons'
    $GroupBox7.UseCompatibleTextRendering = $true
    #
    #cb6
    #
    $cb6.AutoSize = $true
    $cb6.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $cb6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]554, [System.Int32]25))
    $cb6.Name = [System.String]'cb6'
    $cb6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]12, [System.Int32]11))
    $cb6.TabIndex = [System.Int32]6
    $cb6.UseCompatibleTextRendering = $true
    $cb6.UseVisualStyleBackColor = $true
    #
    #btn_add_thispc
    #
    $btn_add_thispc.BackColor = [System.Drawing.Color]::White
    $btn_add_thispc.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_add_thispc.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_add_thispc.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_add_thispc.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]8, [System.Int32]25))
    $btn_add_thispc.Name = [System.String]'btn_add_thispc'
    $btn_add_thispc.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]157, [System.Int32]24))
    $btn_add_thispc.TabIndex = [System.Int32]4
    $btn_add_thispc.Text = [System.String]'Add "This PC" to Desktop'
    $btn_add_thispc.UseCompatibleTextRendering = $true
    $btn_add_thispc.UseVisualStyleBackColor = $false
    $btn_add_thispc.add_Click($btn_add_thispc_Click)
    #
    #btn_addnetwork
    #
    $btn_addnetwork.BackColor = [System.Drawing.Color]::White
    $btn_addnetwork.FlatAppearance.BorderColor = [System.Drawing.SystemColors]::ActiveBorder
    $btn_addnetwork.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
    $btn_addnetwork.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Ebrima', [System.Single]9, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_addnetwork.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]171, [System.Int32]25))
    $btn_addnetwork.Name = [System.String]'btn_addnetwork'
    $btn_addnetwork.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]161, [System.Int32]24))
    $btn_addnetwork.TabIndex = [System.Int32]5
    $btn_addnetwork.Text = [System.String]'Add "Network" to Desktop'
    $btn_addnetwork.UseCompatibleTextRendering = $true
    $btn_addnetwork.UseVisualStyleBackColor = $false
    $btn_addnetwork.add_Click($btn_addnetwork_Click)
    #
    #Button1
    #
    $Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]0))
    $Button1.Name = [System.String]'Button1'
    $Button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]23))
    $Button1.TabIndex = [System.Int32]0
    $Button1.UseCompatibleTextRendering = $true
    #
    #Label1
    #
    $Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]0))
    $Label1.Name = [System.String]'Label1'
    $Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100, [System.Int32]23))
    $Label1.TabIndex = [System.Int32]0
    $Label1.UseCompatibleTextRendering = $true
    #
    #Button2
    #
    $Button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]0))
    $Button2.Name = [System.String]'Button2'
    $Button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75, [System.Int32]23))
    $Button2.TabIndex = [System.Int32]0
    $Button2.UseCompatibleTextRendering = $true
    #
    #left_panel
    #
    $left_panel.BackColor = [System.Drawing.SystemColors]::Control
    $left_panel.Controls.Add($btn_clear)
    $left_panel.Controls.Add($run_script)
    $left_panel.Controls.Add($btn_uncheck_all)
    $left_panel.Controls.Add($btn_check_all)
    $left_panel.Controls.Add($GroupBox1)
    $left_panel.Controls.Add($GroupBox5)
    $left_panel.Controls.Add($GroupBox2)
    $left_panel.Controls.Add($GroupBox4)
    $left_panel.Controls.Add($GroupBox3)
    $left_panel.Dock = [System.Windows.Forms.DockStyle]::Left
    $left_panel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]0))
    $left_panel.Name = [System.String]'left_panel'
    $left_panel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]580, [System.Int32]652))
    $left_panel.TabIndex = [System.Int32]5
    #
    #right_panel
    #
    $right_panel.BackColor = [System.Drawing.SystemColors]::GrayText
    $right_panel.Controls.Add($OutputBox)
    $right_panel.Dock = [System.Windows.Forms.DockStyle]::Fill
    $right_panel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0, [System.Int32]0))
    $right_panel.Name = [System.String]'right_panel'
    $right_panel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1122, [System.Int32]652))
    $right_panel.TabIndex = [System.Int32]6
    #
    #window
    #
    $window.BackColor = [System.Drawing.SystemColors]::Control
    $window.Controls.Add($left_panel)
    $window.Controls.Add($right_panel)
    $window.Dock = [System.Windows.Forms.DockStyle]::Top
    $window.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]5, [System.Int32]5))
    $window.Name = [System.String]'window'
    $window.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1122, [System.Int32]652))
    $window.TabIndex = [System.Int32]7
    #
    #btn_check_all
    #
    $btn_check_all.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_check_all.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13, [System.Int32]616))
    $btn_check_all.Name = [System.String]'btn_check_all'
    $btn_check_all.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]110, [System.Int32]30))
    $btn_check_all.TabIndex = [System.Int32]5
    $btn_check_all.Text = [System.String]'Check All'
    $btn_check_all.UseCompatibleTextRendering = $true
    $btn_check_all.UseVisualStyleBackColor = $true
    $btn_check_all.add_Click($btn_check_all_Click)
    #
    #btn_uncheck_all
    #
    $btn_uncheck_all.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_uncheck_all.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]129, [System.Int32]616))
    $btn_uncheck_all.Name = [System.String]'btn_uncheck_all'
    $btn_uncheck_all.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]110, [System.Int32]30))
    $btn_uncheck_all.TabIndex = [System.Int32]6
    $btn_uncheck_all.Text = [System.String]'Uncheck All'
    $btn_uncheck_all.UseCompatibleTextRendering = $true
    $btn_uncheck_all.UseVisualStyleBackColor = $true
    $btn_uncheck_all.add_Click($btn_uncheck_all_Click)
    #
    #run_script
    #
    $run_script.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $run_script.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]361, [System.Int32]616))
    $run_script.Name = [System.String]'run_script'
    $run_script.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]211, [System.Int32]30))
    $run_script.TabIndex = [System.Int32]7
    $run_script.Text = [System.String]'Run Script'
    $run_script.UseCompatibleTextRendering = $true
    $run_script.UseVisualStyleBackColor = $true
    $run_script.add_Click($run_script_Click)
    #
    #OutputBox
    #
    $OutputBox.AcceptsReturn = $true
    $OutputBox.AcceptsTab = $true
    $OutputBox.BackColor = [System.Drawing.SystemColors]::ControlDarkDark
    $OutputBox.BorderStyle = [System.Windows.Forms.BorderStyle]::None
    $OutputBox.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Source Code Pro', [System.Single]12, [System.Drawing.FontStyle]::Regular, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $OutputBox.ForeColor = [System.Drawing.Color]::White
    $OutputBox.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]583, [System.Int32]3))
    $OutputBox.Multiline = $true
    $OutputBox.Name = [System.String]'OutputBox'
    $OutputBox.ReadOnly = $true
    $OutputBox.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]536, [System.Int32]643))
    $OutputBox.TabIndex = [System.Int32]0
    $OutputBox.Text = [System.String]'
                Outputs'
    #
    #btn_dhcp
    #
    $btn_dhcp.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]287, [System.Int32]23))
    $btn_dhcp.Name = [System.String]'btn_dhcp'
    $btn_dhcp.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]257, [System.Int32]23))
    $btn_dhcp.TabIndex = [System.Int32]26
    $btn_dhcp.Text = [System.String]'Change to DHCP'
    $btn_dhcp.UseCompatibleTextRendering = $true
    $btn_dhcp.UseVisualStyleBackColor = $true
    $btn_dhcp.add_Click($btn_dhcp_Click)
    #
    #btn_clear
    #
    $btn_clear.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma', [System.Single]9, [System.Drawing.FontStyle]::Bold, [System.Drawing.GraphicsUnit]::Point, ([System.Byte][System.Byte]0)))
    $btn_clear.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]245, [System.Int32]616))
    $btn_clear.Name = [System.String]'btn_clear'
    $btn_clear.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]110, [System.Int32]30))
    $btn_clear.TabIndex = [System.Int32]8
    $btn_clear.Text = [System.String]'Clear'
    $btn_clear.UseCompatibleTextRendering = $true
    $btn_clear.UseVisualStyleBackColor = $true
    $btn_clear.add_Click($btn_clear_Click)
    #
    #Form1
    #
    $Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1132, [System.Int32]665))
    $Form1.Controls.Add($window)
    $Form1.Padding = (New-Object -TypeName System.Windows.Forms.Padding -ArgumentList @([System.Int32]5))
    $Form1.ShowIcon = $false
    $Form1.SizeGripStyle = [System.Windows.Forms.SizeGripStyle]::Hide
    $Form1.Text = [System.String]'WB PostInstallation Automation Script'

    $GroupBox1.ResumeLayout($false)
    $GroupBox1.PerformLayout()
    $GroupBox2.ResumeLayout($false)
    $GroupBox2.PerformLayout()
    $GroupBox3.ResumeLayout($false)
    $GroupBox3.PerformLayout()
    $GroupBox4.ResumeLayout($false)
    $GroupBox4.PerformLayout()
    $GroupBox5.ResumeLayout($false)
    $GroupBox8.ResumeLayout($false)
    $GroupBox8.PerformLayout()
    $GroupBox6.ResumeLayout($false)
    $GroupBox6.PerformLayout()
    $GroupBox7.ResumeLayout($false)
    $GroupBox7.PerformLayout()
    $left_panel.ResumeLayout($false)
    $left_panel.PerformLayout()
    $right_panel.ResumeLayout($false)
    $right_panel.PerformLayout()
    $window.ResumeLayout($false)
    $Form1.ResumeLayout($false)
    
    Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name GroupBox1 -Value $GroupBox1 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name cb7 -Value $cb7 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_activate -Value $btn_activate -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_check_status -Value $btn_check_status -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name GroupBox2 -Value $GroupBox2 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name cb3 -Value $cb3 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_admin_password -Value $tb_admin_password -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_set_password -Value $btn_set_password -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_admin_enable -Value $btn_admin_enable -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name GroupBox3 -Value $GroupBox3 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name cb1 -Value $cb1 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_firewall_disable -Value $btn_firewall_disable -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_firewall_enable -Value $btn_firewall_enable -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name GroupBox4 -Value $GroupBox4 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name cb2 -Value $cb2 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_rdp_disable -Value $btn_rdp_disable -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_rdp_enable -Value $btn_rdp_enable -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name GroupBox5 -Value $GroupBox5 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name GroupBox6 -Value $GroupBox6 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_dhcp -Value $btn_dhcp -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name cb4 -Value $cb4 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_getway -Value $tb_getway -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name lst_adapter -Value $lst_adapter -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name lbl_ip -Value $lbl_ip -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_ip -Value $tb_ip -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name lbl_dnsalt -Value $lbl_dnsalt -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_ip_new -Value $tb_ip_new -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name lbl_dns -Value $lbl_dns -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_changeip -Value $btn_changeip -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name lbl_gateway -Value $lbl_gateway -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_subnet -Value $tb_subnet -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name lbl_subnet -Value $lbl_subnet -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_subnet_new -Value $tb_subnet_new -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_changednsalt -Value $btn_changednsalt -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_getway_new -Value $tb_getway_new -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_changedns -Value $btn_changedns -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_dns -Value $tb_dns -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_changegetway -Value $btn_changegetway -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_dns_new -Value $tb_dns_new -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_changesubnet -Value $btn_changesubnet -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_dnsalt -Value $tb_dnsalt -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_dnsalt_new -Value $tb_dnsalt_new -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name GroupBox8 -Value $GroupBox8 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name cb5 -Value $cb5 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_computer_name -Value $tb_computer_name -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name lbl_computer_name -Value $lbl_computer_name -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name tb_new_computer_name -Value $tb_new_computer_name -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_rename -Value $btn_rename -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name GroupBox7 -Value $GroupBox7 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name cb6 -Value $cb6 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_add_thispc -Value $btn_add_thispc -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_addnetwork -Value $btn_addnetwork -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Button1 -Value $Button1 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name Button2 -Value $Button2 -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name left_panel -Value $left_panel -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_clear -Value $btn_clear -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name run_script -Value $run_script -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_uncheck_all -Value $btn_uncheck_all -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name btn_check_all -Value $btn_check_all -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name right_panel -Value $right_panel -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name OutputBox -Value $OutputBox -MemberType NoteProperty
    Add-Member -InputObject $Form1 -Name window -Value $window -MemberType NoteProperty
}
. InitializeComponent
