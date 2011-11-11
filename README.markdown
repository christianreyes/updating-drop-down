Updating drop-down example
========

This is an example form made with Rails 3.1.1 and jQuery. 

Select a movie and characters are loaded for that movie. I have populated the database with default values. A movie has many characters.

Live demo: [http://updating-dropdown-example.heroku.com/](http://updating-dropdown-example.heroku.com/)

Problem
-----

We need a drop-down to load data when another drop-down is selected (the same principles learned here apply to many other problems)

Solution
-----

Load data from a url into a placeholder for the drop-down

Step-by-step
========

*  Create a placeholder for the drop-down to be loaded (in app / views / home / index.html.erb)

```html
...
<label>Character</label>
<div class="input characters">
	<select>
		<option></option>
	</select>
</div>
...
```

*  Create a partial which will provide the html of the loaded drop-down (app/views/home/_characters.html.erb)

```ruby
<%= collection_select(:survey, :character_id, characters, :id, :name, {:prompt => "Select a character"})%>
```

*  Create a method in home_controller for requesting the data

```ruby
def characters_in_movie
  # get all the characters in that movie
  # expecting format of /home/characters_in_movie?movie_id=1
  @characters = Character.all.where(:movie_id => params[:movie_id])
    
  respond_to do |format|
    # only render the partial "_characters.html.erb". Send @characters as the variable "characters" to the partial
    format.html {render :partial => 'characters', :locals => {:characters => @characters}}
    end
end
```

*  Add the home/characters_in_movie route to routes.rb

```ruby
# needed for loading the characters drop-down. will automatically call characters_in_movie in home_controller
get "home/characters_in_movie"
```

*  Create an event listener for the onchange event of the first drop-down (app / assets / javascripts / home.js )(or anywhere else you have your javascript)

```javascript
// execute when page has finished loading
$(function(){

	// exectute the anonymous function when the selected value changes
	$('.input.movies select').change(function(){
		var url = "/home/characters_in_movie?movie_id=" + $(this).val(); // get the selected value from the drop-down
		$('.input.characters select').load(url); // load the response from the url into the specified element(s)
	});

});
```

*  Use the updating drop-down!