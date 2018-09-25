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

        class Perro {

            private $color;
            private $nombre;
            private $estomagoLleno = false;

            function __construct($nombre, $color) {
                $this->color = $color;
                $this->nombre = $nombre;
                $this->estomagoLleno = false;
            }

            public function recibirCariciaCabeza() {
                return $this->moverLaCola();
            }

            public function moverLaCola() {
                return "Estoy moviendo la cola." . "<br>";
            }

            public function comer() {
                $this->estomagoLleno = true;
                return $this->hacerDigestion();
            }

            private function hacerDigestion() {
                return "Estoy haciendo la digestión." . "<br>" . "He terminado de hacer la digestión." . "<br>" . $this->hacerNecesidades() . "<br>";
            }

            public function hacerNecesidades() {
                return "Hago caca." . '<br>';
            }

        }
        ?>
    </body>
</html>