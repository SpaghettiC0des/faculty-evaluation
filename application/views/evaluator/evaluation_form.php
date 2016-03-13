<?php $userLevel = (int)$this->session->get('evaluator')->UserLevel; ?>
<div class="col-md-6">
	<div data-bind="with: evaluationForm" class="card">
	    <div class="card-header">
	        <h2>Evaluate <strong><?php echo $facultyFullname; ?></strong></h2>
	    </div>
	
	    <div class="card-body table-responsive card-padding">
	    	<table class="table">
	            <thead>
	                <tr>
	                    <th width="70%" class="text-center">Description</th>
	                    <th width="15%" class="text-center">Score 1</th>
	                    <th width="15%" class="text-center">Score 2</th>
	                </tr>
	            </thead>
	            <tbody>
		    		<form data-bind="submit: formSubmit">
	
		    			<?php foreach($cce_display as $form) {
		    				$evaluations = $this->cce_model->getwhere(['FacultyNo' => $faculty->FacultyNo, 'CycleNo' => $admin_data->CycleNo, 'SUCNo' => $admin_data->SUCNo, 'CCECode' => $form->CCECode])->current();
		    			
		    				if($evaluations) {
		    					if($evaluations->CCECode === $form->CCECode) {
		    						$score1 = $evaluations->ScoreeEval1;
		    						$score2 = $evaluations->ScoreeEval2;
		    					}else{
		    						$score1 = '';
		    						$score2 = '';
		    					}
		    				} else {
		    					$score1 = '';
		    					$score2 = '';
		    				}
		    			?>
		    				<tr>
		    					<td><?php echo "{$form->CodeDisplay} {$form->Description}"; ?></td>
		    					<td>
		    						<?php if($form->IsInput) {?>
		    							<?php $disabled = $userLevel === 2 ? 'disabled' : '' ?>
		    							<div class="fg-line">
			                                <input data-bind="facultyScore: score" data-user-num="<?php echo $this->session->get('evaluator')->ID; ?>" data-scoree-name="ScoreeEval1" data-cce-code="<?php echo $form->CCECode ?>" data-faculty-no="<?php echo $faculty->FacultyNo; ?>" data-suc-no="<?php echo $admin_data->SUCNo; ?>" data-cycle-no="<?php echo $admin_data->CycleNo; ?>" type="number" name="score1[]" min="0" step=".1" class="form-control" value="<?php echo $score1; ?>" <?php echo $disabled ?>>
			                            </div>
		    						<?php } ?>
		    					</td>
		    					<td>
		    						<?php if($form->IsInput AND $userLevel === 2) {?>
										<?php $disabled = $score1 ? '' : 'disabled';?>
										<div class="fg-line">
		                                    <input data-bind="facultyScore: score" data-scoree-name="ScoreeEval2" data-cce-code="<?php echo $form->CCECode ?>" data-faculty-no="<?php echo $faculty->FacultyNo; ?>" data-suc-no="<?php echo $admin_data->SUCNo; ?>" data-cycle-no="<?php echo $admin_data->CycleNo; ?>" type="number" name="score2[]" min="0" step=".1" class="form-control" value="<?php echo $score2; ?>" <?php echo $disabled ?>>
		                                </div>
		    						<?php } ?>
		    					</td>		
		    				</tr>
		    			<?php } ?>
		    			<tr>
		    				<td>
		    					<button type="submit" href="#" class="btn btn-primary btn-block">Save <?php echo $facultyFullname; ?> evaluation</button>
		    				</td>
		    				<td></td>
		    				<td></td>
		    			</tr>
		    		</form>
	    		</tbody>
	    	</table>
	    </div>
	</div>
</div>
<div class="col-md-6">
	<div class="card">
		<div class="card-header">
			<h2>Faculty Documents</h2>
		</div>
		<div class="card-body card-padding">
			<h1>TODO: add pdf view</h1>
			<?php var_dump($admin_data); ?>
		</div>
	</div>
</div>