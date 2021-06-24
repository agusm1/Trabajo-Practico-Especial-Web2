
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
            loadComment: function (comment) {
                this.comments.push(comment);
            },
        },
    });
    app.getComments();
    form = document.getElementById('newCommentary');
    form.addEventListener('submit', addComment);

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
});

function addComment() {
    console.log('Llega a addComment');
    let urlParts = window.location.href.split('/');
    let id_game = urlParts[urlParts.length - 1];
    let commentary = document.getElementById('commentary').value;
    let vote = document.getElementById('vote').value;
    let username = document.getElementById('username').value;
    let comment = {
        "commentary": commentary,
        "vote": vote,
        "username": username,
        "id_game": id_game,        
    }
    fetch("api/new/" + id_game, {
        method: "POST",
        headers: {"Content-Type": "application/json"},
        body: JSON.stringify(comment) 
    }).then(response =>console.log(response))    
}
