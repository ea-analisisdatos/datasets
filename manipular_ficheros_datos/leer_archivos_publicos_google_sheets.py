import pandas as pd

def leer_hoja_calculo_publica_google_sheets(sheet_id, sheet_name):
    # ponemos la f para que al ejecutar la función Python entieda las variables.
    url = f"https://docs.google.com/spreadsheets/d/{sheet_id}/gviz/tq?tqx=out:csv&sheet={sheet_name}"
    df = pd.read_csv(url)
    print(df)

# Invocamos las función para probarla
sheet_id = "1kJ5UeYOkxVG85Jp07N2uBTwUycsmXpr2vJ7lb5n63ps"
sheet_name = "clientes"
leer_hoja_calculo_publica_google_sheets(sheet_id, sheet_name)