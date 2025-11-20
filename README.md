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

```

```

>>>>>>> c7a40bb (Track all large file types using Git LFS)
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>
>>
