<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
<head>
	<style>
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		header {
			/*background-color: #333;
			color: #fff;*/
			padding: 1rem;
			text-align: center;
			margin-top: 0.5rem;
		}
		main {
			display: flex;
			flex-wrap: wrap;
		justify-content: space-between;
			margin: 2rem;
		}
		section {
			flex-basis: 30%;
			margin-bottom: 2rem;
			background-color: #333;
			color: #fff;
		}
		nav {
			flex-basis: 40%;
			margin-bottom: 2rem;
		}
		button {
			background-color: #4CAF50;
			border: none;
			color: white;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 4px 2px;
			cursor: pointer;
		}
		input[type=text] {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			border: 2px solid #ccc;
		}
		textarea {
			width:100%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			border: 2px solid #ccc;
			height: 200px;
		}
		section:nth-child(4) {
			background-color: #f2f2f2;
			padding: 2rem;
			margin-top: 2rem;
		}

	</style>

</head>
<body>
	<main>
		<section>
			<h2>Medical History</h2>
			<button>View</button>
		</section>
		<section>
			<h2>Prescriptions + Tracking</h2>
			<button>View</button>
		</section>
		<section>
			<h2>Book Appointments</h2>
			<button>Book</button>
		</section>
		<nav>
			<h2>Search</h2>
			<input type="text" placeholder="Search...">
			<h2>Give us some feedback!</h2>
			<p> How was your experience with us today? Let us know how we can improve below.</p>
			<textarea placeholder="Enter your message here..."></textarea>
			<button>Send</button>
			<h3>Want to contact us?</h3>
			<h4> <a href = "" </a>Email us here ! </h4>
			
		</nav>
	</main>
	<section>
		<h2>Service Policies</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula eros, blandit nec, pulvinar a, mollis accumsan, felis. Nullam viverra
			turpis. In et mauris vitae eros tempor congue. Integer eu ligula eu lectus lobortis blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In duimagna, posuere eget, vestibulum et, tempor auctor, justo. In ac felis
			quis tortor malesuada pretium. Pellentesque auctor nec orci. Donec sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Inclampe mauris pas sagittis dui.</p>
	</section>
</body>
</asp:Content>