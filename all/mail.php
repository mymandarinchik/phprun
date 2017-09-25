<? 

if ($_POST['contact_f']) {
    email_valid();
    captcha_valid();

    if ( strlen($_POST['subject']) < 10 or strlen($_POST['subject']) > 200 )
        message("Длина сообшения должна быть от 10 до 200 символов!");

    mail($admin_email, 'Письмо в тех.поддержку с сайта:'.$name_web_site.'', 'Почта отправителя:<b>'.$_POST['email'].'</b><br><p>'.htmlspecialchars($_POST['subject']).'</p>');
    
    cform();
    //go('contact');
}
 ?>