<? 
function delete($table, $id){ // функция удаления страниц 
    $sql = "DELETE FROM $table WHERE id='$id'"; 
    mysql_query($sql) or die (mysql_error()); 
    }
if($module=='delete') {
    if($Param['type']=='comment') {
       $query = mysql_query("SELECT * FROM `comments` WHERE `id` = $Param[id] AND `uid`= $_SESSION[id] AND `pid`= $Param[post]");
        if (!empty($query) AND mysql_num_rows($query)) {
            delete('comments', $Param['id']);
            MessageSend(3, 'Коммент из статьи: '.$Param['post'].' - удален', '/news/id/'.$Param['post'], 1);
        }else {
            echo "Доступ запрещён!";
        }
    } elseif ($Param['type']=='blog'){//не comment
        $query = mysql_query("SELECT * FROM `u_blog` WHERE `id` = $Param[id] AND `uid`= $_SESSION[id]");
        if (!empty($query) AND mysql_num_rows($query)) {
            delete('u_blog', $Param['id']);
            MessageSend(3, 'Запись в блоге пользователя: '.$Param['user'].' - удалена', '/user/'.$Param['user'], 1);
        }else {
            echo "Доступ запрещён!";
        }
    } elseif ($Param['type']=='reviews'){//не blog
        $query = mysql_query("SELECT * FROM `reviews` WHERE `id` = $Param[id] AND `uid`= $_SESSION[id]");
        if (!empty($query) AND mysql_num_rows($query)) {
            delete('reviews', $Param['id']);
            MessageSend(3, 'Отзыв пользователя: '.$_SESSION[id].' - удалена', '/reviews', 1);
        }else {
            echo "Доступ запрещён!";
        }
    }
} else {//не delete

}
//echo $module.'/'.$Param['type'].'/'.$Param['post'].'/'.$Param['id'].'/'.$Param['user'];


?>
