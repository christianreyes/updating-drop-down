// execute when page has finished loading
$(function(){
	
	$('.input.movies select').change(function(){
		var url = "/home/characters_in_movie?movie_id=" + $(this).val();
		$('.input.characters select').load(url);
	});
	
});