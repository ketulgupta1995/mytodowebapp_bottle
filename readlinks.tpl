<!DOCTYPE html>
<html lang="en">
<head>
  <title>Task</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Ketul's Daily Planner</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="http://justforml.pythonanywhere.com/daily">Daily</a></li>
      <li><a target="_blank" href="http://justforml.pythonanywhere.com/alltasks" > Read all tasks </a></li>
      <li><a target="_blank" href="http://justforml.pythonanywhere.com/alltasks2" > Read all tasks sql </a></li>
      <li> <a target="_blank" href="http://justforml.pythonanywhere.com/deleteideas">delete ideas which are over. </a></li>

    </ul>
  </div>
</nav>


  <h2 class="text-center">Delete Ideak</h2>
  <form action="/deleteideas" method="post">
    <div class="form-group">
      <label for="task">Task Id:</label>
      <input type="text" class="form-control" id="task" placeholder="Enter details" name="taskid">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
    </form>



  </form>
  </br>


</div>
</body>
</html>