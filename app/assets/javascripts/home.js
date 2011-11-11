// execute when page has finished loading
$(function(){
	
	// exectute the anonymous function when the selected value changes
	$('.input.movies select').change(function(){
		var url = "/home/characters_in_movie?movie_id=" + $(this).val(); // get the selected value from the drop-down
		$('.input.characters select').load(url); // load the response from the url into the specified element(s)
	});
	
});