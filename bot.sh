echo "Hola! Buenos Dias $USER"
while [ $option != 0 ];
echo -e "\n+----------MENU-----------+"
echo "1 Obtener Hora"
echo "2 Obtener Clima"
echo "0 Salir del programa"
echo "+-------------------------+"
echo -e -n "\nPorfavor Ingrese una opción ->"
read option;
echo -e "\n"
do
    if [ -z $option ]; then
        echo "Usted No Ingresó Nada"
    else
        case $option in 
            1)
                echo -n "Obteniendo Hora.";
                sleep 0.8;
                echo -n ".";
                sleep 0.8;
                echo -e ".\n";
                echo "$(date "+%r")";
                ;;
            2) 
                echo -n "Obteniendo Clima.";
                sleep 0.8;
                echo -n ".";
                sleep 0.8;
                echo -e ".\n";
                curl 'wttr.in?0';
                ;;
            0) 
                echo "Mandando el Bot a la cama";
                echo -n "z"
                sleep 0.8;
                echo -n "z"
                sleep 0.8;
                echo -n "z"
                sleep 0.8;
                exit;
                ;;
            *)
            echo "Opción desconocida" -n;
                ;;
        esac
    fi
    sleep 2;
done
