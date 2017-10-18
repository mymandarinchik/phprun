<?php
$social_networks_db_connection = mysqli_connect('localhost', 'root', '', 'phprun');
if (!social_networks_db_connection) exit('Data base connection failed.');
$social_networks_db_query = "SELECT `vk_id`,`fb_id`,`ok_id` FROM `users` WHERE `id`=45";
$social_networks_db_get_info = mysqli_query($social_networks_db_connection, $social_networks_db_query);
	while ($networks_row = mysqli_fetch_assoc($social_networks_db_get_info)) {
		if ($networks_row['vk_id']) {
			printf($networks_row['vk_id']);
			echo "<br />";	
		} else {
			echo "<a href=''>Добавить ВК</a><br />";
		}
		if ($networks_row['fb_id']) {
			printf($networks_row['fb_id']);
			echo "<br />";
		} else {
			echo "<a href=''>Добавить ФБ</a><br />";
		}
		if ($networks_row['ok_id']) {
			printf($networks_row['ok_id']);	
		} else {
			echo "<a href=''>Добавить ОК</a>";
		}
    }
mysqli_free_result($social_networks_db_get_info);
mysqli_close($social_networks_db_connection);
?>