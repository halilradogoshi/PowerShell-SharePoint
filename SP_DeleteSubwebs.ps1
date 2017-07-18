Add-PSSnapin "Microsoft.SharePoint.PowerShell"

#PowerShell Scripts - SharePoint 

#Script: Iterate site webs
#Script description: Iterate through the a site and show all webs on the site 

#Author: Halil Radogoshi www.halilradogoshi.com


$mainSite = Get-SPSite <SiteURL>

function IterateSite($sites){    

    foreach($web in $sites.AllWebs)
    {
       Write-Host "Web: " $web.Url
    }
 }


  $ScriptStart = (Get-Date)
  Write-Host "Script started at: " $ScriptStart

      IterateSite $mainSite  

  $ScriptEnd = (Get-Date)
  Write-Host "Script ended at: " $ScriptEnd 
  $ScriptDuration = New-Timespan -Start $ScriptStart -End $ScriptEnd 
  "Duration: {0}:{1}:{2}" -f $ScriptDuration.Hours,$ScriptDuration.Minutes,$ScriptDuration.Seconds 

