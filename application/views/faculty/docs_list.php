<div class="card">
    <div class="card-header">
        <h2>Documents List</h2>
    </div>

    <div class="card-body table-responsive card-padding">
        <table data-bind="datatable" class="table">
            <thead>
                <tr>
                    <th width="10">Filename</th>
                    <th width="90">Cycle No.</th>
                    <!-- <th width="30" class="text-center">Actions</th> -->
                </tr>
            </thead>
            <tbody>
                <?php foreach ($docs as $doc): ?>
                    <tr>
                        <td><?php echo $doc->DocsFilename; ?></td>
                        <td><?php echo $doc->CycelNo; ?></td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
</div>