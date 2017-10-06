#------------------------------------Assignment12-----------------------
#PowerShell function which list number of VM’s per resource pool and list Host, Cluster, Number of VMs and number of templates
function temp
{

Get-VMHost|select Name,

	@{n="ResourcePool"; e={$_ | Get-ResourcePool}},
	@{N=“NumVM“;E={($_ |Get-VM).Count}},
	@{N=“Cluster“;E={Get-Cluster -VMHost $_}},
	@{N=“NumTemplates“;E={($_ |Get-Template).Count}} |Sort Cluster,Name  

}
temp