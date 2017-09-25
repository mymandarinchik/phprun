<? //MessageSend(3, 'Bbbbb', '/login', 1); //оповещения

top('Главная');

MessageShow();
        $URL_Path_post = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
        $URL_Parts_post = explode('/', trim($URL_Path_post, ' /'));
        array_shift($URL_Parts_post);
        $type_post = array_shift($URL_Parts_post);
        $page_post = array_shift($URL_Parts_post);

$query = mysql_query("SELECT * FROM `categories`");
echo "категории:";
while ($Row = mysql_fetch_assoc($query)) {

printf('<a href="/news/'.$Row['category'].'"><h2>'.$Row['name'].'</h2></a>');

        }
//echo $module; echo var_dump($Param);
//if (preg_match('/^[A-z]{2,15}$/', $module) AND ctype_digit($Param['id']) && ($Param['id'] > 0)) {
if ($type_post == 'id' AND ctype_digit($page_post) && ($page_post > 0)) {
    $query = mysql_query("SELECT * FROM `posts` WHERE `id` = $page_post");

    if (!mysql_num_rows($query)) echo "<h1>Статья не найдена</h1>";
    else { //вывод 1 статьи

            $user_view = mysql_query("SELECT * FROM `views` WHERE  `pid` = $page_post AND `uid` = $_SESSION[id]") or die(mysql_error());
            if (!mysql_num_rows($user_view)) {//если не смотрели
                $date = date("d.m.y");
                mysql_query('INSERT INTO `views` VALUES ("", "'.$_SESSION['id'].'", "'.$page_post.'", "'.$date.'")');
            }
            
        function UserLike($id) {
            if ($_SESSION['id']) {
            $user_like = mysql_query("SELECT * FROM `likes` WHERE  `post` = $id AND `uid` = $_SESSION[id]");
            if (mysql_num_rows($user_like)) echo '<i class="fa fa-heart" aria-hidden="true"></i>';
            else printf('<i class="fa fa-heart-o" aria-hidden="true"></i>');
            } else echo 'Войти';
        }


        $post_views = mysql_fetch_row(mysql_query("SELECT COUNT(`id`) FROM `views` WHERE  `pid` = $page_post"));
        $query_like = mysql_fetch_row(mysql_query("SELECT COUNT(`id`) FROM `likes` WHERE `post` = $page_post"));
        $row = mysql_fetch_assoc($query);
        printf('<h2>'.$row['title'].'</h2><p>'.$row['text'].'<p>');
    
    ?>
    <p>Количество лайков: <span class="LikeBlock2"><?=$query_like[0]?></span></p>
    <p>Количество просмотров: <?= $post_views[0]?></p>
    <form onsubmit="return false" >
    <input type="text" value="<?=$page_post?>" id="id" hidden>
    <button onclick="post_query('articles', 'like', 'id')"><?=UserLike($page_post)?></button>
    </form>
    <h2>Оставить комментарий:</h2>
<form onsubmit="return false" >
<input type="text" value="<?=$page_post?>" id="id" hidden>
<p><textarea onkeyup="schet('10', '200')" class="cl" placeholder="Текст сообщения" id="subject"></textarea></p>
<p id="WordCounter"></p>
<p><button onclick="post_query('articles', 'comment', 'id.subject')">Отправить</button></p>
</form>
<p>Комментарии:</p>
<?
$query = mysql_query('SELECT `text`, `uid`, `id` FROM `comments` WHERE `pid` = '.$page_post.' ORDER BY `id` DESC');
if ( !mysql_num_rows($query) ) echo 'Список комментариев пуст';
while ( $row = mysql_fetch_assoc($query) ) {
    $user = mysql_fetch_assoc( mysql_query("SELECT `email` FROM `users` WHERE `id` = $row[uid]") );
    $u_email = hideEmail( $user['email'] );
    
    printf('<div class="reviews">
        '.(($_SESSION['id'] == $row['uid']) ? '<a class="delblog" href="/control/delete/type/comment/post/'.$page_post.'/id/'.$row[id].'">x</a>' : '').'
        <span>Отправитель: '.$u_email.'</span>'.nl2br( htmlspecialchars($row['text']), false).'</div>
        '); 
        }
    }
} else { 
    if (empty($Param['page'])) $Param['page'] = 0;
    if (ctype_digit($Param['page']) OR ($Param['page'] == '0')) {
   //if ($Param['page'] == 0) $Param['page'] = 1;
    //if (ctype_digit($Param['page']) && ($Param['page'] >= 0)) {
    if (!$module OR $module == 'all') {
        $querypost = mysql_query('SELECT * FROM `posts` ');
        $total = intval(((mysql_num_rows($querypost) - 1) / 5) + 1); 
        if ($total >= $Param['page']) {
    if ($_SESSION['group_u']!=2){ $Active = 'WHERE `active` = 1'; $Active_s = '`active` = 1';}
$Param1 = 'SELECT * FROM `posts` '.$Active.' ORDER BY `id` DESC LIMIT 0, 5';
$Param2 = 'SELECT * FROM `posts` '.$Active.' ORDER BY `id` DESC LIMIT START, 5';
$Param3 = 'SELECT COUNT(`id`) FROM `posts` '.$Active.'';
$Param4 = '/news/all/page/';
    }
} else if ($module OR $module != 'all')  {
    $querypost = mysql_query("SELECT * FROM `posts` WHERE `category` = '$module'");
    $total = intval(((mysql_num_rows($querypost) - 1) / 5) + 1); 
    if ($total >= $Param['page']) {
    /*if ($_SESSION['USER_GROUP'] != 2) $Active = 'AND `active` = 1';*/
    if ($_SESSION['group_u']!=2){ $Active = 'WHERE `active` = 1'; $Active_s = 'AND `active` = 1';}
$Param1 = "SELECT * FROM `posts` WHERE `category` = '$module' ".$Active_s." ORDER BY `id` DESC LIMIT 0, 5";
$Param2 = "SELECT * FROM `posts` WHERE `category` = '$module' ".$Active_s." ORDER BY `id` DESC LIMIT START, 5";
$Param3 = "SELECT COUNT(`id`) FROM `posts` WHERE `category` = '$module' ".$Active_s."";
$Param4 = '/news/'.$module.'/page/';
    }
}
if ($total >= $Param['page']) {
    /*echo "Число статей";
    echo mysql_num_rows($querypost);*/
$Count = mysql_fetch_row(mysql_query($Param3));

if (!$Param['page']) {
    $Param['page'] = 1;
    $Result = mysql_query($Param1);
} else {
    $Start = ($Param['page'] - 1) * 5;
    $Result = mysql_query(str_replace('START', $Start, $Param2));
}
PageSelector($Param4, $Param['page'], $Count);
while ($Row = mysql_fetch_assoc($Result)) {

printf('<a href="/news/id/'.$Row['id'].'"><h2>'.$Row['title'].'</h2></a><p>'.$Row['text'].'<p>');
if ($Row['active']==0) echo' (Ожидает модерации)';
else echo '(Проверенно)';
        }
    }
}
}
?>


            <div class="container">
             <div class="row">
<?PageSelector($Param4, $Param['page'], $Count);?>
</div></div>
<? bottom() ?>

















<?
/*






   if (empty($Param)) {
    $query = mysql_query("SELECT * FROM `posts` WHERE `category` = '$module'");
    if (!mysql_num_rows($query)) echo "<h1>По данной категории нет статей</h1>";
    else {
        while ( $row = mysql_fetch_assoc($query) ) {
    printf('<h2>'.$row['title'].'</h2><p>'.$row['text'].'<p>');
            }
        }
    } else if (!empty($Param[page])) {
        if (!$module or $module == 'main') {
if ($_SESSION['USER_GROUP'] != 2) /*$Active = 'WHERE `active` = 1'*/;/*
$Param1 = 'SELECT * FROM `posts` '.$Active.' ORDER BY `id` DESC LIMIT 0, 5';
$Param2 = 'SELECT * FROM `posts` '.$Active.' ORDER BY `id` DESC LIMIT START, 5';
$Param3 = 'SELECT COUNT(`id`) FROM `posts`';
$Param4 = '/news/main/page/';
} else if ($module == 'category') {
if ($_SESSION['USER_GROUP'] != 2) $Active = 'AND `active` = 1';
$Param1 = 'SELECT * FROM `posts` WHERE `category` = '.$Param['id'].' '.$Active.' ORDER BY `id` DESC LIMIT 0, 5';
$Param2 = 'SELECT * FROM `posts` WHERE `category` = '.$Param['id'].' '.$Active.' ORDER BY `id` DESC LIMIT START, 5';
$Param3 = 'SELECT COUNT(`id`) FROM `posts` WHERE `category` = '.$Param['id'];
$Param4 = '/news/category/id/'.$Param['id'].'/page/';
}

$Count = mysql_fetch_row(mysql_query($Param3));

if (!$Param['page']) {
$Param['page'] = 1;
$Result = mysql_query($Param1);
} else {
$Start = ($Param['page'] - 1) * 5;
$Result = mysql_query(str_replace('START', $Start, $Param2));
}


PageSelector($Param4, $Param['page'], $Count);
while ($Row = mysql_fetch_assoc($Result)) {
if (!$Row['active']) $Row['name'] .= ' (Ожидает модерации)';
printf('<h2>'.$Row['title'].'</h2><p>'.$Row['text'].'<p>');
echo '<a href="/news/material/id/'.$Row['id'].'"><div class="ChatBlock"><span>Добавил: '.$Row['added'].' | '.$Row['date'].'</span>'.$Row['name'].'</div></a>';


}
    } else {
        echo "Ошибка url!";
    }*/