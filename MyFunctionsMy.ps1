function GetUserData {
    $MyUserListFile = "C:\temp\LabFiles\MyLabFile.csv"
    $MyUserList = Get-Content -Path $MyUserListFile | ConvertFrom-Csv
    $MyUserList
}

function Get-CourseUser {
  param(
    $UserName,
    $OlderThan
    )
  $UserName
  
  $UserList = GetUserData
  Write-Host "User list from \"
  #$UserList
  $UserList = $UserList | Where-Object -Property Name -Like "*$UserName*"
  $UserList
}