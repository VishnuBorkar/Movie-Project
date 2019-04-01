<?php
class controller{
    function get_header(){   
        $movieController =  new movieController;
        $catGenres = $movieController->displayCategory(0);
        $catLangs = $movieController->displayCategory(1);
        $display = new Display();
        $display->bind('catLangs', $catLangs);
        $display->bind('catGenres', $catGenres);
        echo $display->render('header');
    }
    function get_content(){   
        $movieController =  new movieController;
        list($moviesList,$pagList,$pag,$pagTotal) = $movieController->getMovieDetails();
        $display = new Display();
        $display->bind('moviesList', $moviesList);
        $display->bind('pagList', $pagList);
        $display->bind('pag', $pag);
        $display->bind('pagTotal', $pagTotal);
        if($pagTotal == 0)
            echo "<div class='errMsg'>No movies found.</div>";
        else
            echo $display->render('content');
    }
    function get_footer(){   
        $display = new Display();
        echo $display->render('footer');
    }
}