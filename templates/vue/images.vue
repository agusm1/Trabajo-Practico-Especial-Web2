{literal}
    <section id="Vue-images">
        <ul class="list-none">
            <li v-for="img in images">
                <img style="width: 200px;" :src=" img.path ">
                <span v-if="admin == 1"> 
                <button v-on:click="deleteImage( img.id_image )" class="btn btn-primary">Eliminar</button>
                </span>
            </li>
        </ul>
    </section>
{/literal}