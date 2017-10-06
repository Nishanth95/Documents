Add-PSSnapin vmware.vimautomation.core  
function disk
{

get-Vm |select Name

$disknames = read-host "enter disk name"

ForEach($diskname in Get-vm $disknames )
{
$info=($diskname.Extensiondata.Guest.Disk | Select @{N="Name";E={$VM.Name}},

@{N="Capacity(MB)";E={[math]::Round($_.Capacity/ 1MB)}}, 

@{N="Free Space(MB)";E={[math]::Round($_.FreeSpace / 1MB)}},

@{N="Free Space %";E={[math]::Round(((100* ($_.FreeSpace))/ ($_.Capacity)),0)}})

Write-host($info)

}
}
disk