#------------------------------------------------Assignment4................................................
#.....Program to display and count the no of Poweredon and poweredoff  VMS in ESXI host............
function display{

invoke-expression "C:\Users\Administrator\Desktop\nishanth\test"

write-host "powered on vms"

 	Get-VM | Where{$_.PowerState -eq "PoweredOn"}
	
	Get-VM | Where-Object {$_.PowerState -eq "PoweredOn"} | Measure-Object
	# Measure-Object-  Calculates the numeric properties of objects, and the characters, words, 
	and lines in string objects, such as files of text.

	write-host " "

 	(Get-VM | Where{$_.PowerState -eq "PoweredOn"}).count

Write-host "powered off vms"


 	Get-VM | Where{$_.PowerState -eq "PoweredOff"} 

	
	Get-VM | Where-Object {$_.PowerState -eq "PoweredOff"} | Measure-Object
	
	write-host " "


 	(Get-VM | Where{$_.PowerState -eq "PoweredOff"}).count



}
display