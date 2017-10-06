function getConn([string]$ip = $args[0], [string]$user = $args[1], [string]$pass = $args[2])
{
if(Connect-VIserver -Server $ip -User $user -Password $pass)
{
Write-Host("Connected")
}
else
{
Write-Host("Not Connected")
}
}  
getConn

