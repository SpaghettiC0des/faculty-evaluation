<div class="card">
	<div class="card-header">
		Upload Document		
	</div>
	<div class="card-body card-padding">
		<form action="<?php echo url::site(); ?>faculty/upload" enctype="multipart/form-data">
			<div class="form-group">
				<input name="doc" type="file" class="form-control">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">Upload</button>
			</div>
		</form>
	</div>
</div>