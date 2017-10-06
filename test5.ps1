function datastore{

#invoke-expression C:\Users\Administrator\Desktop\nishanth\assign2

get-datastore |select name

$datastore=read-host "enter data store name"

#$path=read-host "enter file path"


if($_.Name -match "datastore"s)

{


write-host (Get-VM |Get-HardDisk |select Filename)#|export csv $path)

}

else
 {
write-error "not loaded"
}

#Get-Datastore |where {$_.Name -match “store|local|storage“} |Get-VM |Get-HardDisk |select Filename |#Export-Csv c:\LocalVMs.csv
}

datastore

