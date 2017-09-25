<? 
if ($Param) exit('error url'); 
if ($module) {
    $module += 0;
    //Главный запрос БД
    $query = mysql_query("SELECT * FROM `users` WHERE `id` = '$module'");
    $info = mysql_fetch_assoc($query);

    top('Профайл '.$info['name'].'');
    MessageShow();
    //если пользователь найден:
    if( mysql_num_rows($query) ) {
        //если это вошедший
        if ($_SESSION['id'] == $info['id']) {
             echo '<h1>Ваша страничка</h1>';
        }
        echo '
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-push-6">
                ';
    u_init($info['name'], $info['sur_name']);
    u_email($info['email']);
    u_country($info['country']);
    u_year_birth($info['year_birth']);
    group($info['group_u']);
        echo '</div>';

        echo '<div class="col-md-6 col-md-pull-6">';
    u_avatar($info['avatar']);
    //если это вошедший
    if ($_SESSION['id'] == $info['id']) {
             echo '<br><br><a href="/profile">Изменить профиль</a><br><br>';
             echo '<h2>Добавить пост:</h2><br>';
        echo '</div>';
    ?>
        <form onsubmit="return false" >
        <p><textarea onkeyup="schet('5', '1000')" placeholder="Текст сообщения" id="subject"></textarea></p>
        <p id="WordCounter"></p>
        <p><button onclick="post_query('addublog', 'ublog', 'subject')">Добавить</button> </p>
        </form> 
        
        <?
        }
        echo '</div>
    </div>';
    if ($_SESSION['id'] != $info['id']) {
        $row_m = mysql_query("SELECT * FROM `dialog` WHERE `recive` = $module AND `send` = $_SESSION[id] or `recive` = $_SESSION[id] AND `send` = $module") ;

        if (empty($row_m) or !mysql_num_rows($row_m)) {
            ?> <form onsubmit="return false" >
            <p><input type="text"  value="<?=$info['email']?>" id="email" hidden></p>
            <p><input type="text" value="--Начат диалог--" id="subject" hidden></p>
            <p><button onclick="post_query('fsendmessage', 'firstmess', 'email.subject')">Начать Диалог</button> </p>
            </form> 
            <?
        }
        else {
        $row_m =mysql_fetch_assoc($row_m);
        if ($row_m['recive'] == $_SESSION['id']) $row_m['recive'] = $row_m['send'];
        //$User = mysql_fetch_assoc(mysql_query("SELECT `email` FROM `users` WHERE `id` = $row[recive]"));
        echo '<a href="/im/'.$row_m['id'].'"><button class="submit">Продолжить диалог</button></a>'; 
    }
        
        
    }
        echo '<h1>Личный Блог</h1>';
        //запрос к БД посты пользователей
    $query_blog = mysql_query('SELECT `id`, `text`, `uid`, `date` FROM `u_blog` WHERE `uid` = '.$info['id'].' ORDER BY `id` DESC ');

    if ( !mysql_num_rows($query_blog) ) echo '<div class="reviews">Нет ни одной записи</div>';
        //вывод в цикле
        while ( $row = mysql_fetch_assoc($query_blog) ) {
        //$user = mysql_fetch_assoc( mysql_query("SELECT `email` FROM `users` WHERE `id` = $row[uid]") );
        echo '<div class="reviews">'; 
        //если это вошедший
        if ($_SESSION['id'] == $info['id']) {
            echo '<a class="delblog" href="/control/delete/type/blog/user/'.$row[uid].'/id/'.$row[id].'">x</a>';
            }
        echo '<span>Дата: '.$row['date'].'</span>'.nl2br( htmlspecialchars($row['text']), false).'</div>';
        }
        //если пользователь не найден:
    } else if( !mysql_num_rows($query) ) {
        echo('<h1>Пользователь не найден!</h1>');
    }
    //если нет module в url
} else {
    top('Профайл '.$_SESSION['name'].'');
 echo('<h1>Пользователь не найден!</h1>');
}
    //всегда выводим
//sendmessage('mandarin.tolik.99@gmail.ru', 'Test');
echo '<div class="users"><h1>Список всех пользователей</h1>';
$allUsers = mysql_query('SELECT * FROM `users` ORDER BY `id` DESC');
while ( $users = mysql_fetch_assoc($allUsers) ) {
    echo '<div class="user"><span>Пользователь: <a href="/user/'.$users['id'].'">'.hideEmail($users['email']).'</a></span></div>';
}
echo '</div>';

//ФУНКЦИИ

function u_email( $email ) {
if (!empty($email)) {
    echo '
    <br> <b>Email: '.hideEmail( $email ).'</b>
    ';
    }
}

function u_country( $country ) {
    if (!empty($country)) {
    echo '
    <br> <b>Страна: '.$country.'</b>
    ';
    } else {
        echo '
    <br><b>Страна: Пользователь не задал свою страну </b>
    ';
    }
}
function u_year_birth( $year_birth ) {
    if (!empty($year_birth)) {
    echo '
    <br> <b>Год рожденья: '.$year_birth.' год</b>
    ';
    } else {
        echo '
    <br><b>Год рожденья: Пользователь не задал год рожденья </b>
    ';
    }
}
function group( $group_u ) {
    if ($group_u == 0) {
    echo '<br> <b>Привилегии: Обычные</b>';
    } else if ($group_u == 1) {
        echo '<br> <b>Привилегии: Расширенные</b>';
    } else if ($group_u == 2) {
        echo '<br> <b>Привилегии: Администратор</b>';
    } else {
        '<br> <b>Привилегии: ???</b>';
    }
}
function u_avatar( $avatar ) {
    if (!empty($avatar)) {
    echo '<div class="u_avatar"><img src="/assets/img/avatars'.$avatar.'.jpg" alt="avatar"></div>';
    } else {
        echo '<div class="u_avatar"><img src="/assets/img/avatars/avatar.jpeg" alt="avatar"></div>';
    }
}
function u_init($name, $sur_name) {
    if (!empty($name or $sur_name)) {
    echo '
    <br><b>Пользователь: '.$name.' '.$sur_name.'</b>
    ';
    } else {
        echo '
    <br><b>Пользователь: Пользователь не задал имя или фамилию </b>
    ';
    }
} 

bottom();
?>
