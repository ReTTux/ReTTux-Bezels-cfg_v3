#!/bin/bash
#
# reemplazo de texto en ficheros creado por Carli
#
#

nf=0
buscar='1280_1024.cfg'
texto='video_shader = "/opt/retropie/emulators/retroarch/shader/crt-pi.glslp"'
for fichero in *.cfg; do  # busca ficheros con extension png en el directoria actual
 nf=$((nf +1))
 printf "$fichero \n"

    sed -i '/input_overlay = /i video_shader = "/opt/retropie/emulators/retroarch/shader/crt-pi-vertical.glslp"' "$fichero"

        
done
echo
echo $nf "ficheros cambiados"
exit 0
