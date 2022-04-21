<%@page import="dinero.model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="apple-touch-icon" sizes="76x76" href="../../assets/img/apple-icon.png"> -->
<!--   <link rel="icon" type="image/png" href="../../assets/img/favicon.png"> -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    ProductForm
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/css/now-ui-dashboard.css?v=1.6.0" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body class=" sidebar-mini ">
	<div class="wrapper ">
    <div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        <a href="/productform.controller" class="simple-text logo-mini">
          <i class="fa-solid fa-house"></i>          
        </a>
        <a href="/productform.controller" class="simple-text logo-normal">
          Home
        </a>
        <div class="navbar-minimize">
          <button id="minimizeSidebar" class="btn btn-outline-white btn-icon btn-round">
            <i class="now-ui-icons text_align-center visible-on-sidebar-regular"></i>
            <i class="now-ui-icons design_bullet-list-67 visible-on-sidebar-mini"></i>
          </button>
        </div>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
        <div class="user">
          <div class="photo">
            <img src="../../assets/img/james.jpg" />
          </div>
          <div class="info">
            <a data-toggle="collapse" href="#collapseExample" class="collapsed">
              <span>
                James Amos
                <b class="caret"></b>
              </span>
            </a>
            <div class="clearfix"></div>
            <div class="collapse" id="collapseExample">
              <ul class="nav">
                <li>
                  <a href="#">
                    <span class="sidebar-mini-icon">MP</span>
                    <span class="sidebar-normal">My Profile</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="sidebar-mini-icon">EP</span>
                    <span class="sidebar-normal">Edit Profile</span>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <span class="sidebar-mini-icon">S</span>
                    <span class="sidebar-normal">Settings</span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <ul class="nav">
          <li>
            <a href="/productform.controller">
              <i class="fa-solid fa-dog"></i>
              <p>Product</p>
            </a>
          </li>
