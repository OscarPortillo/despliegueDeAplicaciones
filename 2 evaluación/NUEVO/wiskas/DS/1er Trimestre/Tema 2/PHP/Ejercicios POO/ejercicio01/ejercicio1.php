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
        require_once 'Persona.php';
        require_once 'Perro.php';

        $unaPersona = new Persona("juan", "21");
        $unPerro = new Perro("rocky", "negro");

        echo $unaPersona->darCariciaPerro($unPerro);
        echo $unaPersona->darDeComerPerro($unPerro);
        ?>
    </body>
</html>