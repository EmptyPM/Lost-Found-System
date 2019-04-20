<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin - Dashboard</title>

<!-- Custom fonts for this template-->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="../vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

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
					<a class="dropdown-item" href="../User/User_profile.jsp"> <i class="fas fa-user"></i>
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
			<li class="nav-item active"><a class="nav-link" href="../index.jsp">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span>
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="pagesDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-list-ul"></i> <span>Items</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="pagesDropdown">
					<h6 class="dropdown-header">Manage Items:</h6>
					<a class="dropdown-item" href="../index.jsp">All Items</a> <a
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
						&nbsp Users</a> <a class="dropdown-item" href="StorageLocations.jsp"><i
						class="fas fa-archive"></i> &nbsp Storage</a>

				</div></li>
			<li class="nav-item"><a class="nav-link" href="#">
					<i class="fas fa-fw fa-chart-area"></i> <span>Reports</span>
			</a></li>
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
					<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
					<li class="breadcrumb-item active">Storage Locations</li>
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
                                <a class="card-footer text-white clearfix small z-1" href="../Item/Itemfound.jsp">
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
                                <a class="card-footer text-white clearfix small z-1" href="../Item/Itemreturned.jsp">
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
					<div class="col-xl-8 col-sm-6 mb-8">
						<div class="card col-mb-3">
							<div class="card-header">
								<i class="fas fa-table"></i> Storage Locations Table
							</div>
							
							<div class="card-body">
                                
                                <div class="table-responsive">
                                <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">
                                    <thead class="thead-dark">
                                        <tr>
                                            <th>SL_ID</th>
                                            <th>Name</th>
                                            
                                            <th>Description</th>
                                            <th>Status</th>
                                            
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>SL_ID</th>
                                            <th>Name</th>
                                            
                                            <th>Description</th>
                                            <th>Status</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>SL_001</td>
                                            <td>Building 1</td>
                                            
                                            
                                            <td>Description....</td>
                                            <td><button type="button" class="btn btn-primary btn-sm"><a href="StorageLocations_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i>Edit</a></button>
                                              <button type="button" class="btn btn-danger btn-sm">
												<i class="fas fa-trash-alt"></i>
											</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>SL_002</td>
                                            <td>Building 2</td>
                                            
                                            
                                            <td>Description....</td>
                                            <td><button type="button" class="btn btn-primary btn-sm"><a href="StorageLocations_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i>Edit</a></button>
                                              <button type="button" class="btn btn-danger btn-sm">
												<i class="fas fa-trash-alt"></i>
											</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>SL_003</td>
                                            <td>Building 3</td>
                                            
                                            
                                            <td>Description....</td>
                                            <td><button type="button" class="btn btn-primary btn-sm"><a href="StorageLocations_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i>Edit</a></button>
                                              <button type="button" class="btn btn-danger btn-sm">
												<i class="fas fa-trash-alt"></i>
											</button></td>
                                        </tr>
                                        <tr>
                                            <td>SL_004</td>
                                            <td>Cabinet Storage</td>
                                            
                                            
                                            <td>Description....</td>
                                            <td><button type="button" class="btn btn-primary btn-sm"><a href="StorageLocations_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i>Edit</a></button>
                                              <button type="button" class="btn btn-danger btn-sm">
												<i class="fas fa-trash-alt"></i>
											</button></td>
                                        </tr>
                                        <tr>
                                            <td>SL_005</td>
                                            <td>LP</td>
                                            
                                           
                                            <td>Description....</td>
                                            <td><button type="button" class="btn btn-primary btn-sm"><a href="StorageLocations_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i>Edit</a></button>
                                              <button type="button" class="btn btn-danger btn-sm">
												<i class="fas fa-trash-alt"></i>
											</button></td>
                                        </tr>
                                        
                                        

                                    </tbody>
                                </table>
                            </div>
                                </div>
							
							

						<div class="card-footer small text-muted">Updated yesterday
							at 11:59 PM</div>
					</div>
				</div>
				<div class="col-xl-4 col-sm-6 mb-4">
					<div class="card mb-3">
						<div class="card-header">
							<i class="fas fa-table"></i> Add new Storage Locations
						</div>
						<form action="../storage_add_action"
							style="margin-left: 20px; margin-right: 20px; margin-bottom: 20px; margin-top: 10px;">
							
							<div class="form-group">
                                            <label for="inputEmail4">Storage ID</label>
                                            <input type="text" class="form-control" id="storage_id" placeholder="Storage ID" name="depId" required>
                                        </div>
							
							<div class="form-group">
								<label for="inputEmail4">Name</label> <input type="text"
									class="form-control" id="storage_name" placeholder="Storage Name"
									required>
							</div>
							<div class="form-group">
								<label for="Description">Description</label>
								<textarea class="form-control" rows="5" id="Description"
									required >Description.</textarea>
							</div>




							<button type="submit" class="btn btn-primary">Add
								Storage</button>
						</form>

						<div class="card-footer small text-muted">Updated yesterday
							at 11:59 PM</div>
					</div>
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
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">�</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="../User/Login.jsp">Logout</a>
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