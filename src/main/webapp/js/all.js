$(document).ready(function(){
	$("#btn").click(function(){
		alert("点击按钮了！");
	});
})
$(document).click(function(e){    
    var list = ['富强民主', '文明和谐', '自由平等', '公正法治', '爱国敬业', '诚信友善'];
    textUp( e, 2000, list, 200 )
})
function textUp( e, time, arr, heightUp ){
    var lists = Math.floor(Math.random() * arr.length);
    var colors = '#'+Math.floor(Math.random()*0xffffff).toString(16);
    var $i = $('<span />').text( arr[lists] );
    var xx = e.pageX || e.clientX + document.body.scroolLeft;
    var yy = e.pageY || e.clientY + document.body.scrollTop;

    $('body').append($i);
    $i.css({
        top: yy,
        left: xx,
        color: colors,
        transform: 'translate(-50%, -50%)',
        display: 'block',
        position: 'absolute',
        zIndex: 999999999999
    })  
    $i.animate({
        top: yy - ( heightUp ? heightUp : 200 ),
        opacity: 0
    }, time, function(){
        $i.remove();
    })            
}