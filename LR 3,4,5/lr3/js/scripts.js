$(document).ready(function () {
    content();

    $("#load").click(content);

    function content() {
        var count = document.getElementById('games').getElementsByClassName('game').length;
        $.ajax({
            url: "php/store.php",
            type: "POST",
            data: ({ kol: 5, tek: count }),
            dataType: "html",
            success: loaded
        });
    }

    function loaded(data) {
        if (data != false) {
            data = JSON.parse(data);
            for (let i in data) {
                let games =
                    `<a class="game" href="game.php?id=${data[i].id}">
                <div class="game__img">
                    <img src="${data[i].photo}"
                        alt="photo">
                </div>

                <div class="game__info">
                    <div class="game__info-name">${data[i].name}</div>
                    <div class="game__info-platform"></div>
                    <div class="game__info-cats">${data[i].cats}</div>
                </div>

                <div class="game__price">
                    <span class="price">${data[i].price}</span> руб.
                </div>
            </a>`;
                document.getElementById("games").insertAdjacentHTML('beforeend', games);
            }
        }
    }
});