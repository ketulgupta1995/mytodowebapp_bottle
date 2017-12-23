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
        %if again==1:
            {{taskdetails}}
        %end
    </ul>
  </div>
</nav>


  <h2 class="text-center">Add a task</h2>
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
            <option value="spritual">spritual</option>
        </select>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
  </br>

  </br>
    <h2 class="text-center">Add an idea</h2>
        <form action="/saveidea" method="post">
            <div class="form-group">
                <label for="idea">Task Details:</label>
                <input type="text" class="form-control" id="idea" placeholder="Enter details" name="idea">
            </div>
            <div class="form-group">
              <label for="itype">Category:</label>
              <select type="text" class="form-control" id="itype" placeholder="select category" name="itype">
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
            <button type="submit" class="btn btn-default center">Submit</button>
        </form>

%if tasks:

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

%end

</div>


<script>
    var table = document.getElementById('table1');
    var rows = table.rows;
    for(var i = 0, td; i < rows.length; i++){
        if( i==0){
         td = document.createElement('td');
        td.appendChild(document.createTextNode("Serial No."));
        rows[i].insertBefore(td, rows[i].firstChild);
        }
        else{
        td = document.createElement('td');
        td.appendChild(document.createTextNode(i));
        rows[i].insertBefore(td, rows[i].firstChild);
        }
    }
</script>




</body>




</html>



<!--
<html>
    <form action="/save" method="post">
        Task: <input name="task" type="text" />
        </br>
        Type: <input name="type" type="text" />
        <select name="type">
            <option value="social">social</option>
            <option value="health">health</option>
            <option value="academic">academic</option>
            <option value="wealth">wealth</option>
            <option value="family">family</option>
            <option value="misc">misc</option>
        </select>
        </br>
        <input value="Save" type="submit" />
    </form>
    </br>
    <a href="http://justforml.pythonanywhere.com/alltasks"> Read all tasks </a>
</html>
-->
