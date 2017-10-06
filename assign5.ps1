#--------------------------------------------Assignment5---------------------------------
#PowerShell function ListVMFromLocalStore() which list all VM’s located on local storage along with their file name and available disk space.

function datastore
{
	invoke expression  "C:\Users\Administrator\Desktop\nishanth\test"
	get-datastore |select name
	$datastore = read-host("enter the datastore name")
	$info= (get-datastore |where {$_.name -match $datastore} | get-vm |get-harddisk |select filename, capacityGB)
	write-host($info)
}
datastore