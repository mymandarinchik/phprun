<? top('Обратная связь') ?>
<h1>Обратная связь</h1>
<form onsubmit="return false" >
<p><input type="text" placeholder="E-mail" value="<?=$_SESSION['email']?>" id="email"></p>
<p><textarea class="cl" placeholder="Текст сообщения" id="subject"></textarea></p>
<p><input class="cl" type="text" placeholder="<?captcha()?>" id="captcha"></p>
<p><button onclick="post_query('mail', 'contact', 'email.subject.captcha')">Отправить</button> </p>
</form>
<? bottom() ?>