{literal}
    <section id="Vue-images">
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <div v-for="img in images" class="col">
          <div class="card h-100">
            <img :src="img.path" class="card-img-top" alt="...">
              <span v-if="admin == 1"> 
                <button v-on:click="deleteImage( img.id_image )" class="btn btn_close"><span aria-hidden="true">&times;</span></button>
              </span>
          </div>
        </div>
      </div>
    </section>
{/literal}
