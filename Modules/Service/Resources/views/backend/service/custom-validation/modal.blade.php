

  <div class="modal fade" id="makeFieldModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalTitle">Modal title</h5>

        </div>
        <div class="modal-body">
          <form action="{{route('backend.service.createFormFields',['id'=>$$module_name_singular])}}" method="post">
                @csrf
                <div id="setContent"></div>

        </div>
        <div class="modal-footer">
          <button type="button" onclick="$('#makeFieldModal').modal('hide');" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </form>
        </div>
      </div>
    </div>
  </div>
