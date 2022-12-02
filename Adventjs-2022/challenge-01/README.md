#  ¡Automatización del envoltorio de regalos de Navidad!

##  🔢 Instrucciones

Este año los duendes han comprado una máquina para envolver regalos. Pero... ¡no está programado! **Necesitamos crear un algoritmo que lo ayude en la tarea** .

La máquina recibe una matriz con los regalos. Cada regalo es una `cadena` . Necesitamos la máquina para envolver cada regalo en papel de regalo y colocarlo en una serie de regalos envueltos.

El papel de regalo es el símbolo `*` y para envolver un regalo se coloca el símbolo `*` de forma que rodee completamente la cuerda por todos los lados. Por ejemplo:

```javascript
const  regalos  = [ ' libro ' , ' juego ' , ' calcetines ' ];
const  envuelto  =  envoltura (regalos);
consola _ registro (envuelto);
/* [
  "******\n*libro*\n******",
  "******\n*juego*\n******",
  "*******\n*calcetines*\n*******"
] */
```

Como puede ver, el papel de regalo envuelve la cuerda. En la parte superior e inferior, para no dejar huecos, las esquinas también se cubren con papel de regalo.

**Nota** : `\n` es el carácter que representa un salto de línea.

**¡Cuidado!** Asegúrate de poner el número correcto de \* para envolver completamente la cadena.

**¡Buena suerte!**
