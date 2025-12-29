cls
$script:howmany  = 0
$listecommunitys = @()
$loop            = Read-Host -Prompt "Enter the number of pages to scan"
 

if ( $loop -notmatch "^\d+$" ) {
 
       Write-Host "Invalid input. Please enter a numeric value: $loop"
       exit
    
    } else { 
      
           $loop = [int]$loop
           Write-Host "You entered a valid number: $loop"


         
}


function getcommunities([string]$URL){
[array]$formatcontent = (Invoke-WebRequest -Uri $URL -UseBasicParsing).Content -split "`r?`n"

     $formatcontent   = $($formatcontent | sls -Pattern '<a id="/r') 
     $sites           = $formatcontent.Count
     $pattern         = '/r/'
     $script:howmany += $sites.count

   for( $i = 0; $i -lt $formatcontent.Length; $i++ ){

        $line = $formatcontent[$i].Line
     $(($line -split $pattern)[1] -split '"')[0]
    }
}



foreach( $id in $(1..$loop)){
         
         $request          = "https://www.reddit.com/best/communities/$id"
         $listecommunitys += getcommunities $request

         Start-Sleep -Milliseconds 500
}


$listecommunitys = $listecommunitys | Sort-Object -Unique
$listecommunitys

Write-Host -ForegroundColor Magenta "`n$("*" *35)" 
Write-Host -ForegroundColor Magenta "`nSites of Communitys :" -NoNewline
Write-Host -ForegroundColor Cyan " [!] " -NoNewline
Write-Host -ForegroundColor Green $howmany 
Write-Host -ForegroundColor Magenta "Communitys found    :" -NoNewline
Write-Host -ForegroundColor Cyan " [!] " -NoNewline
Write-Host -ForegroundColor Green $listecommunitys.count
Write-Host -ForegroundColor Magenta "`n$("*" *35)" 
 
