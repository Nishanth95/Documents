function display{

#invoke-expression C:\Users\Administrator\Desktop\nishanth\assign2

write-host "powered on vms"

 	Get-VM | Where{$_.PowerState -eq "PoweredOn"}
	
	Get-VM | Where-Object {$_.PowerState -eq "PoweredOn"} | Measure-Object

	write-host " "

 	(Get-VM | Where{$_.PowerState -eq "PoweredOn"}).count

Write-host "powered off vms"


 	Get-VM | Where{$_.PowerState -eq "PoweredOff"} 

	
	Get-VM | Where-Object {$_.PowerState -eq "PoweredOff"} | Measure-Object
	
	write-host " "


 	(Get-VM | Where{$_.PowerState -eq "PoweredOff"}).count



}
display