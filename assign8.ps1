#---------------------------------------------Assignment8--------------------------------------------
#PowerShell function GetDisk(_virtualMachine) which displays disk name with its current capacity, free space and % of available free space for given virtual machine

function GetDisks
 {    
    #invoke expression  "C:\Users\Administrator\Desktop\nishanth\test"
    get-vm |select name
    $data=read-host("enter the vm")
        
    ForEach ($vm in get-vm $data)
{
   $add= ($VM.Extensiondata.Guest.Disk | Select @{N="Name";E={$VM.Name}}, @{N="Capacity(MB)";
    E={[math]::Round($_.Capacity/ 1MB)}}, @{N="Free Space(MB)";E={[math]::Round($_.FreeSpace / 1MB)}}, 
    @{N="Free Space %";E={[math]::Round(((100* ($_.FreeSpace))/ ($_.Capacity)),0)}})
    write-host($dd)
	
}  
}
GetDisks