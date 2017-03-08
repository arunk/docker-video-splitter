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
        <div class="col-md-5 offset-md-3">
            Your files will appear here. Please refresh to check.
        </div>
    </div>
% for file in files:
    <div class="row">
        <div class="col-md-3">
            <a href="/dl/{{ file }}">{{ file }}</a>
        </div>
    </div>
% end
</div>
</body>
</html>
