import glob
import csv

countLinhas = 0

for pastas in glob.glob('C:/Users/felip/Documents/TCC2/Metricas/*'):      #isso iria listar diretorios
    pasta = ''
    pasta = '' + pastas
    s = '/*.csv'
    pasta+=s
    
    barra= "\\"
    ppath = ''
    ppath = pasta.replace(barra,'/')
    #print(ppath)

    for arquivos in glob.glob(ppath):
        arquivo = open(arquivos)

        linhas = csv.reader(arquivo)

        for linha in linhas:
            if linha.__contains__('Navegadores') and countLinhas>0:
                countLinhas += 1
            elif linha.__contains__('Navegadores'):
                countLinhas += 1
                print(linha)
                with open('C:/Users/felip/Documents/TCC2/Resultados-v1.csv', 'a') as writeFile:
                    writer = csv.writer(writeFile, lineterminator='\n')
                    writer.writerows(linha)
                    writeFile.close()
            else:
                with open('C:/Users/felip/Documents/TCC2/Resultados-v1.csv', 'a') as writeFile:
                    writer = csv.writer(writeFile, lineterminator='\n')
                    writer.writerows(linha)
                    writeFile.close()