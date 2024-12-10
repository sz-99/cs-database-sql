# Edit your server name, e.g. "DESKTOP-5\SQLEXPRESS" 
$ServerName = "TABLET-E0QFQU4M\SQLEXPRESS"
$UserName = "sa"
$Password = "pineapplesql"

$files = Get-ChildItem -Path "./db" -Filter *.sql

foreach($file in $files){
	$outputFile = [System.IO.Path]::ChangeExtension($file.FullName, ".txt")
	
	sqlcmd -S $ServerName -U $UserName -P $Password -i $file.FullName > $outputFile
}