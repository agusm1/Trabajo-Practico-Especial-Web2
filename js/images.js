let admin = document.getElementById('admin').value;
let img = new Vue({
    el: "#Vue-images",
    data: {
        admin: admin,
        images: []
    },
    methods: {
        getImages: function() {
            getImages();
        },
        deleteImage: function(id_image) {
            deleteImage(id_image);
        }
    },
});
img.getImages();

function getImages() {
    let urlParts = window.location.href.split('/');
    let id_game = urlParts[urlParts.length - 1];

    fetch("api/images/" + id_game)
        .then(response => { return response.json() })
        .then(images => {
            img.images = images;
        })
        .catch(error => { console.log(error) });
};

function deleteImage(id_image) {

    fetch('api/image/' + id_image, {
            method: 'DELETE',
            headers: { 'Content-Type': 'application/json' },
        }).then(response => { return response.json() })
        .then(images => {
            img.getImages();
        })
        .catch(error => { console.log(error) })
}