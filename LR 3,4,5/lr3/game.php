<?php
require_once('php/connect.php');
$game = mysqli_query($conn, "SELECT * FROM `store` WHERE `game_id` = " . $_GET['id'] . "");
$game = mysqli_fetch_assoc($game);
?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $game[1]; ?></title>
    <link rel="stylesheet" href="../gen_style.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
    <header class="header">
        <div class="container">

            <div class="logo">
                <a href="/lr3/"> <img src="../logo.svg" alt="logo" class="logo-img"></a>
            </div>
            </a>
            <ul class="links">
                <a href="../">
                    <li>Главная</li>
                </a>
                <a href="../lr3/">
                    <li>Лабораторная №3</li>
                </a>
                <a href="../lr4/">
                    <li>Лабораторная №4</li>
                </a>
                <a href="../lr5">
                    <li>Лабораторная №5</li>
                </a>
            </ul>
        </div>
    </header>

    <main class="main">
        <div class="container">
            <div class="title mb15">Игра</div>
            <div class="game">
                <div class="game__img">
                    <img src="<?php echo $game['game_photo']; ?>" alt="photo">
                </div>

                <div class="game__info">
                    <div class="game__info-name"><?php echo $game['game_name']; ?></div>
                    <div class="game__info-platform"></div>
                    <div class="game__info-cats"><?php echo $game['game_cats']; ?></div>
                </div>

                <div class="game__price">
                    <span class="price"><?php echo $game['game_price']; ?></span> руб.
                </div>
            </div>

            <div class="title m15">Оставьте свой отзыв:</div>

            <form class="rev-form">
                <div class="form-item">
                    <label>Введите свой никнейм</label>
                    <input type="text" name="name" id="name" placeholder="BossOfTheGym">
                </div>

                <div class="form-item">
                    <label>Напишите отзыв здесь</label>
                    <textarea name="text" id="text" placeholder="Игра хорошая, но ..."></textarea>
                </div>

                <div class="form-item">
                    <button class="sendBtn" id="send">Отправить</button>
                </div>
            </form>

            <div class="title m15">Недавние отзывы</div>

            <div class="revs">
                <?php
                $comments = mysqli_query($conn, "SELECT * FROM `com` WHERE `game_id` = " . $_GET['id'] . "");
                $comments = mysqli_fetch_all($comments);
                foreach ($comments as $comment) :
                ?>
                    <div class="rev">
                        <div class="rev-name"><?php echo $comment[1] ?></div>
                        <div class="rev-text">
                            <div class="rev-date"><?php echo $comment[2] ?></div>
                            <div class="text"><?php echo $comment[3] ?></div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
    </main>

    <footer class="footer">
        <div class="container">
            <div class="imgs">
                <img src="../valve.png" alt="">
                <img src="../steam.png" alt="">
            </div>
            <div class="footer-text">
                © 2022 Valve Corporation. Все права защищены. Все торговые марки являются собственностью соответствующих
                владельцев в США и других странах.<br>
                НДС включён во все цены, где он применим. Политика конфиденциальности | Правовая информация | Соглашение
                подписчика Steam | Возвраты | Файлы cookie
            </div>
        </div>
    </footer>
    <script src="../jquery-3.6.0.min.js"></script>
    <script src="js/compage.js"></script>

</body>

</html>