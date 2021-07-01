{literal}
    <section id="Vue-images">
        <h3> {{ subtitle }} </h3>
        <ul>
            <li v-for="img in images">
                <img style="width: 200px;" :src=" img.path ">
                <button v-on:click="deleteImage( img.id_image )" class="btn btn-primary">Eliminar</button>
            </li>
        </ul>
    </section>
{/literal}