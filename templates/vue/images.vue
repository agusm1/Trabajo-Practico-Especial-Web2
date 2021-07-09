{literal}
    <section id="Vue-images">
        <ul class="list-none">
            <li v-for="img in images">
                <span v-if="admin == 1"> 
                <button v-on:click="deleteImage( img.id_image )" class="btn btn-outline-light"><span aria-hidden="true">&times;</span></button>
                </span>
                <img style="width: 200px;" :src=" img.path ">
            </li>
        </ul>
    </section>
{/literal}