<!--           <li> -->
<!--             <a data-toggle="collapse" href="#pagesExamples"> -->
<!--               <i class="now-ui-icons design_image"></i> -->
<!--               <p> -->
<!--                 Pages <b class="caret"></b> -->
<!--               </p> -->
<!--             </a> -->
<!--             <div class="collapse " id="pagesExamples"> -->
<!--               <ul class="nav"> -->
<!--                 <li> -->
<!--                   <a href="../../examples/pages/pricing.html"> -->
<!--                     <span class="sidebar-mini-icon">P</span> -->
<!--                     <span class="sidebar-normal"> Pricing </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/pages/rtl.html"> -->
<!--                     <span class="sidebar-mini-icon">RS</span> -->
<!--                     <span class="sidebar-normal"> RTL Support </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/pages/invoice.html"> -->
<!--                     <span class="sidebar-mini-icon">I</span> -->
<!--                     <span class="sidebar-normal"> Invoice </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/pages/timeline.html"> -->
<!--                     <span class="sidebar-mini-icon">T</span> -->
<!--                     <span class="sidebar-normal"> Timeline </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/pages/login.html"> -->
<!--                     <span class="sidebar-mini-icon">L</span> -->
<!--                     <span class="sidebar-normal"> Login </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/pages/register.html"> -->
<!--                     <span class="sidebar-mini-icon">R</span> -->
<!--                     <span class="sidebar-normal"> Register </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/pages/lock.html"> -->
<!--                     <span class="sidebar-mini-icon">LS</span> -->
<!--                     <span class="sidebar-normal"> Lock Screen </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/pages/user.html"> -->
<!--                     <span class="sidebar-mini-icon">UP</span> -->
<!--                     <span class="sidebar-normal"> User Profile </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--               </ul> -->
<!--             </div> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a data-toggle="collapse" href="#componentsExamples"> -->
<!--               <i class="now-ui-icons education_atom"></i> -->
<!--               <p> -->
<!--                 Components <b class="caret"></b> -->
<!--               </p> -->
<!--             </a> -->
<!--             <div class="collapse " id="componentsExamples"> -->
<!--               <ul class="nav"> -->
<!--                 <li> -->
<!--                   <a href="../../examples/components/buttons.html"> -->
<!--                     <span class="sidebar-mini-icon">B</span> -->
<!--                     <span class="sidebar-normal"> Buttons </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/components/grid.html"> -->
<!--                     <span class="sidebar-mini-icon">G</span> -->
<!--                     <span class="sidebar-normal"> Grid System </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/components/panels.html"> -->
<!--                     <span class="sidebar-mini-icon">P</span> -->
<!--                     <span class="sidebar-normal"> Panels </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/components/sweet-alert.html"> -->
<!--                     <span class="sidebar-mini-icon">SA</span> -->
<!--                     <span class="sidebar-normal"> Sweet Alert </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/components/notifications.html"> -->
<!--                     <span class="sidebar-mini-icon">N</span> -->
<!--                     <span class="sidebar-normal"> Notifications </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/components/icons.html"> -->
<!--                     <span class="sidebar-mini-icon">I</span> -->
<!--                     <span class="sidebar-normal"> Icons </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/components/typography.html"> -->
<!--                     <span class="sidebar-mini-icon">T</span> -->
<!--                     <span class="sidebar-normal"> Typography </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--               </ul> -->
<!--             </div> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a data-toggle="collapse" href="#formsExamples"> -->
<!--               <i class="now-ui-icons files_single-copy-04"></i> -->
<!--               <p> -->
<!--                 Forms <b class="caret"></b> -->
<!--               </p> -->
<!--             </a> -->
<!--             <div class="collapse " id="formsExamples"> -->
<!--               <ul class="nav"> -->
<!--                 <li> -->
<!--                   <a href="../../examples/forms/regular.html"> -->
<!--                     <span class="sidebar-mini-icon">RF</span> -->
<!--                     <span class="sidebar-normal"> Regular Forms </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/forms/extended.html"> -->
<!--                     <span class="sidebar-mini-icon">EF</span> -->
<!--                     <span class="sidebar-normal"> Extended Forms </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/forms/validation.html"> -->
<!--                     <span class="sidebar-mini-icon">V</span> -->
<!--                     <span class="sidebar-normal"> Validation Forms </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/forms/wizard.html"> -->
<!--                     <span class="sidebar-mini-icon">W</span> -->
<!--                     <span class="sidebar-normal"> Wizard </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--               </ul> -->
<!--             </div> -->
<!--           </li> -->
<!--           <li class="active"> -->
<!--             <a data-toggle="collapse" href="#tablesExamples" aria-expanded="true"> -->
<!--               <i class="now-ui-icons design_bullet-list-67"></i> -->
<!--               <p> -->
<!--                 Tables <b class="caret"></b> -->
<!--               </p> -->
<!--             </a> -->
<!--             <div class="collapse  show " id="tablesExamples"> -->
<!--               <ul class="nav"> -->
<!--                 <li> -->
<!--                   <a href="../../examples/tables/regular.html"> -->
<!--                     <span class="sidebar-mini-icon">RT</span> -->
<!--                     <span class="sidebar-normal"> Regular Tables </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/tables/extended.html"> -->
<!--                     <span class="sidebar-mini-icon">ET</span> -->
<!--                     <span class="sidebar-normal"> Extended Tables </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li class="active"> -->
<!--                   <a href="../../examples/tables/datatables.net.html"> -->
<!--                     <span class="sidebar-mini-icon">DT</span> -->
<!--                     <span class="sidebar-normal"> DataTables.net </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--               </ul> -->
<!--             </div> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a data-toggle="collapse" href="#mapsExamples"> -->
<!--               <i class="now-ui-icons location_pin"></i> -->
<!--               <p> -->
<!--                 Maps <b class="caret"></b> -->
<!--               </p> -->
<!--             </a> -->
<!--             <div class="collapse " id="mapsExamples"> -->
<!--               <ul class="nav"> -->
<!--                 <li> -->
<!--                   <a href="../../examples/maps/google.html"> -->
<!--                     <span class="sidebar-mini-icon">GM</span> -->
<!--                     <span class="sidebar-normal"> Google Maps </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/maps/fullscreen.html"> -->
<!--                     <span class="sidebar-mini-icon">FM</span> -->
<!--                     <span class="sidebar-normal"> Full Screen Map </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--                 <li> -->
<!--                   <a href="../../examples/maps/vector.html"> -->
<!--                     <span class="sidebar-mini-icon">VM</span> -->
<!--                     <span class="sidebar-normal"> Vector Map </span> -->
<!--                   </a> -->
<!--                 </li> -->
<!--               </ul> -->
<!--             </div> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a href="../../examples/widgets.html"> -->
<!--               <i class="now-ui-icons objects_diamond"></i> -->
<!--               <p>Widgets</p> -->
<!--             </a> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a href="../../examples/charts.html"> -->
<!--               <i class="now-ui-icons business_chart-pie-36"></i> -->
<!--               <p>Charts</p> -->
<!--             </a> -->
<!--           </li> -->
<!--           <li> -->
<!--             <a href="../../examples/calendar.html"> -->
<!--               <i class="now-ui-icons media-1_album"></i> -->
<!--               <p>Calendar</p> -->
<!--             </a> -->
<!--           </li> -->
        </ul>
      </div>
    </div>
     
