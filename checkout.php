<?php # 

session_start(); // Start the session.

// Set the page title and include the HTML header.
$page_title = 'Order Confirmation';
include ('includes/header.html');

// Assume that the customer is logged in and that this page has access to the customer's ID:
$customer = 1; // Temporary.

// Assume that this page receives the order total.
$total = 178.93; // Temporary.

require_once ('./mysqli_connect.php'); // Connect to the database.

// Turn autocommit off.
mysqli_autocommit($dbc, FALSE);

// Add the order to the orders table...
$q = "INSERT INTO orders (customer_id, total) VALUES ($customer, $total)";
$r = mysqli_query($dbc, $q);
if (mysqli_affected_rows($dbc) == 1) {

	// Need the order ID:
	$oid = mysqli_insert_id($dbc);
	
	// Insert the specific order contents into the database...
	
	// Prepare the query:
	$q = "INSERT INTO order_contents (order_id, print_id, quantity, price) VALUES (?, ?, ?, ?)";
	$stmt = mysqli_prepare($dbc, $q);
	mysqli_stmt_bind_param($stmt, 'iiid', $oid, $pid, $qty, $price);
	
	// Execute each query, count the total affected:
	$affected = 0;
	foreach ($_SESSION['cart'] as $pid => $item) {
		$qty = $item['quantity'];
		$price = $item['price'];
		mysqli_stmt_execute($stmt);
		$affected += mysqli_stmt_affected_rows($stmt);
	}

	// Close this prepared statement:
	mysqli_stmt_close($stmt);

	// Report on the success....
	if ($affected == count($_SESSION['cart'])) { // Whohoo!
	
		// Commit the transaction:
		mysqli_commit($dbc);
		
		// Clear the cart.
		unset($_SESSION['cart']);
		
		// Message to the customer:
		echo '<div id="content">
      <div class="container">
         <div class="inside">
            <!-- box begin -->
            <div class="box alt">
            	<div class="left-top-corner">
               	<div class="right-top-corner">
                  	<div class="border-top"></div>
                  </div>
               </div>
               <div class="border-left">
               	<div class="border-right">
                  	<div class="inner">
                     	<div class="wrapper"><p>Thank you for your order. You will be notified when the is ready.</p>';
		
		// Send emails and do whatever else.
	
	} else { // Rollback and report the problem.
	
		mysqli_rollback($dbc);
		
		echo '<p>Your order could not be processed due to a system error. You will be contacted in order to have the problem fixed. We apologize for the inconvenience.</p>';
		// Send the order information to the administrator.
		
	}

} else { // Rollback and report the problem.

	mysqli_rollback($dbc);

	echo '<p>Your order could not be processed due to a system error. You will be contacted in order to have the problem fixed. We apologize for the inconvenience.</p>';
	
	// Send the order information to the administrator.
	
}

mysqli_close($dbc);
echo '						</div>
                  </div>
               </div>
               <div class="left-bot-corner">
               	<div class="right-bot-corner">
                  	<div class="border-bot"></div>
                  </div>
               </div>
            </div>
            <!-- box end -->
         </div>
      </div>
   </div>';

include ('./includes/footer.html');
?>
