<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title></title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="/../vendors/feather/feather.css">
  <link rel="stylesheet" href="/../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="/../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="/../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="/../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="/../js/select.dataTables.min.css">
  <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" integrity="sha384-4LISF5TTJX/fLmGSxO53rV4miRxdg84mZsxmO8Rx5jGtp/LbrixFETvWa5a6sESd" crossorigin="anonymous">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="/../css/vertical-layout-light/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/fontawesome.min.css" integrity="sha512-d0olNN35C6VLiulAobxYHZiXJmq+vl+BGIgAxQtD5+kqudro/xNMvv2yIHAciGHpExsIbKX3iLg+0B6d0k4+ZA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- endinject -->
  <link rel="shortcut icon" href="/../images/logo-mi.png" />
  <style>
    label{
        color: #810634;
    }
  </style>

</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row" >
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center" style="background-color: #810634">
        <a class="navbar-brand brand-logo mr-5" href="{{-- {{route('dashboard')}} --}}"><img src="/../images/logo-lat.png" class="mr-2" alt="logo" /></a>
        <a class="navbar-brand brand-logo-mini" href="{{-- {{route('dashboard')}} --}}"><img src="/../images/logo-mi.png" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end" style="background-color: #810634">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search d-none d-lg-block">
            {{-- <div class="input-group">
              <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                <span class="input-group-text" id="search">
                  <i class="icon-search"></i>
                </span>
              </div>
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
            </div> --}}
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="/../images/faces/face28.jpg" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="{{-- {{route('admin.logout')}} --}}">
                <i class="ti-power-off text-primary"></i>
                Logout
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->

      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar" style="background-color: #810634">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="{{-- dashboard --}}">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title" style="font-size: 18px;color:white">Dashboard</span>
            </a>
          </li>
          <li class="nav-item" >
            <a class="nav-link {{-- {{(request()->is('admin/branch/list')) ? 'active' : ''}} --}}" href="{{route('admin.order.list')}}"  >
                <i class="bi bi-people menu-icon"></i>
              <span class="menu-title" style="font-size: 18px;color:white">Orders</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{-- {{(request()->is('admin/branch/list')) ? 'active' : ''}} --}}" href="{{-- {{route('admin.branch.list')}} --}}"  >
                <i class="bi bi-house menu-icon"></i>
              <span class="menu-title" style="font-size: 18px;color:white">Smiths</span>

            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{-- {{(request()->is('admin/chit/list')) ? 'active' : ''}} --}}" href="{{-- {{route('admin.chit.list')}} --}}"  >
              <i class="icon-columns menu-icon"></i>
              <span class="menu-title" style="font-size: 18px;color:white">Admin</span>

            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{-- {{(request()->is('admin/enquiry/list')) ? 'active' : ''}} --}}" href="{{-- {{route('admin.enquiry.list')}} --}}"  >
                <i class="bi bi-info-square menu-icon"></i>
              <span class="menu-title" style="font-size: 18px;color:white">Packages</span>

            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link {{-- {{(request()->is('admin/customer/list')) ? 'active' : ''}} --}}"  href="{{-- {{route('admin.customer.list')}} --}}" >
                <i class="bi bi-person menu-icon"></i>
              <span class="menu-title" style="font-size: 18px;color:white">Customers</span>

            </a>
          </li>

        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel" style="background-color: whitesmoke">
        <div class="section" style="min-height: 640px">
           {{$slot}}
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer d-flex justify-content-between">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2024.<a href="" target="_blank">Shri Sakthi kannan chits pvt. ltd</a> All rights reserved.</span>
          </div>
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Powered by <a href="https://www.greenmainfotech.com" target="_blank" style="color:  #ffa426">Greenma Infotech</a></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="/../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="/../vendors/chart.js/Chart.min.js"></script>
  <script src="/../vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="/../vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="/../js/dataTables.select.min.js"></script>
  <script src="/../js/printThis.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>


  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="/../js/off-canvas.js"></script>
  <script src="/../js/hoverable-collapse.js"></script>
  <script src="/../js/template.js"></script>
  <script src="/../js/settings.js"></script>
  <script src="/../js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="/../js/dashboard.js"></script>
  <script src="/../js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->
  <script>
    $(document)
  .ready(function () {
    $('#table_id')
      .DataTable({
        dom: 'Bfrtip',
            buttons: [
                { extend: 'copy', className: 'btn btn-primary px-3 py-2' },
                { extend: 'csv', className: 'btn btn-info px-3 py-2' },
               { extend: 'excel', className: 'btn btn-secondary px-3 py-2' },
                { extend: 'pdf', className: 'btn btn-success px-3 py-2' },
                { extend: 'print', className: 'btn btn-warning px-3 py-2' }
            ]
      });

      $('#cardd1-btn').click(function(){
        $('#cardd-1').printThis()
      });
      $('#cardd2-btn').click(function(){
        $('#cardd-2').printThis()
      });
      $('#cardd3-btn').click(function(){
        $('#cardd-3').printThis()
      });
      $('#cardd4-btn').click(function(){
        $('#cardd-4').printThis()
      });
  });

  </script>


   <script>
    // success message popup notification
    @if(session()->has('success'))
    toastr.success("{{ session()->get('success') }}");
    @endif

    // info message popup notification
    @if(session()->has('info'))
    toastr.info("{{ session()->get('info') }}");
    @endif

    // warning message popup notification
    @if(session()->has('warning'))
    toastr.warning("{{ session()->get('warning') }}");
    @endif

    // error message popup notification
    @if(session()->has('error'))
    toastr.error("{{ session()->get('error') }}");
    @endif
</script>




</body>

</html>

