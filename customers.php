<style>
.table {
    border: none;
}

.table-definition thead th:first-child {
    pointer-events: none;
    background: white;
    border: none;
}

.table td {
    vertical-align: middle;
}

.page-item > * {
    border: none;
}

.custom-checkbox {
  min-height: 1rem;
  padding-left: 0;
  margin-right: 0;
  cursor: pointer; 
}
  .custom-checkbox .custom-control-indicator {
    content: "";
    display: inline-block;
    position: relative;
    width: 30px;
    height: 10px;
    background-color: #818181;
    border-radius: 15px;
    margin-right: 10px;
    -webkit-transition: background .3s ease;
    transition: background .3s ease;
    vertical-align: middle;
    margin: 0 16px;
    box-shadow: none; 
  }
    .custom-checkbox .custom-control-indicator:after {
      content: "";
      position: absolute;
      display: inline-block;
      width: 18px;
      height: 18px;
      background-color: #f1f1f1;
      border-radius: 21px;
      box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.4);
      left: -2px;
      top: -4px;
      -webkit-transition: left .3s ease, background .3s ease, box-shadow .1s ease;
      transition: left .3s ease, background .3s ease, box-shadow .1s ease; 
    }
  .custom-checkbox .custom-control-input:checked ~ .custom-control-indicator {
    background-color: #84c7c1;
    background-image: none;
    box-shadow: none !important; 
  }
    .custom-checkbox .custom-control-input:checked ~ .custom-control-indicator:after {
      background-color: #84c7c1;
      left: 15px; 
    }
  .custom-checkbox .custom-control-input:focus ~ .custom-control-indicator {
    box-shadow: none !important; 
  }
</style>
    <main class="container pt-5">
        <div class="card mb-5">
        <?php if($this->session->flashdata('success')){ ?>
            <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <?php echo $this->session->flashdata('success'); ?>
            </div>
        <?php }else if($this->session->flashdata('error')){  ?>
            <div class="alert alert-danger">
                <a href="#" class="close" data-dismiss="alert">&times;</a>
                <?php echo $this->session->flashdata('error'); ?>
            </div>
        <?php } ?>
            <div class="card-header">
              <h4>Customers</h4>
              <a href="<?php echo base_url();?>main/add_customers"><button class="pull-right btn btn-success">+ Add</button></a><br />
            </div>
            <div class="card-block p-0">
                <table class="table table-bordered table-sm m-0" id="table">
                    <thead class="" style="background-color:white;">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Company</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Active</th>
                            <th>Date Created</th>
                        </tr>
                    </thead>
                    <tbody>
                      <?php foreach($customers as $key){ ?>
                          <tr>
                              <td><?php echo $key->id; ?></td>
                              <td><?php echo $key->name; ?></td>
                              <td><?php echo $key->company; ?></td>
                              <td><?php echo $key->email; ?></td>
                              <td><?php echo $key->mobile; ?></td>
                              <td>
                                <label class="custom-control custom-checkbox">
                                    <input style="display:none;" type="checkbox" id="isActive" onclick="manageActive(this)" class="custom-control-input">
                                    <span class="custom-control-indicator"></span>
                                </label>
                              </td>
                              <td><?php echo $key->created; ?></td>
                              
                          </tr>
                      <?php } ?>
                    </tbody>
                    <tfoot style="display:none;">
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Company</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Date Created</th>
                            <th>Action</th>
                        </tr>
                  </tfoot>
                </table>
            </div>
        </div>
    </main>
<script>

$(document).ready(function() {
    $('#table').DataTable();
} );

function manageActive(val)
{
  //alert('ok');

  
  
  // $.ajax({

  //       url: '<?php echo base_url(); ?>main/manageActive',
  //       type: 'post',
  //       data: {},
  //       success: function(data){
  //           var val = $.parseJSON(data);
            
  //       },
  //       error: function(XMLHttpRequest, textStatus, errorThrown) 
  //       {
  //           alert("some error");
  //       }
  //   });
}

</script>