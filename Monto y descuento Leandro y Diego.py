monto = 0
descuento = 10
si = 1
no = 2

while monto != 1:

 monto = int(input("ingrese su monto: "))

 if monto <= 0:
    print(input("por favor. Ingrese otro monto: "))
 elif monto >= 0:
    print("quieres ingresar el 10%? ")
    opcion = 0
    while opcion != 5:
     n1 = int(input())
     print(str("divide por el 10%"))
     montodescuento = monto / descuento
     n2 = int(input())
     print("no se aplica el 10%")


