<?php
include("services/ArticleService.php");

class HomeController{
    // Hàm xử lý hành động index
    public function index(){
        // Nhiệm vụ 1: Tương tác với Services/Models
        $articleService = new ArticleService();
        $articles = $articleService->getAllArticles();
        // Nhiệm vụ 2: Tương tác với View
        $title = 'Trang chủ';
        include("views/home/index.php");
    }
   
}