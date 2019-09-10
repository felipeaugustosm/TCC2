import os
import glob
import csv
import pandas as pd
import numpy as np

resultados = []

# Percorre todos os arquivos das métricas dos navegadores e armazena em resultados
for pastas in glob.glob('C:/Users/felip/Documents/TCC2/Metricas/*'):
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

# Armazena os valores coletados em um DataFrame e preenche os valores em branco com zero
frame = pd.DataFrame(pd.concat(resultados, ignore_index=False, sort=False))
frame.fillna(0, inplace=True)

# Substitui as virgulas por pontos nas colunas que contem resultados com formatação errada
cols = ["LOC (Média por pacote)",	"L(Groovy)",	"L(HTML)",	"L(J)",	"L(KT)",	"L(XML)",	"LOC",	"AHF (%)",	"AIF (%)",	"CF (%)",	"MHF (%)",	"MIF (%)",	"PF (%)",	"CBO - Média",	"DIT – Média",	"LCOM – Média",	"NOC – Média",	"RFC – Média",	"WMC – Média"]
for col in cols:  # Iterate over chosen columns
    frame[col] = (frame[col].replace(',','.', regex=True))
    frame[col] = frame[col].astype(float)
    frame = frame.round({col:2})



#Armazena os resultados em um arquivo csv
os.chdir("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV")

resultadosFrame = pd.DataFrame(frame.groupby('Navegadores', as_index=False, sort=False)['LOC (Média por pacote)', 'L(Groovy)', 'L(HTML)', 'L(J)', 'L(KT)', 'L(XML)', 'LOC', 'AHF (%)', 'AIF (%)', 'CF (%)', 'MHF (%)', 'MIF (%)', 'PF (%)', 'CBO - Média', 'DIT – Média', 'LCOM – Média', 'NOC – Média', 'RFC – Média', 'WMC – Média'].sum())

resultadosFrameBrowser = resultadosFrame.copy()

resultadosFrame['Classes'] = pd.Series(['Segurança', 'Tradicional', 'Privacidade', 'Privacidade', 'Tradicional', 'Segurança', 'Tradicional', 'Privacidade', 'Tradicional', 'Segurança', 'Tradicional', 'Tradicional', 'Privacidade', 'Tradicional', 'Privacidade', 'Segurança', 'Tradicional', 'Privacidade', 'Segurança', 'Privacidade', 'Segurança', 'Privacidade', 'Tradicional', 'Segurança', 'Privacidade', 'Privacidade', 'Tradicional', 'Segurança', 'Segurança', 'Segurança', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos'])

resultadosFrameBrowser['Classes'] = pd.Series(['Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos', 'Todos'])

resultadosFrame = resultadosFrame.append(resultadosFrameBrowser, ignore_index=True) 

resultadosFrame.to_csv('Resultados_Original.csv', index=True)
