<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="../vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="../css/sb-admin.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<a class="navbar-brand mr-1" href="../index.jsp">Lost & Found System</a>

		<button class="btn btn-link btn-sm text-white order-1 order-sm-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars"></i>
		</button>

		<!-- Navbar Search -->
		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
			<div class="input-group">
				
			</div>
			
		</form>

		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">
		
					
			<!-- <li class="nav-item dropdown no-arrow mx-1"><a
				class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <span
					class="badge badge-danger">9+</span>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="alertsDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>-->
			<li class="nav-item dropdown no-arrow mx-1"><a
				class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-plus fa-lg"></i> 
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="messagesDropdown">
					<a style="color: green;" class="dropdown-item" href="../Item/Add_item.jsp"> <i class="fas fa-plus"></i> &nbsp Add Found Item</a> <a style="color: red;"
						class="dropdown-item" href="#"> <i class="fas fa-plus"></i> &nbsp Add Lost Item</a>
					
				</div></li>
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw fa-lg"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="User_profile.jsp"> <i class="fas fa-user"></i>
						&nbsp Profile
					</a> 
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal"> <i class="fas fa-sign-out-alt"></i> &nbsp Logout</a>
				</div></li>
		</ul>

	</nav>

        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="../index.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-list-ul"></i>
                        <span>Items</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Manage Items:</h6>
					<a class="dropdown-item" href="../index.jsp">All Items</a>  <a
						class="dropdown-item" href="../Item/Itemfound.jsp">Found Items </a>
					<a class="dropdown-item" href="../Item/Itemreturned.jsp">Returned
						Items</a> <a class="dropdown-item" href="#">Donated
						Items</a> <a class="dropdown-item" href="#">Void
						Items</a>

				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-cog"></i> <span>Settings</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Admin:</h6>
					<a class="dropdown-item" href="../Manage/Manage.jsp"><i
						class="fas fa-list-ul"></i> &nbsp Manage Items</a> <a
						class="dropdown-item" href="../User/Users.jsp"><i class="fas fa-users"></i>
						&nbsp Users</a> <a class="dropdown-item" href="../Storage/StorageLocations.jsp"><i
						class="fas fa-archive"></i> &nbsp Storage</a>

				</div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="charts.jsp">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Reports</span></a>
                </li>
                <!-- <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Pages</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Login Screens:</h6>
                        <a class="dropdown-item" href="login.jsp">Login</a>
                        <a class="dropdown-item" href="register.jsp">Register</a>
                        <a class="dropdown-item" href="forgot-password.jsp">Forgot Password</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Other Pages:</h6>
                        <a class="dropdown-item" href="404.jsp">404 Page</a>
                        <a class="dropdown-item" href="blank.jsp">Blank Page</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="charts.jsp">
                        <i class="fas fa-fw fa-chart-area"></i>
                        <span>Charts</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="tables.jsp">
                        <i class="fas fa-fw fa-table"></i>
                        <span>Tables</span></a>
                </li>-->
            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="../index.jsp" style="text-decoration: none;">Dashboard</a>
                        </li>
                         <li class="breadcrumb-item active"><a href="Users.jsp" style="text-decoration: none;">Users</a></li>
                      <li class="breadcrumb-item active">Edit-User</li>
                    </ol>

                    <!-- Icon Cards-->
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-primary  o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-fw fa-list"></i>
                                    </div>
                                    <div class="mr-5">205 All Items</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="../index.jsp">
                                    <span class="float-left">Show all items</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-warning o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-tags"></i>
                                    </div>
                                    <div class="mr-5">95 Found Items</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="Itemfound.jsp">
                                    <span class="float-left">Show all items</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-success o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">
                                        <i class="fas fa-exchange-alt"></i>
                                    </div>
                                    <div class="mr-5">52 Successfully returned</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="Itemreturned.jsp">
                                    <span class="float-left">Show all items</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-danger o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon" >
                                        <i class="fas fa-fw fa-life-ring"></i>
                                    </div>
                                    <style>
                                    	.card-body-icon:hover {
                                    		transition: all .5s ease-in-out; 
											transform: scale(1.5); 
										}
                                    </style>
                                    <div class="mr-5">13 Donated</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="#">
                                    <span class="float-left">Show all items</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Area Chart Example-->
                    <!-- <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-chart-area"></i>
                            Area Chart Example</div>
                        <div class="card-body">
                            <canvas id="myAreaChart" width="100%" height="30"></canvas>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div> -->

                    <!-- DataTables Example -->
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 mb-3">
                           
                        </div>
                        <div class="col-xl-6 col-sm-6 mb-6">
                            <div class="card mb-3">
                                <div class="card-header">
                                    <i class="fas fa-table"></i>
                                    Edit User
                                </div>
                                <form action="" style="margin-left: 20px; margin-right: 20px; margin-bottom: 20px; margin-top: 10px;">
                                    
                                    <div class="form-group">
                                            <label for="inputStorageID">User ID</label>
                                            <input type="text" class="form-control" id="user" placeholder="user Id" required readonly>
                                        </div>
                                   
                                        <div class="form-group">
                                        <label for="inputAddress2">Email</label>
                                        <input type="email" class="form-control" id="email" placeholder="Email" required>
                                    </div>
                                    <div class="form-group ">
                                            <label for="inputLocation">Hotel</label>
                                            
                                                
                                                <select class="form-control" id="HotelSelect">
                                                    <option>Hilton One</option>
                                                    <option>Hilton Next</option>
                                                    <option>Hilton Main</option>
                                                    
                                                </select>
                                            
                                        </div>
                                    <div class="form-group">
                                        <label for="inputLocation">Depratment</label>
                                            
                                                
                                                <select class="form-control" id="DepratmentSelect">
                                                    <option>AYS</option>
                                                    <option>Banguet</option>
                                                    <option>Finance</option>
                                                    <option>Guest Services</option>
                                                    <option>Room Reservation</option>
                                                </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress2"> Password</label>
                                        <input type="password" class="form-control" id="password" placeholder="Password" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress2">Confirm Password</label>
                                        <input type="password" class="form-control" id="C-password" placeholder="Confirm Password" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputState">User Type</label>
                                            <select id="inputState" class="form-control" required>
                                                <option  value="" selected>Choose...</option>
                                                <option value="Admin">Admin</option>
                                                <option value="Standard">Standard user</option>
                                            </select>
                                    </div>
                                   
	
	<div class="toggle">
		<input type="radio" name="Action" value="Active" id="ActionActive" checked="checked" />
		<label for="ActionActive">Active</label>
		<input type="radio" name="Action" value="Disable" id="ActionDisable" />
		<label for="ActionDisable">Disable</label>
	</div>
	
                         <style>
								/* TOGGLE STYLING */
								.toggle {
								  margin: 0 0 1.5rem;
								  box-sizing: border-box;
								  font-size: 0;
								  display: flex;
								  flex-flow: row nowrap;
								  justify-content: flex-start;
								  align-items: stretch;
								}
								.toggle input {
								  width: 0;
								  height: 0;
								  position: absolute;
								  left: -9999px;
								}
								.toggle input + label {
								  margin: 0;
								  padding: .75rem 2rem;
								  box-sizing: border-box;
								  position: relative;
								  display: inline-block;
								  border: solid 1px #DDD;
								  background-color: #FFF;
								  font-size: 1rem;
								  line-height: 100%;
								  font-weight: 60;
								  text-align: center;
								  box-shadow: 0 0 0 rgba(255, 255, 255, 0);
								  transition: border-color .15s ease-out,  color .25s ease-out,  background-color .15s ease-out, box-shadow .15s ease-out;
								  /* ADD THESE PROPERTIES TO SWITCH FROM AUTO WIDTH TO FULL WIDTH */
								  /*flex: 0 0 50%; display: flex; justify-content: center; align-items: center;*/
								  /* ----- */
								}
								.toggle input + label:first-of-type {
								  border-radius: 6px 0 0 6px;
								  border-right: none;
								}
								.toggle input + label:last-of-type {
								  border-radius: 0 6px 6px 0;
								  border-left: none;
								}
								.toggle input:hover + label {
								  border-color: #213140;
								}
								.toggle input:checked + label {
								  background-color: #4B9DEA;
								  color: #FFF;
								  box-shadow: 0 0 10px rgba(102, 179, 251, 0.5);
								  border-color: #4B9DEA;
								  z-index: 1;
								}
								.toggle input:focus + label {
								  outline: dotted 1px #CCC;
								  outline-offset: .45rem;
								}
								@media (max-width: 800px) {
								  .toggle input + label {
								    padding: .75rem .25rem;
								    flex: 0 0 50%;
								    display: flex;
								    justify-content: center;
								    align-items: center;
								  }
								}
                         </style>
                			
                                    
                                    
                                    
                                    <button type="submit" class="btn btn-primary">Save Changers</button>
                                </form>

                                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                           
                        </div>


                    </div>
                    <!-- /.container-fluid -->

                    <!-- Sticky Footer -->
                    <footer class="sticky-footer">
                        <div class="container my-auto">
                            <div class="copyright text-center my-auto">
                                <span>Copyright � Your Website 2019</span>
                            </div>
                        </div>
                    </footer>

                </div>
                <!-- /.content-wrapper -->

            </div>
            <!-- /#wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>

            <!-- Logout Modal-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">�</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <a class="btn btn-primary" href="Login.jsp">Logout</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript-->
            <script src="../vendor/jquery/jquery.min.js"></script>
            <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

            <!-- Core plugin JavaScript-->
            <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Page level plugin JavaScript-->
            <script src="../vendor/chart.js/Chart.min.js"></script>
            <script src="../vendor/datatables/jquery.dataTables.js"></script>
            <script src="../vendor/datatables/dataTables.bootstrap4.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="../js/sb-admin.min.js"></script>

            <!-- Demo scripts for this page-->
            <script src="../js/demo/datatables-demo.js"></script>
            <script src="../js/demo/chart-area-demo.js"></script>
            

</body>
</html>