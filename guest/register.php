<? top('Регистрация') ?>

<h1>Регистрация</h1>

<form onsubmit="return false">
<p><input type="text" placeholder="E-mail" id="email"></p>
<p><input type="password" placeholder="Пароль" id="password"></p>
<p><input type="password" placeholder="Повторить пароль" id="rep_password"></p>
<p><input type="text" placeholder="<?captcha()?>" id="captcha"></p>
<p><button onclick="post_query('gform', 'register', 'email.password.rep_password.captcha')">Регистрация</button></p>
</form>

<? bottom() ?>