<!--      ============================================= -->
    <div class="main-panel" id="main-panel">
    
     <nav class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="/productform.controller">ProductTable</a>
          </div>
        </div>
      </nav>
    
	  <div class="panel-header">
      </div>
      <div class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h4 class="card-title">ProductTable</h4>
                <form style="display:inline;" action="createproduct.controller" method="get"> <!-- 新增按鈕 -->
				<button type="submit" class="btn btn-round btn-info btn-icon btn-sm like" name="create" value=""><i class="fas fa-solid fa-plus"></i></button>
				</form>
              </div>
              <div class="card-body">
                <div class="toolbar">
                  <!--        Here you can write extra buttons/actions for the toolbar              -->
                </div>
                <table id="datatable" class="table table-striped table-bordered" cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th>ID:</th>
                      <th>圖片:</th>
                      <th>名稱:</th>
                      <th>價格:</th>
                      <th>描述:</th>
                      <th>種類:</th>
                      <th>適合寵物類型:</th>
                      <th>庫存:</th>
                      <th class="disabled-sorting text-right">Actions</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>ID:</th>
                      <th>圖片:</th>
                      <th>名稱:</th>
                      <th>價格:</th>
                      <th>描述:</th>
                      <th>種類:</th>
                      <th>適合寵物類型:</th>
                      <th>庫存:</th>
                      <th class="disabled-sorting text-right">Actions</th>
                    </tr>
                  </tfoot>
                  <tbody>        
<%
List<Product> data = (List<Product>)request.getAttribute("productList");

//ProductBase64Dao p64dao = new ProductBase64Dao();
//<%=p64dao.selectById(p.getProdId())

for(Product p : data) {
%>      
                    <tr>
						<td><%=p.getProdId() %></td>
						<td>		
			               <img src="<%=p.getProdImg() %>" style="width:80px">
						</td>
						<td><%=p.getProdName() %></td>
						<td><%=p.getPrice() %></td>
						<td><%=p.getDescript() %></td>
						<td><%=p.getCategory() %></td>
						<td><%=p.getPetkind() %></td>
						<td><%=p.getStock() %></td>
                      <td class="text-right">
                        <a href="#" class="btn btn-round btn-info btn-icon btn-sm like"><i class="fas fa-heart"></i></a>
                        <form style="display:inline;" action="updateproduct.controller" method="get" > <!-- 修改按鈕 -->
                        	<input type="hidden" name="prodId" value="<%=p.getProdId() %>">
                        	<button type="submit" class="btn btn-round btn-warning btn-icon btn-sm edit"><i class="fa-solid fa-pen-to-square"></i></button>
                        </form>
<!--                         <i class="fas fa-solid fa-file-signature"> -->
                        <form:form style="display:inline;" action="deleteproduct.controller" method="post" modelAttribute="product"> <!-- 刪除按鈕 -->
    		 				 <form:hidden path="prodId" value="<%=p.getProdId() %>"/>
                        	<button type="submit" class="btn btn-round btn-danger btn-icon btn-sm remove"><i class="fas fa-times"></i></button>		  				
    					</form:form>
                      </td>
                    </tr>

<% }%>
                  </tbody>
                </table>
              </div><!-- end content-->
            </div><!--  end card  -->
          </div> <!-- end col-md-12 -->
        </div> <!-- end row -->
      </div>
     </div>
    </div> 

<!--   Core JS Files   -->
  <script src="/js/core/jquery.min.js"></script>
  <script src="/js/core/popper.min.js"></script>
  <script src="/js/core/bootstrap.min.js"></script>
  <script src="/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <script src="/js/plugins/moment.min.js"></script>
  <!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
  <script src="/js/plugins/bootstrap-switch.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="/js/plugins/sweetalert2.min.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="/js/plugins/jquery.validate.min.js"></script>
  <!--  Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="/js/plugins/bootstrap-datetimepicker.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/    -->
  <script src="/js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="/js/plugins/nouislider.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="/js/now-ui-dashboard.min.js?v=1.6.0" type="text/javascript"></script><!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      $('#datatable').DataTable({
        "pagingType": "full_numbers",
        "lengthMenu": [
          [10, 25, 50, -1],
          [10, 25, 50, "All"]
        ],
        responsive: true,
        language: {
          search: "_INPUT_",
          searchPlaceholder: "Search records",
        }

      });

      var table = $('#datatable').DataTable();

//       // Edit record
//       table.on('click', '.edit', function() {
//         $tr = $(this).closest('tr');
//         if ($($tr).hasClass('child')) {
//           $tr = $tr.prev('.parent');
//         }

//         var data = table.row($tr).data();
//         alert('You press on Row: ' + data[0] + ' ' + data[1] + ' ' + data[2] + '\'s row.');
//       });

      // Delete a record
//       table.on('click', '.remove', function(e) {
//         $tr = $(this).closest('tr');
//         if ($($tr).hasClass('child')) {
//           $tr = $tr.prev('.parent');
//         }
//         table.row($tr).remove().draw();
//         e.preventDefault();
//       });

      //Like record
      table.on('click', '.like', function() {
        alert('You clicked on Like button');
      });
    });
  </script>
</body>
</html>