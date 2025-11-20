# datasets

Bases de datos disponibles para realización de tests, estudiar análisis de datos, desarrollar visualizaciones, etc
<<<<<<< HEAD
Datasets obtenidos de fuentes abiertas para estudio y/o trabajos de análisis de datos e Inteligencia Artificial.
=================================================================================================================

¿Cómo subir a github archivos con tamaño mayor que 100mb?

```powershell
git lfs install
git lfs track "*.csv"
git add .
git commit -m "Large dataset with LFS"
git push 
```

```
### Para subir otros tipos de archivos
```

```powershell
git lfs track "*.csv"
git lfs track "*.xlsx"
git lfs track "*.xls"
git lfs track "*.json"
git lfs track "*.xml"
git lfs track "*.parquet"
git lfs track "*.geojson"
git lfs track "*.kml"
git lfs track "*.kmz"
git lfs track "*.shp"
git lfs track "*.dbf"
git lfs track "*.h5"
git lfs track "*.hdf5"
git lfs track "*.pkl"
git lfs track "*.pickle"
git lfs track "*.zip"
git lfs track "*.gz"
git lfs track "*.tar"
git lfs track "*.psd"

```

Después ejecuta:

```powershell
git add .gitattributes
git add .
git commit -m "Track all large file types using Git LFS"
git push

```


Si quieres lo más simple posible:

```powershell
git lfs track "*.*"
```


⚠️ **Advertencia:**

Esto hará que absolutamente TODOS tus archivos sean tratados por LFS, incluso los pequeños, lo cual **no es una buena práctica** en repositorios profesionales.

Si es un repositorio solo de datasets →  **sí puedes usarlo** .

Si el repo contiene código →  **NO se recomienda** .



# 🧠 REVISIÓN RÁPIDA DE QUÉ TIPOS DE ARCHIVOS AHORA QUEDAN “PERMITIDOS” PARA GitHub

Después de aplicar los comandos, **Git LFS permitirá subir archivos mayores de 100 MB** de los siguientes tipos:

* CSV
* XLSX / XLS
* JSON / XML
* Parquet
* GeoJSON
* KML / KMZ
* Shapefiles (.shp + .dbf + .shx + etc.)
* H5 / HDF5
* Pickle / PKL
* ZIP / GZ / TAR
* Cualquier archivo binario de dataset

```

```

<<<<<<< HEAD
>>>>>>> c7a40bb (Track all large file types using Git LFS)
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
=======

# 💡 IMPORTANTE

GitHub **NO** permite subir archivos >100MB  **sin LFS** .

Con LFS activado → permitido hasta **GBs** con total seguridad.


# ✅ **SCRIPT PARA WINDOWS – PowerShell (`setup-lfs.ps1`)**

Crea un archivo llamado **setup-lfs.ps1** y pega esto dentro:

```powershell
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

```

Para ejecutarlo:

```powershell
.\setup-lfs.ps1

```

```

```

# ✅ **SCRIPT PARA LINUX / MAC – Bash (`setup-lfs.sh`)**

Crea un archivo llamado  **setup-lfs.sh** :

```powershell




#!/bin/bash

echo "=== Configurando Git LFS para archivos grandes ==="

# 1. Instalar Git LFS
git lfs install
echo "Git LFS instalado."

# 2. Lista de patrones
patterns=(
  "*.csv" "*.xlsx" "*.xls"
  "*.json" "*.xml"
  "*.parquet" "*.feather"
  "*.geojson" "*.kml" "*.kmz"
  "*.shp" "*.dbf"
  "*.zip" "*.gz" "*.tar"
  "*.h5" "*.hdf5"
  "*.pkl" "*.pickle"
)

for p in "${patterns[@]}"; do
  git lfs track "$p"
  echo "Trackeando con LFS: $p"
done

# 3. Añadir gitattributes y archivos
git add .gitattributes
git add .

echo "=== Git LFS configurado ==="
echo "Corre: git commit -m 'Add large datasets with LFS'"
echo "y después: git push"

```


Para ejecutarlo:

```
chmod +x setup-lfs.sh
./setup-lfs.sh

```
>>>>>>> 328084e (Save local changes before rebase)
