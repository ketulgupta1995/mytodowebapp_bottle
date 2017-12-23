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
  <h2>Add a task</h2>
  <form action="/save" method="post">
    <div class="form-group">
      <label for="task">Task Details:</label>
      <input type="text" class="form-control" id="task" placeholder="Enter details" name="task">
    </div>
    <div class="form-group">
      <label for="type">Category:</label>
      <select type="text" class="form-control" id="type" placeholder="select category" name="type">
            <option value="social">social</option>
            <option value="health">health</option>
            <option value="academic">academic</option>
            <option value="wealth">wealth</option>
            <option value="family">family</option>
             <option value="personal">personal</option>
              <option value="extrac">extrac</option>
            <option value="misc">misc</option>
        </select>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
  <a href="http://justforml.pythonanywhere.com/alltasks"> Read all tasks </a>
  %if again==1:
    {{taskdetails}}

</div>

</body>
</html>