import os
import glob
import csv
import pandas as pd
import numpy as np

resultados = []

for pastas in glob.glob('C:/Users/felip/Documents/TCC2/Metricas/*'):      #isso iria listar diretorios
    pasta = ''
    pasta = '' + pastas

    barra= "\\"
    ppath = ''
    ppath = pasta.replace(barra,'/')

    extension = 'csv'
    os.chdir(ppath)
    all_filenames = [i for i in glob.glob('*.{}'.format(extension))]

    for filename in all_filenames:
        df = pd.read_csv(filename, index_col=None, header=0, parse_dates=True, infer_datetime_format=True)
        resultados.append(df)

os.chdir("C:/Users/felip/Documents/TCC2/Scripts/Python")

frame = pd.DataFrame(pd.concat(resultados, axis=0, ignore_index=True, sort=False))
#frame = pd.DataFrame(pd.groupby(["Navegadores"], as_index=False, sort=False).agg(' '.join))
resultadosFrame = pd.DataFrame(frame.groupby(["Navegadores"], as_index=False, sort=False)["LOC (Média por pacote)",	"L(Groovy)",	"L(HTML)",	"L(J)",	"L(KT)",	"L(XML)",	"LOC",	"AHF (%)",	"AIF (%)",	"CF (%)",	"MHF (%)",	"MIF (%)",	"PF (%)",	"CBO - Média",	"DIT – Média",	"LCOM – Média",	"NOC – Média",	"RFC – Média",	"WMC – Média",	"CBO",	"DIT",	"LCOM",	"NOC", "RFC", "WMC"].max())
#resultadosFrame = frame.groupby('Navegadores', as_index=False, sort=False)
resultadosFrame.to_csv('Resultados_Original.csv', index=True)



