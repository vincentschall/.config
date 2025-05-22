$Host.UI.RawUI.WindowTitle = "VINCENT"
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\gruvbox.omp.json" | Invoke-Expression
function cd... 		{ cd ..\.. }
function cd.... 	{ cd ..\..\.. }
function n 		{ notepad $args }
function dirs 
{
	if ($args.Count -gt 0)
	{
		Get-Children -Recurse -Include "$args" | Foreach-Object FullName
	}
	else
	{
		Get-Children -Recurse | Foreach-Object FullName
	}
}
function admin
{
	if ($args.Count -gt 0)
	{
		$arglist = "& '" + $args + "'"
		Start-Process "$psHome\powershell.exe" -Verb runAs -ArgumentList $arglist
	}
	else 
	{
		Start-Process "$psHome\powershell.exe" -Verb runAs
	}
}
Set-Alias -Name su -Value admin
Set-Alias -Name sudo -Value admin
function uni { cd $HOME\Documents\Uni }
function gcom 
{
	git add .
	git commit -m "$args"
}
function lazyg
{
	git add .
	git commit -m "$args"
	git push
}
function Get-PubIP 
{
	(Invoke-WebRequest http://ifconfig.me/ip ).Content
}
function find-file($name)
{
	ls -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | foreach {
		$place_path = $_.directory
		echo "${place_path}\${_}"
	}
}
function unzip($file)
{
	echo("Extracting", $file, "to", $pwd)
	$fullFile = Get-ChildItem -Path $pwd -Filter .\cove.zip | ForEachObject{$_.FullName}
	Expand-Archive -Path $fullFile -DestinationPath $pwd
}
function grep($regex, $dir)
{
	if ( $dir) 
	{
		ls $dir | select-string $regex
		return
	}
	$input | select-string $regex
}
function touch($file) 
{
	"" | Out-File $file -Encoding ASCII
}
function pkill($name)
{
	ps $name -ErrorAction SilentlyContinue | kill
}
function pgrep($name)
{
	ps $name
}
