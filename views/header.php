<!DOCTYPE html>
	<head>
		<meta charset="UTF-8">
		<title>Movies Network</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
		<link rel="stylesheet" href="/<?php echo _PUBLIC_PATH; ?>css/style.css">
        <link rel="shortcut icon" type="image/x-icon" href="/<?php echo _IMG_PATH; ?>film.ico" />

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>		
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>		
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
		<script src="/<?php echo _PUBLIC_PATH; ?>js/script.js"></script>
	</head>
	<body>
        <div id='filters'>
            <div class='wrapper row'>
                <div class='col-md-4'>
                    <h4>Filters</h4>
                </div>
                <div class='col-md-2'>
                    <label>Genre:</label>
                    <select data="filter" name='genre'>
                        <option value=''>All</option>
                        <?php
                            echo $this->data['catGenres'];
                        ?>
                    </select>
                </div>
                <div class='col-md-2'>
                    <label>Language:</label>
                    <select data="filter" name='lang'>
                        <option value=''>All</option>
                        <?php 
                            echo $this->data['catLangs'];
                        ?>
                    </select>
                </div>
                <div class='col-md-3 rightAlign'>
                    <label>Sort By:</label>
                    <select data="filter" name='sortBy'>
                        <option value=''>None</option>
                        <option value='length'>Length</option>
                        <option value='release_date'>Release Date</option>
                    </select>
                    <select data="filter" name='sortType'>
                        <option value=''>None</option>
                        <option value='asc'>Ascending</option>
                        <option value='desc'>Descending</option>
                    </select>
                </div>
            </div>
        </div>
        <div id='contentContainer' class='wrapper'>