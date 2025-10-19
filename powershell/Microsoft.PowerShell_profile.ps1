oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\gruvbox.omp.json" | Invoke-Expression
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
function usb { cd 'D:' }
function movd { Move-Item ~/Downloads/* . }
