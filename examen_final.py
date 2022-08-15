def punto_tres(lista):
    for i in range(len(lista)):
        if lista[i]== "12/12/2012":
            lista[i]="13/12/2012"
        if lista[i]==123:
            lista[i]=28957346
    return lista

mi_lista=[13,  "Puppy",  "12/12/2012" , "Macho", 123]
print("Lista Actual: " ,mi_lista)
print("Lista Modificada: ",punto_tres(mi_lista))
