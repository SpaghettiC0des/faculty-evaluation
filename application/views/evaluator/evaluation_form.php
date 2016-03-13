<div class="card">
    <div class="card-header">
        <h2>Evaluate <strong><?php echo "{$faculty->LName}, {$faculty->FName} {$faculty->MName}"; ?></strong></h2>
    </div>

    <div class="card-body table-responsive card-padding">
    	<table data-bind="datatable" class="table">
            <thead>
                <tr>
                    <th width="100" class="text-center">Description</th>
                    <th width="5%" class="text-center">Score 1</th>
                    <th width="5%" class="text-center">Score 2</th>
                </tr>
            </thead>
            <tbody>
	    		<form action="">
	    			
	    			<?php foreach($cce_display as $form) {?>
	    				<tr>
	    					<td><?php echo "{$form->CodeDisplay} {$form->Description}"; ?></td>
	    					<td>
	    						<?php if($form->IsInput) {?>
									<div class="fg-line">
	                                    <input type="text" name="score1[]" class="form-control" placeholder="Score 1">
	                                </div>
	    						<?php } ?>
	    					</td>
	    					<td>
	    						<?php if($form->IsInput) {?>
									<div class="fg-line">
	                                    <input type="text" name="score2[]" class="form-control" placeholder="Score 2">
	                                </div>
	    						<?php } ?>
	    					</td>		
	    				</tr>
	    			<?php } ?>
	    		</form>
    		</tbody>
    	</table>
    </div>
</div>