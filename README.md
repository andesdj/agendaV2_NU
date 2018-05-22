# AgendaNextu
Registre su actividad
1. Versión Node

para crear la base de datos entra a c:/archivos de programa/mongo y ejecuta mongo.exe:

despues inserta el siguiente comando:

use agenda_db

siguiente a eso inserta este comando:

db.usuarios.insertMany([{ email: 'demo@mail.com', user: "demo", password: "demo"}, { email: 'andres@gmail.com', user: "demo", password: "demo"}])

luego ejecuta nodejs en la carpeta server en el archivo index.js ejecuta por consola:

node index.js

por ultimo te saldra un mensaje diciendo server is listening on port 3000 y conectado a mongodb, luego de esto pon la siguiente direccion en el navegador.


localhost:3000/index.html

Gracias.
