<?
function go_auth($data) {
    foreach ($data as $key => $value) 
        $_SESSION[$key] = $value;

    go('profile');
}

function go_auth_soc($data) {
    foreach ($data as $key => $value) 
        $_SESSION[$key] = $value;

    header('Location: /user/'.$data[id]);
}

function GoSingUp($data){
    if ($data['uid_vk']) {//VKONTAKTE
        $result = mysql_query("SELECT * FROM users WHERE `vk_id` = '$data[uid_vk]'") or die(mysql_error()); 
        if (mysql_num_rows($result)!=0){//не новый пользователь --> обновляет если надо бд
            mysql_query('UPDATE `users` SET `name` = "'.$data[first_name].'", `sur_name` = "'.$data[last_name].'", `year_birth` = "'.$data[bdate].'", `avatar` = "'.$data[photo].'" WHERE `vk_id` = "'.$data['uid_vk'].'"') or die(mysql_error());
            $data['id']= mysql_fetch_assoc($result)[id];
            go_auth_soc($data);
        } else {//новый пользователь --> заносим в БД
            mysql_query('INSERT INTO `users` (`name`, `sur_name`, `year_birth`, `avatar`, `vk_id`, `reg_date`) VALUES ("'.$data[first_name].'", "'.$data[last_name].'", "'.$data[bdate].'", "'.$data[photo].'", "'.$data[uid_vk].'", NOW())') or die(mysql_error());
            $result = mysql_query("SELECT `id` FROM users WHERE `vk_id` = '$data[uid_vk]'") or die(mysql_error()); 
            $data['id']= mysql_fetch_assoc($result)[id];
            go_auth_soc($data);
        }
        
    } else if ($data['uid_ok']) {//ODNOKLASSNIKI
        $result = mysql_query("SELECT * FROM users WHERE `vk_id` = '$data[uid_vk]'") or die(mysql_error()); 
        if (mysql_num_rows($result)!=0){//не новый пользователь --> обновляет если надо бд
            mysql_query('UPDATE `users` SET `name` = "'.$data[first_name].'", `sur_name` = "'.$data[last_name].'", `year_birth` = "'.$data[bdate].'", `avatar` = "'.$data[photo].'" WHERE `vk_id` = "'.$data['uid_vk'].'"') or die(mysql_error());
            $data['id']= mysql_fetch_assoc($result)[id];
            go_auth_soc($data);
        } else {//новый пользователь --> заносим в БД
            mysql_query('INSERT INTO `users` (`name`, `sur_name`, `year_birth`, `avatar`, `vk_id`, `reg_date`) VALUES ("'.$data[first_name].'", "'.$data[last_name].'", "'.$data[bdate].'", "'.$data[photo].'", "'.$data[uid_vk].'", NOW())') or die(mysql_error());
            $result = mysql_query("SELECT `id` FROM users WHERE `vk_id` = '$data[uid_vk]'") or die(mysql_error()); 
            $data['id']= mysql_fetch_assoc($result)[id];
            go_auth_soc($data);
        }
    } else if ($data['uid_fb']) {//FACEBOOK
        $result = mysql_query("SELECT * FROM users WHERE `fb_id` = '$data[uid_fb]'") or die(mysql_error()); 
        if (mysql_num_rows($result)!=0){//не новый пользователь --> обновляет если надо бд
            mysql_query('UPDATE `users` SET `name` = "'.$data[first_name].'", `sur_name` = "'.$data[last_name].'", `year_birth` = "'.$data[birthday].'", `avatar` = "'.$data[photo].'" WHERE `fb_id` = "'.$data['uid_fb'].'"') or die(mysql_error());
            $data['id'] = mysql_fetch_assoc($result)[id];
            go_auth_soc($data);
        } else {//новый пользователь --> заносим в БД
            mysql_query('INSERT INTO `users` (`name`, `sur_name`, `year_birth`, `avatar`, `fb_id`, `reg_date`) VALUES ("'.$data[first_name].'", "'.$data[last_name].'", "'.$data[birthday].'", "'.$data[photo].'", "'.$data[uid_fb].'", NOW())') or die(mysql_error());
            $result = mysql_query("SELECT `id` FROM users WHERE `fb_id` = '$data[uid_fb]'") or die(mysql_error()); 
            $data['id']= mysql_fetch_assoc($result)[id];
            go_auth_soc($data);
        }
    } else {
        echo "Error auth";
    }
    /*
    $data['name'];
    $data['first_name'];
    $data['last_name'];
    $data['photo'];
    $data['country'];
    $data['bdate'];*/
}


