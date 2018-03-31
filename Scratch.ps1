<#
Description of the problem we're solving
https://github.com/CoreSecurity/impacket/issues/224
https://msdn.microsoft.com/en-us/library/windows/desktop/dd578505(v=vs.85).aspx

#>

#Test box
$IP = '134.213.176.16'
if (-not $Cred) {$Cred = Get-Credential 'CORP\Freddie'}



.\PsExec.exe \\$IP -u $Cred.GetNetworkCredential().UserName -p $Cred.GetNetworkCredential().Password cmd -c 'dir C:\'



