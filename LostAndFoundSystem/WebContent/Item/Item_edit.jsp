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
			<div class="input-group"></div>

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
					<a style="color: green;" class="dropdown-item" href="Add_item.jsp">
						<i class="fas fa-plus"></i> &nbsp Add Found Item
					</a> <a style="color: red;" class="dropdown-item" href="#"> <i
						class="fas fa-plus"></i> &nbsp Add Lost Item
					</a>

				</div></li>
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw fa-lg"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="../User/User_profile.jsp"> <i
						class="fas fa-user"></i> &nbsp Profile
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal"> <i class="fas fa-sign-out-alt"></i>
						&nbsp Logout
					</a>
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
					<a class="dropdown-item" href="../index.jsp">All Items</a>  <a
						class="dropdown-item" href=Itemfound.jsp>Found Items </a>
					<a class="dropdown-item" href="Itemreturned.jsp">Returned
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
					<li class="breadcrumb-item active">Item-Edit</li>
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
							<a class="card-footer text-white clearfix small z-1"
								href="../index.jsp"> <span class="float-left">Show all
									items</span> <span class="float-right"> <i
									class="fas fa-angle-right"></i>
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
							<a class="card-footer text-white clearfix small z-1"
								href="Itemfound.jsp"> <span class="float-left">Show
									all items</span> <span class="float-right"> <i
									class="fas fa-angle-right"></i>
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
							<a class="card-footer text-white clearfix small z-1"
								href="Itemreturned.jsp"> <span class="float-left">Show
									all items</span> <span class="float-right"> <i
									class="fas fa-angle-right"></i>
							</span>
							</a>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 mb-3">
						<div class="card text-white bg-danger o-hidden h-100">
							<div class="card-body">
								<div class="card-body-icon">
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
								<span class="float-left">Show all items</span> <span
								class="float-right"> <i class="fas fa-angle-right"></i>
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
					<div class="col-xl-12 col-sm-12 col-mb-12 col-xs-12">
						<div class="card col-mb-3">


							<div class="card-body">czc</div>




						</div>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-xl-6 col-sm-6 mb-6" style="margin-top: 1%; margin-bottom: 1%;">
						<div class="card col-mb-3" style=" margin-bottom: 1%;">
							<div class="card-header">
								<i class="fas fa-cubes"></i> Item Details
							</div>

							<div class="card-body">
								<h6></h6>

							</div>




						</div>
						
						<div class="card col-mb-3" style="margin-top: 1%; margin-bottom: 1%;">
							<div class="card-header">
								<i class="far fa-check-square"></i> Action
							</div>

							<div class="card-body">
								<button type="button" class="btn btn-warning" style="margin-top: 1%; margin-bottom: 1%;"><i class="fas fa-tasks"></i> Pending</button>
								<button type="button" class="btn btn-success" style="margin-top: 1%; margin-bottom: 1%;"><i class="fas fa-exchange-alt"></i> Mark as returned</button>
								<button type="button" class="btn btn-secondary" style="margin-top: 1%; margin-bottom: 1%;"><i class="fas fa-dice-d6"></i> Void</button>
								<button type="button" class="btn btn-danger" style="margin-top: 1%; margin-bottom: 1%;"><i class="fas fa-gift"></i> Donated</button>
								

							</div>




						</div>
						<div class="card col-mb-3" style="margin-top: 1%; margin-bottom: 1%;">
							<div class="card-header">
								<i class="fas fa-user-tie"></i> Owner Details
							</div>

							
								<form action=""
								style="margin-left: 20px; margin-right: 20px; margin-bottom: 20px; margin-top: 10px;">
								<div class="form-group">
                                        <label for="inputAddress">Owner Name</label>
                                        <input type="text" class="form-control" id="E_id" placeholder="Owner Name" required >
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress">Email</label>
                                        <input type="Email" class="form-control" id="E_id" placeholder="Email" required >
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress">Contact Number</label>
                                        <input type="text" class="form-control" id="E_id" placeholder="+94" required >
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary"><i class="far fa-edit"></i> Save</button>
								
								
								</form>
								

							




						</div>
					</div>

					<div class="col-xl-6 col-sm-6 mb-6" style="margin-top: 1%; margin-bottom: 1%;">
						<div class="card mb-3">
							<div class="card-header">
								<i class="far fa-edit"></i> Edit Item Details
							</div>
							<form action=""
								style="margin-left: 20px; margin-right: 20px; margin-bottom: 20px; margin-top: 10px;">


								<div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputEmail4">Ref #</label>
                                            <input type="text" class="form-control" id="fname" placeholder="Id" required readonly>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputPassword4">Date</label><br>
                                            <input  id="date" class="form-control" name="date" required readonly/>


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress">Item Name</label>
                                        <input type="text" class="form-control" id="E_id" placeholder="Item Name" required >
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputLocation">Item Category </label>
                                            
                                                
                                                <select class="form-control" id="ICategory">
                                                    <option>Jewellery</option>
                                                    <option>Electronic Item</option>
                                                    <option>Keys</option>
                                                    <option>Wallet/Purse</option>
                                                    <option>Clothing</option>
                                                </select>
                                            
                                        </div>
                                        <div class="form-group col-md-5">
                                            


                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputAddress2">Item Description</label>
                                        <textarea class="form-control" rows="5" id="comment"></textarea>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputLocation">Hotel</label>
                                            
                                                
                                                <select class="form-control" id="HotelSelect">
                                                    <option>Hilton One</option>
                                                    <option>Hilton Next</option>
                                                    <option>Hilton Main</option>
                                                    
                                                </select>
                                            
                                        </div>
                                        <div class="form-group col-md-6">
                                            


                                        </div>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputLocation">Location</label>
                                            
                                                
                                                <select class="form-control" id="LocationSelect">
                                                    <option>LOBBY</option>
                                                    <option>AL JOUD BALLROOM</option>
                                                    <option>BABIOLE</option>
                                                    <option>ROSE & CROWN</option>
                                                    <option>ROOM</option>
                                                </select>
                                            
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputPassword4">Room Number</label><br>
                                            <input type="number" class="form-control" id="Room_No" placeholder="Room Number" required readonly >


                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputAddress2"> Handover by </label>
                                            <input type="text" class="form-control" id="Handover_By" placeholder="Employee ID" required>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputLocation">Depratment</label>
                                            
                                                
                                                <select class="form-control" id="DepratmentSelect">
                                                    <option>AYS</option>
                                                    <option>Banguet</option>
                                                    <option>Finance</option>
                                                    <option>Guest Services</option>
                                                    <option>Room Reservation</option>
                                                </select>


                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="inputAddress2">Received by</label>
                                        <input type="text" class="form-control" id="received_by" placeholder="Employee ID" required>
                                    </div>
                                    <div class="form-group ">
                                            <label for="inputLocation">Storage Loaction</label>
                                            
                                                
                                                <select class="form-control" id="StorageSelect">
                                                    <option>AYS</option>
                                                    <option>Banguet</option>
                                                    <option>Finance</option>
                                                    <option>Guest Services</option>
                                                    <option>Room Reservation</option>
                                                </select>


                                        </div>
                                    <div class="form-group">
                                        <label for="inputState">Remark</label>
                                        <textarea class="form-control" rows="5" id="comment"></textarea>
                                    </div>




								<button type="submit" class="btn btn-primary"><i class="far fa-edit"></i> Update</button>
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
							<span>Copyright © Your Website 2019</span>
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
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
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