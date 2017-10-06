function ListVMFromLocalStore([string]$ip = $args[0], [string]$user = $args[1], [string]$pass = $args[2]) {
Write-Host $ip $user $pass
if(Connect-VIserver -Server $ip -User $user -Password $pass) 
{ 
Get-Datastore |select Name
$dataStore=read-host("Enter the Datastore name ")
$path=read-host("Enter the path where you want to store details ")
Get-Datastore |where {$_.Name -match $dataStore} |Get-VM |Get-HardDisk |select Filename,CapacityGB |Export-Csv $path 
#Get-Datastore |where {$_.Name -match $dataStore} |Get-VM |Get-HardDisk |select Filename,CapacityGB
#Get-Datastore |  Get-VM.Count| Sort Name

}
else 
{ 
Write-Host("Not Connected") 
} 
}
ListVMFromLocalStore 