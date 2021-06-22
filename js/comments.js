
window.addEventListener('load', function () {
    //debugger
    let app = new Vue({
        el: "#Vue-comments",
        data: {
            subtitle: "Esto es un subtitulo random",//esto funciona
            comments: []
        },
        methods:
        {
            getComments: function () {
                getComments();
            },
            loadComment: function (comment){
                this.comments.push(comment);
            },
        },
    });
    app.getComments();

    function getComments() {
        let urlParts = window.location.href.split('/');
        let id_game = urlParts[urlParts.length - 1];
        fetch("api/game/" + id_game)
            .then(response => { return response.json() })
            .then(comments => {
                //console.log(comments[0]);
                comments.forEach(comment => {
                    app.loadComment(comment)
                });
            })
            .catch(error => console.log(error));
    }
})