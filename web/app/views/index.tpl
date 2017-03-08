<!doctype html>
<html lang="en">
<head>
<title>Submit URL</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
<style>
body {
    background-color: black;
    color: white;
}
</style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 offset-md-2">
            <h1>Submit video URL</h1>
            <form action="/submit" method="post">
                <div class="form-group">
                    <label for="url">URL</label>
                    <input name="url" type="url" class="form-control" id="url" placeholder="Youtube or Vimeo URL">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
                </div>                    
            </form>
        </div>
    </div>
</div>
</body>
</html>
