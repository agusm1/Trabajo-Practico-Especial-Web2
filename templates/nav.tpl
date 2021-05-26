<nav class="navbar navbar-expand-lg navbar-dark blackbar">
    <div class="container-fluid">
        <!--<img src="{$base_url}/img/icono_home.png">-->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav flex-row w-100">
                <li class="nav-item">
                    <a class="nav-link active icon" href="home"><img src="{$base_url}/img/icono_home.png"></a>
                </li>
            </ul>
            {if $username != ''}
                <div class="navbar-nav ml-auto">
                    <span class="navbar-text nav-link active">{$username|capitalize}</span>
                    <a class="nav-item nav-link " href="logout">Logout<span class="sr-only"></span></a>
                </div>
            {else}
                <div class="navbar-nav ml-auto">
                    <a class="nav-item nav-link " href="login">Login<span class="sr-only"></span></a>
                </div>
                <div class="navbar-nav ml-auto">
                    <a class="nav-item nav-link " href="formRegistro">Registrar<span class="sr-only"></span></a>
                </div>
            {/if}
        </div>
    </div>
</nav>