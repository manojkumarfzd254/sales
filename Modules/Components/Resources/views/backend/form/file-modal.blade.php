

<!-- Button trigger modal -->


  <!-- Modal -->
  <div class="modal fade" id="uploadFileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Upload Files</h5>
          <a href="javascript:closeModal()" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </a>
        </div>
        <form action="{{route('backend.form.files_data',['form_id'=>$$module_name_singular->id])}}" method="post" enctype="multipart/form-data">
            @csrf
        <div class="modal-body">
            <div class="row">
                <div class="col-md-12">
                    <label for="Product Name">Assest Files (can attach more than one):</label>
                    <br />
                        <input type="file" name="file[]" multiple="true" class="js-uploadFile form-control" id="uploadFile" data-maxsize="2147483648" accept="image/*,.csv,.zip,.rar,.doc,.docx,.xls,.xlsx,.xml,.lic,.xlsx,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.ms-excel,text/plain,.pdf,application/rtf"  required="" multiple>
                        <br /><br />


                </div>
                <div class="col-md-9">
                    <span id="uploadFile-info"></span>
                </div>
                {{-- <div class="col-md-12">
                    <p class="help-block" id="uploadFile-status">Allowed filetypes are png, gif, jpg, jpeg, doc, docx, pdf, xls, xlsx, txt, lic, xml, zip, rtf and rar. Max upload size allowed is 2G.</p>
                </div> --}}

                <div class="col-md-12">
                    <textarea class="form-control" placeholder="Notes (Optional)" rows="3" aria-label="file" name="description" cols="50"></textarea>
                </div>
            </div>
        </div>
        <div class="modal-footer">
          {{-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> --}}
          <a href="javascript:closeModal()" class="btn btn-secondary" data-dismiss="modal">Close</a>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
    </form>
      </div>
    </div>
  </div>
