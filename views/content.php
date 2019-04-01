<div class="pageString"><?php echo "Page ".($this->data['pag']+1)." of ".$this->data['pagTotal'];?></div>
<div id="pagination">
	<input type="hidden" name="pag" value="<?php echo $this->data['pag'];?>">
	<span data="doubleleft">&laquo;</span>
	<span data="left">&lt;</span>
	<?php echo $this->data['pagList']; ?>
	<span data="right">&gt;</span>
	<span data="doubleright">&raquo;</span>
</div>
<div id='movieContainer'>
	<?php echo $this->data['moviesList']; ?>
</div>
