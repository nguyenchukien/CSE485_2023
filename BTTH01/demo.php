<?php
// Mở file để đọc
$file = fopen("students.txt", "r");

// Đọc nội dung của file và lưu vào biến $data
$data = fread($file, filesize("students.txt"));

// Chuyển đổi dữ liệu văn bản thành mảng đối tượng
$students = explode("\n", $data);
$students_array = array();
foreach ($students as $student) {
  $student_info = explode(",", $student);
  $student_object = new stdClass();
  $student_object->name = $student_info[0];
  $student_object->age = $student_info[1];
  $student_object->address = $student_info[2];
  array_push($students_array, $student_object);
}

// Hiển thị đối tượng
foreach ($students_array as $student) {
  echo "Name: " . $student->name . "<br>";
  echo "Age: " . $student->age . "<br>";
  echo "Address: " . $student->address . "<br>";
}
