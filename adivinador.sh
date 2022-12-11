#!/bin/bash
aleatorio=$(( $RANDOM % 50 + 1 ))

for i in {1..11}
do
    echo -e "Intento numero: $i"
    echo -n "Ingrese un numero: "
    read num
    if [ $num = $aleatorio ]; then
        break;
    elif [ $num -lt $aleatorio ]; then
        echo -e "El Numero Ingresado Es Menor\n";
    else
        echo -e "El Numero Ingresado Es Mayor\n";
    fi
done

if [ $i -ge 6 -a $i -le 10 ]; then
    echo "Podria haber estado mejor... :P ";
elif [ $i -gt 10 ]; then
    echo "La verdad...huelo a holandes por aca..."
else
    echo "Muy bien! Usted ha adivinado el numero (Raro)";
fi
exit;