<?
$Count = mysql_query("SELECT COUNT(`id`) FROM `dialog` WHERE `recive` = $_SESSION[id] AND `status` = 0");
if (empty($Count)) MessageSend(2, 'У вас нет новых сообщений', '', 0);
else {
    if (mysql_num_rows($Count)) {
        $Count = mysql_fetch_row($Count);
    if ($Count[0] != 0) MessageSend(3, ' У вас есть непрочитанные диалоги ( <b>'.$Count[0].'</b> )', '', 0);
     else {
        MessageSend(3, ' У вас нет новых сообщений', '', 0);
        }
    }
}
MessageShow();

?>