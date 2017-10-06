function ListVMInfo 
{
Invoke-Expression "C:\Users\Administrator\Desktop\nishanth\assign2"

Get-VM|select name

$vms=read-host("Enter VM Name")

$info=Get-VM |Where {$_.Name -eq $vms} |Sort Name |Select Name, NumCPU,

 @{N=“OSHAL“;E={(Get-WmiObject -ComputerName $_.Name-Query “SELECT * FROM Win32_PnPEntity where ClassGuid = ‘{4D36E966-E325-11CE-BFC1-08002BE10318}’“ |Select Name).Name}},

 @{N=“OperatingSystem“;E={(Get-WmiObject -ComputerName $_ -Class Win32_OperatingSystem |Select Caption).Caption}}


write-host($info)
}
ListVMInfo

