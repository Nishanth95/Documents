function hal{

#Invoke-Expression C:\Users\Administrator\Desktop\nishanth\knr1


Get-VM|Select Name,NumCPU,
  
   @{N="HAL";E={(GET-WMIOBJECT -COMPUTERNAME $_ -QUERY “SELECT * FROM Win32_PnPEntity" |Select name).name}},

   @{N="operatingsystem";E={(GET-WMIOBJECT -COMPUTERNAME $_ -Class Win32_OperatingSystem|Select caption).caption}},

   @{N="servicepack";E={(GET-WMIOBJECT -COMPUTERNAME $_ -Class Win32_OperatingSystem|Select csdversion).csdversion}}

}

hal
