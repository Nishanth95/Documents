function any
{
get-datastore |select Name

#$datastore = read-host "select any of the data store"

foreach($datastore in get-datastore)
{

$num = (Get-Datastore $dataStore | Select @{N=”$datastore”;E={@($_ | Get-VM ).Count}})

write-host ($num)

 
}
}
any
#Get-Datastore | Select Name, @{N="NumVM";E={@($_ | Get-VM).Count}} | Sort Name|Export-Csv C:\knr.ps1  
