Import-Module RapidRecoveryPowershellModule 
Get-ProtectedServers | Foreach-Object{

  $server = $_.DisplayName
  Get-UnprotectedVolumes -protectedserver $server | Select-Object -Property DisplayName |  ForEach-Object {

    $drive = $_.DisplayName
    $UnprotectedVols = New-Object -TypeName psobject
    if ($drive -like '*:\*') {
      
      $UnprotectedVols | Add-Member -MemberType NoteProperty -Name Server -Value $server
      $UnprotectedVols | Add-Member -MemberType NoteProperty -Name Drive -Value $drive

    }
    
    $UnprotectedVols

  }
}
