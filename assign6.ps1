#-------------------------------------------------Assignment6---------------------------------

#PowerShell functions which list how many cpu’s, the amount of memory, average cpu usage for x amount of days and the average memory usage.

function getcpu
{

	invoke-expression "C:\Users\Administrator\Desktop\nishanth\test"
	$a=read-host "enter days"

	Get-VM | Where {$_.PowerState -eq "Poweredon"} | Select Name, Host, NumCpu, MemoryMB,
	 `@{N="CPU Usage (Average), Mhz" ; E={[Math]::Round((($_ | Get-Stat -Stat cpu.usagemhz.average -Start (Get-Date).AddDays(-$a) -IntervalMins 5 | Measure-Object Value -Average).Average),2)}}, `
	@{N="Memory Usage (Average), %" ; E={[Math]::Round((($_ | Get-Stat -Stat mem.usage.average -Start (Get-Date).AddDays(-$a) -IntervalMins 5 | Measure-Object Value -Average).Average),2)}} 
}
getcpu