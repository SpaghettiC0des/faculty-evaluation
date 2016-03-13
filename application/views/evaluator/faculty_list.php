<div class="card">
    <div class="card-header">
        <h2>Faculty List</h2>
    </div>

    <div class="card-body table-responsive card-padding">
        <table data-bind="datatable" class="table">
            <thead>
                <tr>
                    <th width="10">Number</th>
                    <th width="90">Name</th>
                    <th width="30" class="text-center">Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($faculties as $faculty) {?>
                    <tr>
                        <td><?php echo "{$faculty->FacultyNo}"; ?></td>
                        <td>
                            <strong><?php echo ucfirst("{$faculty->LName}, {$faculty->FName} {$faculty->MName}."); ?></strong>
                        </td>
                        <td class="text-center">
                            <a href="<?php echo url::site(); ?>evaluator/evaluate/<?php echo $faculty->FacultyNo; ?>" class="btn btn-primary btn-icon-text waves-effect">
                                <i class="zmdi zmdi-check"></i> 
                                 Evaluate
                            </a>

                            <button class="btn bgm-lightgreen btn-icon-text waves-effect">
                                <i class="zmdi zmdi-edit"></i> 
                                 Edit
                            </button>
                        </td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</div>