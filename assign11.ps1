function cpu{
#invoke-expression C:\Users\Administrator\Desktop\nishanth\assign2
Foreach ($Cluster in Get-Cluster)
{
write-host ($cluster.name)

	Foreach ($ESXHost in ($Cluster |Get-VMHost))
		{
		Write-Host “ Host: ($ESXHost.name)“
			Foreach ($VM in ($ESXHost |Get-VM))
				{
				$HostvCPUs += $VM.NumCpu
				}
		write-Host “ Number of vCPU on host: $HostvCPUs“

		$TotalvCPUs += $HostvCPUs
		$Hostvcpus=0
		}
Write-Host “Number of vCPU in $Cluster.name: $TotalvCPUs“

$TotalNumvCPUs = 0

}
}
cpu

