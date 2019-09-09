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

frame = pd.DataFrame(pd.concat(resultados, ignore_index=False, sort=False))
frame.fillna(0, inplace=True)
frame['LOC (Média por pacote)'] = (frame['LOC (Média por pacote)'].replace(',','.', regex=True))
frame['AHF (%)'] = (frame['AHF (%)'].replace(',','.', regex=True))
frame['AIF (%)'] = (frame['AIF (%)'].replace(',','.', regex=True))
frame['CF (%)'] = (frame['CF (%)'].replace(',','.', regex=True))
frame['MHF (%)'] = (frame['MHF (%)'].replace(',','.', regex=True))
frame['MIF (%)'] = (frame['MIF (%)'].replace(',','.', regex=True))
frame['PF (%)'] = (frame['PF (%)'].replace(',','.', regex=True))
frame['CBO - Média'] = (frame['CBO - Média'].replace(',','.', regex=True))
frame['DIT – Média'] = (frame['DIT – Média'].replace(',','.', regex=True))
frame['LCOM – Média'] = (frame['LCOM – Média'].replace(',','.', regex=True))
frame['NOC – Média'] = (frame['NOC – Média'].replace(',','.', regex=True))
frame['RFC – Média'] = (frame['RFC – Média'].replace(',','.', regex=True))
frame['WMC – Média'] = (frame['WMC – Média'].replace(',','.', regex=True))
frame['LOC'] = (frame['LOC'].replace(',','.', regex=True))

frame['LOC (Média por pacote)'] = frame['LOC (Média por pacote)'].astype(float)
frame = frame.round({'LOC (Média por pacote)':2})
frame['AIF (%)'] = frame['AIF (%)'].astype(float)
frame = frame.round({'AIF (%))':2})
frame['CF (%)'] = frame['CF (%)'].astype(float)
frame = frame.round({'CF (%)':2})
frame['MHF (%)'] = frame['MHF (%)'].astype(float)
frame = frame.round({'MHF (%)':2})
frame['MIF (%)'] = frame['MIF (%)'].astype(float)
frame = frame.round({'MIF (%)':2})
frame['PF (%)'] = frame['PF (%)'].astype(float)
frame = frame.round({'PF (%)':2})
frame['CBO - Média'] = frame['CBO - Média'].astype(float)
frame = frame.round({'CBO - Média':2})
frame['DIT – Média'] = frame['DIT – Média'].astype(float)
frame = frame.round({'DIT – Média':2})
frame['LCOM – Média'] = frame['LCOM – Média'].astype(float)
frame = frame.round({'LCOM – Média':2})
frame['NOC – Média'] = frame['NOC – Média'].astype(float)
frame = frame.round({'NOC – Média':2})
frame['RFC – Média'] = frame['RFC – Média'].astype(float)
frame = frame.round({'RFC – Média':2})
frame['WMC – Média'] = frame['WMC – Média'].astype(float)
frame = frame.round({'WMC – Média':2})
frame['LOC'] = frame['LOC'].astype(float)
frame = frame.round({'LOC':2})
cols = ["LOC (Média por pacote)",	"L(Groovy)",	"L(HTML)",	"L(J)",	"L(KT)",	"L(XML)",	"LOC",	"AHF (%)",	"AIF (%)",	"CF (%)",	"MHF (%)",	"MIF (%)",	"PF (%)",	"CBO - Média",	"DIT – Média",	"LCOM – Média",	"NOC – Média",	"RFC – Média",	"WMC – Média",	"CBO",	"DIT",	"LCOM",	"NOC", "RFC", "WMC"]
for col in cols:  # Iterate over chosen columns
        if not col:
                frame[col] = frame[col].astype(float)

os.chdir("C:/Users/felip/Documents/TCC2/Resultados/Metricas_CSV")

resultadosFrame = pd.DataFrame(frame.groupby('Navegadores', as_index=False, sort=False)['LOC (Média por pacote)', 'L(Groovy)', 'L(HTML)', 'L(J)', 'L(KT)', 'L(XML)', 'LOC', 'AHF (%)', 'AIF (%)', 'CF (%)', 'MHF (%)', 'MIF (%)', 'PF (%)', 'CBO - Média', 'DIT – Média', 'LCOM – Média', 'NOC – Média', 'RFC – Média', 'WMC – Média', 'CBO', 'DIT', 'LCOM', 'NOC', 'RFC', 'WMC'].sum())

resultadosFrame['Classes'] = pd.Series(['Segurança', 'Tradicional', 'Privacidade', 'Privacidade', 'Tradicional', 'Segurança', 'Tradicional', 'Privacidade', 'Tradicional', 'Segurança', 'Tradicional', 'Tradicional', 'Privacidade', 'Tradicional', 'Privacidade', 'Segurança', 'Tradicional', 'Privacidade', 'Segurança', 'Privacidade', 'Segurança', 'Privacidade', 'Tradicional', 'Segurança', 'Privacidade', 'Privacidade', 'Tradicional', 'Segurança', 'Segurança', 'Segurança'])

resultadosFrame.to_csv('Resultados_Original.csv', index=True)
#frame.to_csv('Resultados_Original.csv', index=True)

