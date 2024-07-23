# Map
array1 = range(0, 15)

def calc_cubo(num):
    return num ** 3

# map é o mesmo que um loop for
lista_map = map(calc_cubo, array1)
print(*lista_map)

# Filter

def verifica_par(num):
    return num % 2 == 0

print(verifica_par(190))

# filtra pela função, retornando so os resultados de TRUE
print(*filter(verifica_par, array1))


# Reduce
from functools import reduce

# aplica uma função ate que reste um unico elemento
soma = reduce((lambda x, y : x + y), [1,2,3,4])
print(soma)
