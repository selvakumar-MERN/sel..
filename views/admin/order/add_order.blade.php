<x-master>
    <div class="p-4">
            <div class="card shadow-lg bg-white p-3">
              <div class="card-body">
                <div class="d-flex my-3">
                <h3>Create Order</h3>
                <span class="mx-4"><a href="{{route('admin.order.list')}}">Order List</a></span>
            </div>
            <form method="POST" action="">
                @csrf
                <h3>Party</h3>
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label >Party Name</label>
                    <input type="text" name="name" class="form-control" id="inputEmail4" placeholder="Name">
                  </div>
                  <div class="form-group col-md-4">
                    <label for="inputPassword4">Party Phone</label>
                    <input type="text" name="phone" class="form-control" id="inputPassword4" placeholder="Mobile Number">
                  </div>
                  <div class="form-group col-md-4">
                    <label for="inputAddress">Estimated Gold Weight</label>
                    <input type="text" name="goldweight" class="form-control" placeholder="Gold Weight">
                  </div>
                </div>

                <h4>Color Stone <button class="mt-2" style="border: none;border-radius:0.5rem"><i class="bi bi-plus"></i><span style="font-size: 15px">Add new</span></i></button></h4>


                <div id="colorstonearea">
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="inputCity">Color Stone</label>
                    <select type="text" name="colorstone" class="form-control">
                       {{--  @foreach ($branchd as $branch ) --}}

                    <option>1</option>
                   {{--  @endforeach --}}
                    </select>
                  </div>
                  <div class="form-group col-md-4">
                    <label >Qty</label>
                    <input type="text" name='quantity' class="form-control" id="inputZip">
                  </div>
                  <div class="form-group col-md-3">
                    <label >Weight</label>
                    <input type="text" name='quantity' class="form-control" id="inputZip">
                  </div>
                  <div class="form-group col-md-1 mt-4 pt-1">
                         <button class="btn btn-danger py-3 px-3"><i class="bi bi-trash-fill"></i></button>
                  </div>
                </div>
            </div>
                <h4>Stone Details</h4>
                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="inputZip">No. Of Pics</label>
                        <input type="text" name='stonepics' class="form-control" id="inputZip">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputZip">Total Weight</label>
                        <input type="text" name='stoneweight' class="form-control" id="inputZip">
                      </div>
                </div>
                <h4>Diamond Details</h4>
                <div class="form-row">

                    <div class="form-group col-md-6">
                        <label for="inputZip">No. Of Pics</label>
                        <input type="text" name='diamondpics' class="form-control" id="inputZip">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputZip">Total Weight</label>
                        <input type="text" name='diamondweight' class="form-control" id="inputZip">
                      </div>
                </div>
                <hr class="mb-4">
                <div>
                <h3>Issue Order</h3>
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label >Due Date</label>
                      <input type="date" name="issuesate" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="inputPassword4">No. of item issued</label>
                      <input type="text" name="phone" class="form-control" id="inputPassword4" placeholder="Mobile Number">
                    </div>
                  </div>
                  <h4>Gold Details</h4>
                  <div class="form-row">
                    <div class="form-group col-md-3">
                      <label >Gold</label>
                      <input type="date" name="issuesate" class="form-control">
                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputPassword4">Gms</label>
                      <input type="text" name="phone" class="form-control" id="inputPassword4" placeholder="Mobile Number">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="inputPassword4">Purity</label>
                        <input type="text" name="phone" class="form-control" id="inputPassword4" placeholder="Mobile Number">
                      </div>
                      <div class="form-group col-md-3">
                        <label for="inputPassword4">Touch form No</label>
                        <input type="text" name="phone" class="form-control" id="inputPassword4" placeholder="Mobile Number">
                      </div>
                  </div>

                    <h4>Color Stone</h4>


                    <div id="colorstonearea">
                    <div class="form-row">
                      <div class="form-group col-md-4">
                        <label for="inputCity">Color Stone</label>
                        <select type="text" name="colorstone" class="form-control">
                           {{--  @foreach ($branchd as $branch ) --}}

                        <option>1</option>
                       {{--  @endforeach --}}
                        </select>
                      </div>
                      <div class="form-group col-md-3">
                        <label >Qty</label>
                        <input type="text" name='quantity' class="form-control" id="inputZip">
                      </div>
                      <div class="form-group col-md-3">
                        <label >Weight</label>
                        <input type="text" name='quantity' class="form-control" id="inputZip">
                      </div>
                      <div class="form-group col-md-2">
                             <button></button>
                      </div>
                    </div>
                </div>
                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label >Catalogue Name</label>
                    <input type="text" name="issuesate" class="form-control">
                  </div>
                  <div class="form-group col-md-4">
                    <label for="inputCity">Gold karat</label>
                    <select type="text" name="colorstone" class="form-control">
                       {{--  @foreach ($branchd as $branch ) --}}

                    <option>1</option>
                   {{--  @endforeach --}}
                    </select>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="inputCity">Setting</label>
                    <select type="text" name="colorstone" class="form-control">
                       {{--  @foreach ($branchd as $branch ) --}}

                    <option>1</option>
                   {{--  @endforeach --}}
                    </select>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputCity">Type of Setting</label>
                        <select type="text" name="colorstone" class="form-control">
                           {{--  @foreach ($branchd as $branch ) --}}

                        <option>1</option>
                       {{--  @endforeach --}}
                        </select>
                      </div>
                    <div class="form-group col-md-4">
                      <label for="inputCity">Rhodium</label>
                      <select type="text" name="colorstone" class="form-control">
                         {{--  @foreach ($branchd as $branch ) --}}

                      <option>1</option>
                     {{--  @endforeach --}}
                      </select>
                    </div>
                    <div class="form-group col-md-4">
                      <label for="inputCity">Gold Color</label>
                      <select type="text" name="colorstone" class="form-control">
                         {{--  @foreach ($branchd as $branch ) --}}

                      <option>1</option>
                     {{--  @endforeach --}}
                      </select>
                      </div>
                      <div class="form-group col-md-4">
                        <label for="inputCity">Est.Weight</label>
                        <select type="text" name="colorstone" class="form-control">
                           {{--  @foreach ($branchd as $branch ) --}}

                        <option>1</option>
                       {{--  @endforeach --}}
                        </select>
                        </div>
                  </div>
                  <h4>Design Dimension</h4>
                  <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="inputCity">Dimension</label>
                        <select type="text" name="colorstone" class="form-control">
                           {{--  @foreach ($branchd as $branch ) --}}

                        <option>1</option>
                       {{--  @endforeach --}}
                        </select>
                      </div>
                    <div class="form-group col-md-4">
                      <label for="inputCity">length</label>
                      <select type="text" name="colorstone" class="form-control">
                         {{--  @foreach ($branchd as $branch ) --}}

                      <option>1</option>
                     {{--  @endforeach --}}
                      </select>
                    </div>
                    <div class="form-group col-md-4">
                      <label for="inputCity">Value</label>
                      <input type="text" name="issuesate" class="form-control">
                      </div>

                  </div>
                  <h4>Item Details</h4>
                  <div class="form-row">
                    <div class="form-group col-md-3">
                        <label for="inputCity">Item</label>
                        <input type="text" name="issuesate" class="form-control">
                      </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">Dia.wtg</label>
                      <input type="text" name="issuesate" class="form-control">
                    </div>
                    <div class="form-group col-md-3">
                      <label for="inputCity">Col.St</label>
                      <input type="text" name="issuesate" class="form-control">
                      </div>
                      <div class="form-group col-md-3">
                        <label for="inputCity">File</label>
                        <input type="file" name="file" class="form-control">
                        </div>

                  </div>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
              </div>
            </div>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
           $(document).ready(function () {
               $('#colorstone').on('click',function (e) {
                e.preventDefault();
                      $('#colorstonearea').append('<div class="form-row"><div class="form-group col-md-4"><label >Color Stone</label><select type="text" name="colorstone" class="form-control">{{--  @foreach ($branchd as $branch ) --}}<option>1</option>{{--  @endforeach --}}</select></div><div class="form-group col-md-3"><label >Qty</label><input type="text" name='quantity' class="form-control"></div><div class="form-group col-md-3"><label >Weight</label><input type="text" name='quantity' class="form-control"></div><div class="form-group col-md-2"><button></button></div></div>')

             })

         /*   $('#product-area').on('click','#deletebutton',function(e){
            $(this).parent().parent('div').remove()

             }) */
             })

   </script>



    </x-master>


