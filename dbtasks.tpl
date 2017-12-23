<!DOCTYPE html>
<html>
<head>
<title>All Tasks2</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://www.w3schools.com/lib/w3.js"></script>
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
<div class="jumbotron text-center">
  <div class="text-center">
    <input oninput="w3.filterHTML('#table1', '.trow', this.value)" placeholder="Search .....">
    </div>
</div>

  <div class="table-responsive">
  <table class="table" id="table1">
    <thead>
      <tr>
        <th>Taskid</th>
        <th>Task</th>
        <th>Type</th>
        <th>Date</th>
      </tr>
    </thead>
    <tbody>
    %for task in tasks:
      <tr class="trow">
        <td>{{task[0]}}</td>
        <td>{{task[1]}}</td>
        <td>{{task[2]}}</td>
        <td>{{task[3]}}</td>
      </tr>
    %end
    </tbody>
  </table>
  </div>
</div>

</body>
</html>
