function datastore{

#Get-Datastore |select Name 

#$dataStore=read-host("Enter the Datastore name ")


#if(Get-Datastore |where {$_.Name -match $dataStore})
#{

#write-host(Get-Vm | Get-HardDisk |select Filename,CapacityGB)
#}

#}

#datastore#


get-datastore |select name

$datastore = read-host("enter the datastore name")

write-host (get-datastore |where {$_.name -match $datastore} | get-vm |get-harddisk |select filename, capacityGB)
}
datastore