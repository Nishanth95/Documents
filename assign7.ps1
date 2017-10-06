function countVM() {

$hostAddr=read-host "Enter the Host address "

foreach($hostAddr in "10.207.214.153")
{

	

	
		

		Get-vmhost |select Name

		write-host " "

		Write-Host "Total no. of VM's on Host  is"


		(Get-VMHost |where{$_.Name -eq $hostAddr} |Get-VM).Count
	
		Get-VMHost |where{$_.Name -eq $hostAddr} |Get-VM

}

	

}
countVM

