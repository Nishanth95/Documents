#-------------------------------------------Assignment13----------------------------------
#PowerShell function which add additional 100GB virtual disk to Windows machine

function ExtendDisk
{
Invoke-expression "C:\Users\Administrator\Desktop\nishanth\test.ps1"

get-vm |select name
$vm = read-Host "Enter name of VM"
$size = read-Host "Enter size to be extended of VM"
Get-vm $vm | where {$_.Name -eq "Hard Disk 1"} | Set-HardDisk -CapacityGB $size -Confirm:$false
Get-HardDisk $vm 
}
CheckConnection