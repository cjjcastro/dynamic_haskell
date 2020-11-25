# Solução de forma iterativa

def fibs(n):
    ultimo=0
    penultimo=1

    if (n==0): 
        return 0
    elif (n==1):
        return 1
    else:
        count=1
        while count <= n:
            termo = ultimo + penultimo
            penultimo = ultimo
            ultimo = termo
            count += 1
        return termo

if __name__ == '__main__':
    n = int(input('Fibs: '))
    print(fibs(n))