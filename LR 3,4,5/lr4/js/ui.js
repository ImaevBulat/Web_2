$(document).ready(function () {
    $(function () {
        $("#date").datepicker({
            dateFormat: "dd.mm.yy",
            monthNames: ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
        });

        $("#slider-range-max").slider({
            range: "max",
            min: 1,
            max: 15,
            value: 1,
            slide: function (event, ui) {
                $("#staj").val(ui.value);
            }
        });

        $("#city").selectmenu();

        const addresses = [
            "ул. Центральная",
            "ул. Ленина",
            "пр. Октября",
            "пр. Салавата Юлаева",
            "ул. Пушкина",
            "ул. Мингажева",
            "ул. Революции"
        ];
        $("#address").autocomplete({
            source: addresses
        });

        $("#accordion").accordion({ collapsible: true });

        $(document).tooltip({
            position: {
                my: "center bottom-20",
                at: "center top",
                using: function (position, feedback) {
                    $(this).css(position);
                    $("<div>")
                        .addClass("arrow")
                        .addClass(feedback.vertical)
                        .addClass(feedback.horizontal)
                        .appendTo(this);
                }
            }
        });

        $("#sendRes").on("click", function () {
            $("#confirme").dialog('open');
        });


        $('.item').on("click", function () {
            let name = $(this).attr('data-name');
            $("#vac").text(name);
            $("#resume").dialog("open");
        });

        $('#close').on("click", function () { $("#resume").dialog("close") });

        $('#resume').dialog({
            autoOpen: false,
            width: 340,
            resizable: false,
            draggable: true
        });
        $('#confirme').dialog({
            autoOpen: false,
            modal: true,
            resizable: false,
            position: { at: "center top" },
            buttons: {
                "Отправить": function () {
                    $(this).dialog("close");
                    $("#resume").dialog("close");
                    $("#alert").dialog("open");
                },
                "Отменить": function () {
                    $(this).dialog("close");
                }
            }
        });
        $('#alert').dialog({
            autoOpen: false,
            modal: true,
            position: { at: "center top" },
            resizable: false,
            buttons: {
                "Понятно": function () {
                    $(this).dialog("close");
                }
            }
        });
    });
});