if ($_POST['login_f']) {
    email_valid();
    captcha_valid();
    password_valid();
    $result = mysql_query("SELECT * FROM users WHERE email='$_POST[email]' AND `password` = '$_POST[password]'") or die(mysql_error()); 
    if (mysql_num_rows($result) == 0 ){
    message('Аккаунт не найден');
    } 

    $row = mysql_fetch_assoc($result);

    if ( $row['protected'] == 1 ) {
        $code = random_str(5);
        $_SESSION['confirm'] = array(
            'type' => 'login',
            'data' => $row,
            'password' => $_POST['password'],
            'code' => $code,
            );
        mail($_POST['email'], 'Подтверждение входа' , "Код подтверждения входа: <b>$code</b>");
        go('confirm');

    }
    go_auth($row);

}

else if ($_POST['register_f']) {
    password_repeat();
    captcha_valid();
    email_valid();
    password_valid();
    

    $result = mysql_query("SELECT * FROM users WHERE email='$_POST[email]'") or die(mysql_error()); 
    if (mysql_num_rows($result) != 0 ){
    message('Email занят');
    }   else {
    $code = random_str(5);
    $_SESSION['confirm'] = array(
        'type' => 'register',
        'email' => $_POST['email'],
        'password' => $_POST['password'],
        'code' => $code,
        );
    mail($_POST['email'], 'Регистрация' , "Код регистрации: <b>$code</b>");
    go('confirm');
    }


}

else if ($_POST['recovery_f']) {
    email_valid();
    captcha_valid();
    $result = mysql_query("SELECT * FROM users WHERE email='$_POST[email]'") or die(mysql_error()); 
    if (mysql_num_rows($result) == 0 ){
    message('Аккаунт не найден');
    }   else {
        $code = random_str(5);
    $_SESSION['confirm'] = array(
        'type' => 'recovery',
        'email' => $_POST['email'],
        'code' => $code,
        );
    mail($_POST['email'], 'Востановление пароля' , "Код востановления: <b>$code</b>");
    go('confirm');
    message('Аккаунт не найден');
    }
}

else if ($_POST['confirm_f']) {

    


    if ( $_SESSION['confirm']['type'] == 'register') {




        if ( $_SESSION['confirm']['code'] != $_POST['code'] )
                message('Код подтверждения регистрации указан неверно');


            mysql_query('INSERT INTO `users` VALUES ("", "'.$_SESSION['confirm']['email'].'", "'.$_SESSION['confirm']['password'].'")');
            mysql_query('INSERT INTO users (`email`, `password`, `reg_date`) VALUES ("'.$_SESSION['confirm']['email'].'", "'.$_SESSION['confirm']['password'].'", NOW())') or die(mysql_error());

            unset($_SESSION['confirm']);

            go('login');

        }


        else if ( $_SESSION['confirm']['type'] == 'recovery') {


        if ( $_SESSION['confirm']['code'] != $_POST['code'] )
                message('Код востановления указан неверно');

            $new_pass = random_str(7);

            mysql_query('UPDATE `users` SET `password` = "'.md5($new_pass).'" WHERE `email` = "'.$_SESSION['confirm']['email'].'"');
            unset($_SESSION['confirm']);
            mail($_POST['email'], 'Новый пароль' , "Ваш новый пароль: <b>$new_pass</b>");
            MessageSend(2, 'На вашу почту высланно письмо с новым паролем', '', 0);
            go('login');

        }

        else if ( $_SESSION['confirm']['type'] == 'login') {
            if ( $_SESSION['confirm']['code'] != $_POST['code'] )
                message('Код подтверждения входа указан неверно');

           go_auth($_SESSION['confirm']['data']);
        }

    else not_found();


}
?>