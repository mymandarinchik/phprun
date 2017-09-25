<? 
if ( !$_SESSION['confirm']['code'] ) not_found();

top('Подтверждение регистрации') ?>

<h1>Подтверждение регистрации</h1>

<p><input type="text" placeholder="Код" id="code"></p>
<p><button onclick="post_query('gform', 'confirm', 'code')">Подтвердить</button> </p>

<? bottom() ?>