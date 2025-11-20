Write-Host "=== Configurando Git LFS para datasets grandes ===" -ForegroundColor Cyan

# 1. Instalar Git LFS
git lfs install
Write-Host "Git LFS instalado correctamente."

# 2. Track para tipos de archivos grandes
$patterns = @(
    "*.csv", "*.xlsx", "*.xls",
    "*.json", "*.xml",
    "*.parquet", "*.feather",
    "*.geojson", "*.kml", "*.kmz",
    "*.shp", "*.dbf", "*.zip",
    "*.gz", "*.tar", "*.h5", "*.hdf5",
    "*.pkl", "*.pickle"
)

foreach ($p in $patterns) {
    git lfs track $p
    Write-Host "Trackeando con LFS: $p"
}

# 3. Agregar .gitattributes
git add .gitattributes

# 4. Agregar todos los archivos detectados por LFS
git add .

Write-Host "=== Git LFS configurado correctamente para todos los tipos de archivo ===" -ForegroundColor Green
Write-Host "Ahora ejecuta: git commit -m 'Add large datasets with Git LFS'"
Write-Host "Luego: git push"
