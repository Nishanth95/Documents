function temp
{

Get-VMHost|select Name,

	@{n="ResourcePool"; e={$_ | Get-ResourcePool}},
	@{N=“NumVM“;E={($_ |Get-VM).Count}},
	@{N=“Cluster“;E={Get-Cluster -VMHost $_}},
	@{N=“NumTemplates“;E={($_ |Get-Template).Count}} |Sort Cluster,Name  

}
temp