<? MessageShow();
top('Вход');
   include 'configVK.php';
   include 'configFB.php';
   include 'configOK.php';
 ?>

<h1>Вход</h1>
<form onsubmit="return false" >
<p><input type="text" placeholder="E-mail" id="email"></p>
<p><input type="password" placeholder="Пароль" id="password"></p>
<p><input type="text" placeholder="<?captcha()?>" id="captcha"></p>
<p><button onclick="post_query('gform', 'login', 'email.password.captcha')">Войти</button> <button onclick="go('recovery')">Восстановить пароль</button></p>
</form>

<a href="https://oauth.vk.com/authorize?client_id=<?=ID?>&display=page&redirect_uri=<?=URL?>&response_type=code" target="_blank">Login Vk</a>

<br><a href="https://www.facebook.com/v2.10/dialog/oauth?client_id=<?=ID_FB?>&redirect_uri=<?=URL_FB?>&response_type=code&scope=public_profile,email,user_location,user_birthday" target="_blank">Login FB</a>

<br><a href="https://connect.ok.ru/oauth/authorize?client_id=<?=ID_OK?>&scope=VALUABLE_ACCESS&response_type=code&redirect_uri=<?=URL_OK?>" target="_blank">Login OK</a>
<? bottom() ?>