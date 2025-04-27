# --- SCRIPT: track_large_files.ps1 ---

# Umbral de tamaño (100MB = 100 * 1024 * 1024 bytes)
$threshold = 100MB

# Buscar todos los archivos bajo el directorio actual
$largeFiles = Get-ChildItem -Recurse -File | Where-Object { $_.Length -gt $threshold }

if ($largeFiles.Count -eq 0) {
    Write-Host "No hay archivos mayores de 100MB para trackear con Git LFS." -ForegroundColor Yellow
    exit
}

# Mostrar los archivos encontrados
Write-Host "Se encontraron los siguientes archivos mayores de 100MB:" -ForegroundColor Cyan
$largeFiles | ForEach-Object { Write-Host ("{0:N2} MB`t{1}" -f ($_.Length/1MB), $_.FullName) }

# Preguntar al usuario si quiere trackearlos
$confirmation = Read-Host "¿Deseas trackear estos archivos con Git LFS? (Y/N)"

if ($confirmation -match '^[Yy]$') {
    foreach ($file in $largeFiles) {
        $relativePath = Resolve-Path -Relative $file.FullName
        git lfs track "$relativePath"
        Write-Host "Trackeado: $relativePath" -ForegroundColor Green
    }

    Write-Host "Listo. Ahora recuerda hacer 'git add .gitattributes' y luego tu commit." -ForegroundColor Cyan
} else {
    Write-Host "Operación cancelada." -ForegroundColor Red
}

'''Instrucciones para usar el script:
1. Abre PowerShell y navega hasta la carpeta donde tienes el script.
2. Asegúrate de tener Git LFS instalado y configurado en tu repositorio.
3. En PowerShell, navega hasta la carpeta y ejecuta para trackear los archivos mayores de 100mb automaticamente: .\track_large_files.ps1
4. Si no tienes Git LFS instalado, puedes instalarlo siguiendo las instrucciones en https://git-lfs.github.com/.
5. Si no tienes Git LFS configurado, puedes configurarlo con el siguiente comando: git lfs install

Después de trackear, no olvides hacer:
git add .gitattributes
git add <archivo_grande>
git commit -m "Tracking archivos grandes con Git LFS"
git push

El archivo .gitattributes se generará automáticamente y contendrá las reglas de seguimiento para los archivos grandes.

'''
