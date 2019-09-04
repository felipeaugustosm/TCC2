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

frame = pd.concat(resultados, axis=0, ignore_index=True, sort=False)
frame.to_csv('melted_csv.csv', index=False)