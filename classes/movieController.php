<?php
class movieController extends controller{

    protected $itemPerRow = 5;

    protected function build($arr){
        $divWidth = floor( 12 / $this->itemPerRow );
        for ($i=0,$j=1; $i < count($arr); $i++,$j++) { 
            if($i%$this->itemPerRow == 0){
                $html .= "<div class='row movie-row'>";
                $j = 1;
            }
            $imgPath = (file_exists(_IMG_PATH.$arr[$i][featured_img])) ? _IMG_PATH.$arr[$i][featured_img] : _IMG_PATH.'noImg.png';
            $html .= "<div class='col-md-".$divWidth."'>
                            <img src='".$imgPath."' class='movie-item'/>
                            <div class='info'>
                                <div class='title'>".$arr[$i][title]."</div>
                                <span>".$arr[$i][length]." minutes / ".$arr[$i][release_date_str]."</span>
                            </div>
                            <div class='desc'>".$arr[$i][description]."</div>
                        </div>";
            if($j == $this->itemPerRow){
                $html .= "</div>";
            }
        }
        return $html;
    }
    protected function paginationDetails($count,$pag){
        $limit = ceil($count/10);
        $paginationLeft = $pag - 2;
        if($paginationLeft < 0){
            $offset = abs($paginationLeft);
            $paginationLeft = 0;
        }
        $paginationRight = $pag + 2 + $offset;
        if($paginationRight > $limit){
            $offset = $paginationRight - $limit;
            $paginationLeft = $paginationLeft - $offset;
            $paginationRight = $limit;
        }
        if ($paginationLeft<0) {
            $paginationLeft=0;
        }
        for ($i=$paginationLeft; $i < $paginationRight; $i++) { 
            $pagStr .= "<span";
            if($i == $pag)
                $pagStr .= " class=active";
            $pagStr .= " data=".$i.">".($i+1)."</span>";
        }
        return array($pagStr,$pag,$limit);
    }
    public function getMovieDetails(){
        $movieModal = new Model;
        $genre = $_POST['genre'];
        $lang = $_POST['lang'];
        $sortBy = $_POST['sortBy'];
        $sortType = $_POST['sortType'];
        $count = $movieModal->getCountMovies($genre, $lang);
        $last = floor($count/10);

        $pag = ($_POST['pag']) ? $_POST['pag'] : 0;
        switch($_POST['pagClk']){
            case 'left':
                if($pag > 0)
                    $pag = $pag - 1;
                break;
            case 'right':
                if($pag < $last)
                    $pag = $pag + 1;
                break;
            case 'doubleleft':
                $pag = 0;
                break;
            case 'doubleright':
                $pag = $last;
                break;
            default:
                $pag = $_POST['pagClk'];
                break;
        }

        list($data, $count) = $movieModal->getMovies($genre, $lang, $sortBy, $sortType, $pag);

        $arrayResult=$this->paginationDetails($count,$pag);

        $listStr=$this->build($data);

        return array($listStr,$arrayResult[0],$arrayResult[1],$arrayResult[2]);	
    }
    public function displayCategory($type){
        $movieModal = new Model;
        $catData = $movieModal->getCat($type);
        for ($i=0; $i < count($catData); $i++) { 
            $selStr .= "<option value='".$catData[$i][value]."'>".$catData[$i][value]."</option>";
        }
        return $selStr;
    }
}