<? 
top('Главная'); 
$_SESSION['loader'] = 0;
?>
<script type="text/javascript">
    
function load_posts() {
    $.get('/loader', function ( data ) {

        if( data == 'emty' ) 
            $('#post_b').text('Пусто');

        if( data != 'end' ) 
            $('#post_b').append( data );
        else $("#load_p").detach();
    })
}


 $(document).ready(function() {
    load_posts();
 });


 var loading = false;
$(window).scroll(function(){
if((($(window).scrollTop()+$(window).height())+250)>=$(document).height()){
  if(loading == false){
  loading = true;
  $('#loadingbar').css("display","block");
  $.get('/loader', function ( data ) {
    setTimeout(function(){
    if( data != 'end' ) {
    $('#post_b').append( data );
    $('#loaded_max').val(parseInt($('#loaded_max').val())+50);
    $('#loadingbar').css("display","none");
    loading = false;
    }
    else $("#load_p").detach();
    $('#loadingbar').css("display","none");
    },500);
  });
  }
}
});
$(document).ready(function() {
$('#loaded_max').val(50);
});
</script>

<div id="post_b">
    
</div>
<div id="loadingbar"></div>
<button id="load_p" onclick="load_posts()">Ещё</button>
<? bottom() ?>