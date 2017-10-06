#--------------------------------------------Assignment9------------------------------------------
#------PowerShell function which list the number of vCPU’s assigned to a VM and the type of HAL installed in the O/S------

function ListVMInfo 
{
Invoke-Expression  "C:\Users\Administrator\Desktop\nishanth\assign2"

Get-VM|select name

$vms=read-host("Enter VM Name")

$info=(Get-VM |Where {$_.Name -eq $vms} |Sort Name |Select Name, NumCPU,

 @{N=“OSHAL“;E={(Get-WmiObject -Class Win32_PnPEntity |Where { $_.ClassGuid -eq `{4D36E966-E325-11CE-BFC1-08002BE10318}`} |Select Name).Name}}
 @{N=“OperatingSystem“;E={(Get-WmiObject -ComputerName $_ -Class Win32_OperatingSystem |Select Caption).Caption}})


write-host($info)
}
ListVMInfo


