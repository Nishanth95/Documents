#-------------------------------------Assignment3--------------------------------------------
#----Program To List All VM along with Number vCPU/HAL/OS Version/Service Pack----

function ListAllVM()
{
#invoke expression C:\Users\Administrator\Desktop\nishanth\test

	Get-VM |Where {$_.PowerState -eq “PoweredOn”} |Sort Name |Select Name, NumCPU,

#get-vm helps to Retrieves the virtual machines on a vSphere server. Returns a set of virtual machines that correspond to the filter criteria provided by the cmdlet parameters

	@{N=”OS-HAL”;E={(Get-WmiObject -Class Win32_PnPEntity |Where { $_.ClassGuid -eq ‘{4D36E966-E325-11CE-BFC1-08002BE10318}’ } |Select Name).Name}},

#Get-Wmiobject helps to Get instances of WMI classes or information about the available classes.

	@{N=”OperatingSystem”;E={(Get-WmiObject -Class Win32_OperatingSystem |Select Caption).Caption}}, 
	@{N=”ServicePack”;E={(Get-WmiObject -ComputerName $_ -Class Win32_OperatingSystem |Select CSDVersion).CSDVersion}} 

}
 ListAllVM