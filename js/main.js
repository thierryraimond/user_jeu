/**
 * 
 */
$(function() {
	
	$('#afficherUsers').on('click', function() {
		alert('test');
		$.post('ajax.php', {
			'controller' : 'printUser'
		}, function(data){
			for (var i=0; i < data.length; i++){
				$('#printUsers').append('<p>'+ data[i].userId + ' - ' + data[i].name + '</p>');
			}
		}, "json");
	});
	
	$('#afficheThra').on('click', function(){
		
		$.post('ajax.php', {
			'controller' : 'afficheUser',
			'id' : 16
		}, function(data){
			$('#printUsers').append('<p>'+ data.name + '</p>');
		}, "json");
	});
});