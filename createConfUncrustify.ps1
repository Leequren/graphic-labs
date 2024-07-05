# путь до папки, где находится анкрастифай
$uncrustifyPath = ".\libs\uncrustify-0.79.0_f-win64\bin\uncrustify.exe"

& $uncrustifyPath --show-config > .\uncrustify.cfg

Write-Host "Я создался. Твой код в опасности!"