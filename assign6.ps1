function getcpu{

$a=read-host "enter days"

Get-VM | Where {$_.PowerState -eq "Poweredon"} | Select Name, Host, NumCpu, MemoryMB,
 `
@{N="CPU Usage (Average), Mhz" ; E={[Math]::Round((($_ | Get-Stat -Stat cpu.usagemhz.average -Start (Get-Date).AddDays(-$a) -IntervalMins 5 | Measure-Object Value -Average).Average),2)}}, `
@{N="Memory Usage (Average), %" ; E={[Math]::Round((($_ | Get-Stat -Stat mem.usage.average -Start (Get-Date).AddDays(-$a) -IntervalMins 5 | Measure-Object Value -Average).Average),2)}} 
}
getcpu