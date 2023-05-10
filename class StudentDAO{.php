class StudentDAO{
  private $students = array();

  public function createStudent($name, $id, $age){
    $student = array(
      'id' => count($this->students) + 1,
      'name' => $name,
      'age' => $age
    );

    array_push($this->students, $student);

    return $student;
  }

  public function readStudent($id) {
    foreach($this->students as $student){
      if($student['id'] == $id) {
        return $student;
      }
    }

    return null;
  }

  public function updateStudent($id, $name, $age){
    foreach($this->students as &$student) {
      if($student['id'] == $id) {
        $student['name'] = $name;
        $student['age'] = $age;

        return $student;
      }
    }

    return null;
  }

  public function deleteStudent($id) {
    foreach($this->students as $index => $student) {
      if($student['id'] == $id) {
        array_splice($this->students, $index, 1);

        return true;
      }
    }

    return false;
  }

  public function getAllStudents() {
    return $this->students;
  }
}