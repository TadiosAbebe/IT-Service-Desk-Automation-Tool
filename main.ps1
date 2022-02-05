Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'ui.ps1')
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form1.ShowDialog()