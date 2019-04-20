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
					<a style="color: green;" class="dropdown-item" href="Add_item.jsp"> <i class="fas fa-plus"></i> &nbsp Add Found Item</a> <a style="color: red;"
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
                        <a class="dropdown-item" href="../index.jsp">All Items</a>
                        <a class="dropdown-item" href="Itemfound.jsp">Found Items </a>
                        <a class="dropdown-item" href="Itemreturned.jsp">Returned Items</a>
                       
                        <a class="dropdown-item" href="#">Donated Items</a>
                        <a class="dropdown-item" href="#">Void Items</a>

                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-cog"></i>
                        <span>Settings</span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Admin:</h6>
                        <a class="dropdown-item" href="../Manage/Manage.jsp"><i class="fas fa-list-ul"></i> &nbsp Manage Items</a>
                        <a class="dropdown-item" href="../User/Users.jsp"><i class="fas fa-users"></i> &nbsp Users</a>

                        <a class="dropdown-item" href="../Storage/StorageLocations.jsp"><i class="fas fa-archive"></i> &nbsp Storage</a>

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
                        <li class="breadcrumb-item active">Overview</li>
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
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-tags"></i>
                            Found Items</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered table-sm" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Ref#</th>
                                            <th>Date</th>
                                            <th>Item</th>
                                            <th>Hotel</th>
                                            <th>Location</th>
                                            <th>Status</th>
                                            
                                            <th>More</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Ref#</th>
                                            <th>Date</th>
                                            <th>Item</th>
                                            <th>Hotel</th>
                                            <th>Location</th>
                                            <th>Status</th>
                                            
                                            <th>More</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>01</td>
                                            <td>2011/04/25</td>
                                            <td>iPhone 6</td>
                                            <td>Room-555</td>
                                            <td>Hotel_001</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>02</td>
                                            <td>2011/07/25</td>
                                            <td>iPhone 8+</td>
                                            <td>LOBBY 30TH FLOOR</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>03</td>
                                            <td>2009/01/12</td>
                                            <td>volet purse</td>
                                            <td>Room-045</td>
                                            <td>Hotel_001</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>04</td>
                                            <td>2012/03/29</td>
                                            <td>head Phone</td>
                                            <td>Room-001</td>
                                            <td>Hotel_001</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>05</td>
                                            <td>2008/11/28</td>
                                            <td>Camera DSLR</td>
                                            <td>Room-032</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>06</td>
                                            <td>2012/12/02</td>
                                            <td>Camera Digital</td>
                                            <td>LOBBY 3TH FLOOR</td>
                                            <td>Hotel_001</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>07</td>
                                            <td>2012/08/06</td>
                                            <td>Pan Driver</td>
                                            <td>Room-041</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>08</td>
                                            <td>2010/10/14</td>
                                            <td>Vehical Key</td>
                                            <td>LOBBY 30TH FLOOR</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>09</td>
                                            <td>2009/09/15</td>
                                            <td>Baby Toys pack</td>
                                            <td>Room-001</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                           
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td>2008/12/13</td>
                                            <td>Ring</td>
                                            <td>Room-445</td>
                                            <td>Hotel_001</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>11</td>
                                            <td>2008/12/19</td>
                                            <td>Key</td>
                                            <td>BOA LOUNGE & CLUB</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                           
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>12</td>
                                            <td>2013/03/03</td>
                                            <td>Ring</td>
                                            <td>BOA LOUNGE & CLUB</td>
                                            <td>Hotel_001</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>13</td>
                                            <td>2008/10/16</td>
                                            <td>Ring</td>
                                            <td>CLUB</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>14</td>
                                            <td>2012/12/18</td>
                                            <td>Ring</td>
                                            <td>Room-001</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>15</td>
                                            <td>2010/03/17</td>
                                            <td>selfie stick</td>
                                            <td>CLUB</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>16</td>
                                            <td>2012/11/27</td>
                                            <td>Laptop</td>
                                            <td>CLUB</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>17</td>
                                            <td>2010/06/09</td>
                                            <td>Key</td>
                                            <td>Room-001</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>18</td>
                                            <td>2009/04/10</td>
                                            <td>Samsung Phone</td>
                                            <td>Room-001</td>
                                            <td>Hotel_001</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>19</td>
                                            <td>2012/10/13</td>
                                            <td>Laptop</td>
                                            <td>Room-001</td>
                                            <td>Hotel_002</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>
                                        <tr>
                                            <td>20</td>
                                            <td>2012/09/26</td>
                                            <td>Nokia Phone</td>
                                            <td>Room-001</td>
                                            <td>Hotel_001</td>

                                            <td><span class="badge badge-warning">Pending</span></td>
                                            
                                            <td><button class="btn btn-secondary btn-sm " data-toggle="modal" data-target="#exampleModalCenter">View</button> <button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button></td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
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
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary btn-sm" href="../User/Login.jsp">Logout</a>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- View model -->

	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="ItemName">IPhone 8+</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
				<div class="row">
				<div class="col-sm-6 col-md-6 col-xl-6 col-xs-12">
				<h6>Item ID: <span class="badge badge-light">I_001</span></h6>
				<h6>Name: <span class="badge badge-light">IPhone 8+</span></h6>
				<h6>Storage: <span class="badge badge-light">LP</span></h6>
				<h6>HandOver By: <span class="badge badge-light">E_00235</span></h6>
				<h6>Department: <span class="badge badge-light">Room clean</span></h6>
				</div>
				<div class="col-sm-6 col-md-6 col-xl-6 col-xs-12">
				<h6>Status: <span class="badge badge-success">Returned</span></h6>
				<h6>Date: <span class="badge badge-warning">18/04/2019</span></h6>
				<h6>Hotel: <span class="badge badge-light">Hilton</span></h6>
				<h6>Location: <span class="badge badge-light">Room-002</span></h6>
				</div>
				
				</div>
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary btn-sm"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary btn-sm"><a href="Item_edit.jsp" style="text-decoration: none; color: #fff;"><i class="far fa-edit"></i> Edit</a></button>
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