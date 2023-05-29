<?php
    //Routing: định tuyến

    $controller = isset($_GET['controller'])?$_GET['controller']:'home';
    $action     = isset($_GET['action'])?$_GET['action']:'index';
    // Bước 02: Tìm tệp mà mình sẽ chuyển lại Quyền cho nó (Controller)
    $controller = ucfirst($controller);
    $controller .= 'Controller';
    $controllerPath = 'controllers/'.$controller.'.php';
    //Nếu không tồn tại TỆP
    if(!file_exists($controllerPath)){
        die('Tệp tin không tồn tại');
    }
    //Nếu có tồn tại tệp Controller
    require($controllerPath);
    // Bước 03: Khởi tạo đối tượng tương ứng của Controller và gọi hàm xử lý Action
    $myObj = new $controller();
    $myObj->$action();




?>