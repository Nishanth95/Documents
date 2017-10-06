#---------------------------------------Assignment2..........................................................
#power shell program for connecting ESXI Host

function Get-Connection{

$hostname = read-host "enter hostname" 
$user = read-host "enter user"
$password =read-host "enter password"
if($hostname -eq "10.207.214.202")

{

Connect-VIserver $hostname -user $user -password $password

write-host "Connection successfully established with EXSI host"

}

else

{

write-error "verify ur username and password"

}
}
Get-Connection




