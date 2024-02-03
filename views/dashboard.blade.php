<x-master>
    <div class="content-wrapper">
        <div class="row">
          <div class="col-md-12 grid-margin">
            <div class="row">
              <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                <h3 class="font-weight-bold">Welcome Admin</h3>
                <h6 class="font-weight-normal mb-0">All systems are running smoothly!</h6>
              </div>
              <div class="col-12 col-xl-4">
               <div class="justify-content-end d-flex">
                <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                  <button class="btn btn-sm btn-light bg-white" type="button"  aria-haspopup="true" aria-expanded="true">
                   <i class="mdi mdi-calendar"></i>{{ date('Y-m-d H:i:s') }}
                  </button>
                </div>
               </div>
              </div>
            </div>
          </div>
        </div>
          {{-- <div class="col-md-6 grid-margin stretch-card">
            <div class="card tale-bg">
              <div class="card-people mt-auto">
                <img src="/../images/dashboard/people.svg" alt="people">
                <div class="weather-info">
                  <div class="d-flex">
                    <div>
                      <h2 class="mb-0 font-weight-normal"><i class="icon-sun mr-2"></i>31<sup>C</sup></h2>
                    </div>
                    <div class="ml-2">
                      <h4 class="location font-weight-normal"></h4>
                      <h6 class="font-weight-normal"></h6>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div> --}}
            <div class="row">
              <div class="col-md-3 mb-4 stretch-card transparent">
                <div class="card card-tale">
                  <div class="card-body d-flex">
                    <img src="/../images/rating.png">
                    <div class="mx-3">
                    <p class="mb-4">Total Employees</p>
                    <p class="fs-30 mb-2"></p>
                </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3 mb-4 stretch-card transparent">
                <div class="card card-dark-blue">
                  <div class="card-body d-flex">
                    <img src="/../images/branch.png">
                    <div class="mx-3">
                    <p class="mb-4">Total Branches</p>
                    <p class="fs-30 mb-2"></p>
                </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3 mb-4 mb-lg-0 stretch-card transparent">
                <div class="card card-light-blue">
                  <div class="card-body d-flex">
                    <img src="/../images/salary.png">
                    <div class="mx-3">
                    <p class="mb-4">Total Chits</p>
                    <p class="fs-30 mb-2"></p>
                </div>
                  </div>
                </div>
              </div>
              <div class="col-md-3 stretch-card transparent">
                <div class="card card-light-danger">
                  <div class="card-body d-flex">
                    <img src="/../images/service.png">
                    <div class="mx-3">
                    <p class="mb-4">Number of Clients</p>
                    <p class="fs-30 mb-2"></p>
                </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="card mt-3 p-3 bg-white shadow-lg" style="box-shadow: 0 0 2px 2px">
                <table id="table_id" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>

                        </tr>
                    </tbody>
                </table>



            </div>


            </div>
</x-master>
