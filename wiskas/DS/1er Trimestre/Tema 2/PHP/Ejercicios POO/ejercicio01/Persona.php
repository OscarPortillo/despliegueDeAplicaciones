<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php

        class Persona {

            private $nombre;
            private $edad;

            function __construct($nombre, $edad) {
                $this->nombre = $nombre;
                $this->edad = $edad;
            }

            function darCariciaPerro($perro) {
                return $perro->recibirCariciaCabeza();
            }

            function darDeComerPerro($perro) {
                return $perro->comer();
            }

        }
        ?>
    </body>
</html>