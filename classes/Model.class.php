<?php
class Model{
    public $count;
    public function __construct(){
        $this->count = $this->getCount();
    }
    public function getCount(){
        global $pdoObj;

            $props = array(
                'columns' => 'count(*) as count',
                'table' => 'tbl_movies',
                'fetchAll' => 0
            );

            $result = $pdoObj->fetchRecords($props);
            if(!$result) {
                return -1;
            }
            return $result[count];
    }
    public function getCat($filter){
        global $pdoObj;
        $filterWhr = ($filter == 0) ? 'Genre' : 'Language';

        $props = array(
                'table' => 'tbl_category',
                'columns' => '*',
                'where' => 'type = ?',
                'whereData' => array($filterWhr),
                'fetchAll' => 1 
            );

            $result = $pdoObj->fetchRecords($props);
            if(!$result) {
                return false;
            }

            return $result;

    }
    public function getCountMovies($genre, $lang){
        global $pdoObj;
        if($genre){
            $catGID = $this->getFilteredCatID('Genre',$genre);
            $gIds = $this->getRelMovieIDs($catGID);
        }
        if($lang){
            $catLID = $this->getFilteredCatID('Language',$lang);
            $lIds = $this->getRelMovieIDs($catLID);
        }

       if($gIds && $lIds) 
        {
            $where = "id in ($gIds) and id in ($lIds)";
            //$whereData= array($gIds, $lIds);
        }
        elseif($gIds)
        {
            $where = "id in ($gIds)";
            //$whereData= array($lIds);
        }
        elseif($lIds)
        {
            $where = "id in ($lIds)";
            //$whereData= array($lIds);
        }

        $from = 'tbl_movies';

        $props = array(
                'columns' => 'count(*) as count',
                'table' => $from,
                'where' => $where,
                //'whereData' => $whereData,
                'fetchAll' => 0
            );

            $result = $pdoObj->fetchRecords($props);
            if(!$result) {
                return 0;
            }

        return $result[count];        
    }
    public function getMovies($genre, $lang, $sortBy, $sortType, $pag){
        //echo "<br>Filter-$genre, $lang";
        global $pdoObj;
        if($genre){
            $catGID = $this->getFilteredCatID('Genre',$genre);
            $gIds = $this->getRelMovieIDs($catGID);
        }
        if($lang){
            $catLID = $this->getFilteredCatID('Language',$lang);
            $lIds = $this->getRelMovieIDs($catLID);
        }

        if($gIds && $lIds) 
        {
            $where = "id in ($gIds) and id in ($lIds)";
            //$whereData= array($gIds, $lIds);
        }
        elseif($gIds)
        {
            $where = "id in ($gIds)";
            //$whereData= array($lIds);
        }
        elseif($lIds)
        {
            $where = "id in ($lIds)";
            //$whereData= array($lIds);
        }

        $sortBy = ($sortBy) ? $sortBy : "id";
        $pag = ($pag)*10;
        $from = 'tbl_movies';    
        $what = "*,date_format(release_date,'%d %M %Y') as release_date_str";

        $props = array(
                'columns' => $what,
                'table' => $from,
                'where' => $where,
                //'whereData' => $whereData,
                'order' => $sortBy." ".$sortType,
                'limit' => $pag.',10',
                'fetchAll' => 1
            );

            $data = $pdoObj->fetchRecords($props);
            if(!$data) {
                return array();
            }

        $count=$this->getCountMovies($genre, $lang);

        return array($data, $count);  
    }
    public function getFilteredCatID($type, $value){
        global $pdoObj;

        $props = array(
                'columns' => 'id',
                'table' => 'tbl_category',
                'where' => 'type = ? and value = ?',
                'whereData' => array($type, $value),
                'fetchAll' => 0
            );

            $result = $pdoObj->fetchRecords($props);
            if(!$result) {
                return false;
            }
            return $result[id];     
    }
    public function getRelMovieIDs($catID){
        global $pdoObj;

        $props = array(
                'columns' => 'group_concat(movie_id) as ids',
                'table' => 'tbl_movie_relation',
                'where' => 'category_id = ?',
                'whereData' => array($catID),
                'fetchAll' => 0
            );

            $result = $pdoObj->fetchRecords($props);
            if(!$result) {
                return false;
            }
            return $result[ids];       
    }
}
?>