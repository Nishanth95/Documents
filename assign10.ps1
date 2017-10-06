#--------------------------------------Assignment10----------------
# PowerShell function which lists the number of VMs on each Datastore and export to CSV file
function NOOFVMS
{

Invoke-expression  "C:\Users\Administrator\Desktop\nishanth\test"

$testArray = [System.Collections.ArrayList]@()

$tempArray = Get-Datastore

foreach($item in $tempArray)
{
	$arrayID = $testArray.Add($item)

	write-host($arrayID,$item)
}

   
$dataStore=read-host("Enter the Datastore name ")



Get-Datastore $dataStore | Select @{N=”TotalVMs”;E={@($_ | Get-VM ).Count}} | Sort Name|Export-Csv C:\knr1.ps1

}

NOOFVMS


 