<x-master>

    <div class="row">
        <div class="col-lg-12 grid-margin stretch-card mx-3 mt-4 px-4">
            <div class="card">
              <div class="card-body">
                <div class="d-flex">
                <h4 class="card-title">Orders</h4>
                <span class="mx-4"><a href="{{route('admin.order.create')}}">Create Order</a></span>
               </div>
                <div class="table-responsive">
                  <table class="table table-striped" id="table_id">
                    <thead>
                      <tr class="text-center">
                        <th>
                          Order Id
                        </th>
                        <th>
                          Party Name
                        </th>
                        <th>
                          Party Phone
                        </th>
                        <th>
                          Estimated Gold weight
                        </th>
                        <th>

                          </th>
                        <th>
                          Address
                        </th>
                        <th>
                          Role
                        </th>
                        <th>
                            Actions
                          </th>
                      </tr>
                    </thead>
                    <tbody>
                      {{--   @foreach ($lists as $list) --}}


                      <tr class="text-center">
                        <td class="py-1">
                          {{--  {{$list->name}} --}}
                        </td>
                        <td>
                            <img src="../../images/faces/face1.jpg" alt="image"/>
                        </td>
                        <td>
                          {{--  {{$list->phone}} --}}
                        </td>
                        <td>
                     {{--    {{$list->branch->branch}} --}}
                        </td>
                        <td>
                           {{--  {{$list->password}} --}}
                            </td>
                        <td>
                          {{--   {{$list->address}} --}}
                        </td>
                        <td>
                          {{--    {{$list->role->name}} --}}
                          </td>
                          <td class="d-flex justify-content-center">

                            <form method="POST" {{-- action="{{route('admin.employee.delete',$list->id)}}" --}}>
                                @csrf
                                @method('delete')
                                <button class="btn btn-xs btn-danger py-1"><i class="ti-trash"></i> </button>
                           </form>
							<a href="{{-- {{route('admin.employee.edit',$list->id)}} --}}" class="btn btn-xs btn-success mx-2 py-1" ><i class="ti-pencil-alt"></i> </a>
                          </td>
                      </tr>
                  {{--     @endforeach --}}
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>

    </div>



</x-master>
