<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Quản lý sinh viên</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/main.css">
</head>
<?php
require './class/Student.php';

    $file = fopen("./src/student.txt", "r");

?>
<body>
    <h1 id="title" style="text-align: center; padding-top:3%">Quản lý sinh viên</h1>     
    <table class="table">
        <thead>
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Tên sinh viên</th>
            <th scope="col">Tuổi</th>
          </tr>
        </thead>
        <tbody>
          <?php
             while (!feof($file)) {
                $line = fgets($file);
                $data = explode(",", $line);
                $student = new Student();
                $student->setID($data[0]);
                $student->setName($data[1]);
                $student->setAge($data[2]);
          ?>
                  <tr>
                      <th ><?= $student->getID() ?></th>
                      <td><?= $student->getName() ?></td>
                      <td><?= $student->getAge() ?></td>
                  </tr>
          <?php
              }
          ?>
        </tbody>
         
      </table>
      <div class="d-grid gap-2 d-md-flex justify-content-md-end">
        <button class="btn btn-primary me-md-2" type="button"><a href="./src/addStudent.php" class="btn">Thêm sinh viên</a></button>
      </div>
        


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
</body>
</html>