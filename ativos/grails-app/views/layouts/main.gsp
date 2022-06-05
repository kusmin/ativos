<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>
<header class="header bg-light mb-4">
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light navbar-static-top  bg-light" role="navigation">
            <g:link class="navbar-brand media mt-3" controller="ativo" action="index"><asset:image class="img-fluid" src="itexto-1.png" alt="itexto Logo" width= "100" height="50"/></g:link>
            <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon "></span>
            </button>

            <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.8px;" id="navbarContent">
                <ul class="nav navbar-nav ml-auto ">
                    </li><g:link controller="categoria" action="index">Categorias</g:link></li>
                    </li><g:link controller="alocacao" action="index">Alocações</g:link></li>
                    </li><g:link controller="membroEquipe" action="index">Membros da equipe</g:link></li>
                </ul>
            </div>

        </nav>
    </div>
</header>
<g:layoutBody/>
<div class=" bg-light">
    <div class="footer bg-light text-center mt-3 " style="position:  ;bottom:0; width: 100%;" role="contentinfo">
        <span class="text-dark"> Desenvolvido por <g:link style=" text-decoration:none;" uri="www.itexto.com.br" base="http://"><span style="color:red;">i</span><span class="text-dark">texto</span></g:link></span>
    </div>
</div>



<asset:javascript src="application.js"/>

</body>
</html>
