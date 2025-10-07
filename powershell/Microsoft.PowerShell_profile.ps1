oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\gruvbox.omp.json" | Invoke-Expression
function cd... 		{ cd ..\.. }
function cd.... 	{ cd ..\..\.. }
function inv      { Invoke-Item $args }
function uni { cd $HOME\Documents\Uni\2025_HS }
function find-file($name)
{
	ls -recurse -filter "*${name}*" -ErrorAction SilentlyContinue | foreach {
		$place_path = $_.directory
		echo "${place_path}\${_}"
	}
}
function t
{
	git add . && git commit -m "task" && git push
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
function usb { cd 'D:' }
