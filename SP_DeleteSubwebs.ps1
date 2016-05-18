#SharePoint PowerShell Script - Remove Subswebs
#Halil Radogoshi www.halilradogoshi.com


$url = <SiteUrl>
$subsites = ((Get-SPWeb $url).Site).allwebs | ?{$_.url -like $url +"/*"}
foreach($subsite in $subsites) { Remove-SPWeb $subsite.url }
