oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\gruvbox.omp.json" | Invoke-Expression
function uni { cd $HOME\Documents\Uni\2025_HS }
function t
{
git add . && git commit -m "task" && git push
}
function movd { Move-Item ~/Downloads/* . }
function :g {
	$url = git remote get-url origin 2>$null
	if ($url) { Start-Process $url } else  { Write-Host "no remote found" }
}
