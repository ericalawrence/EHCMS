<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAfterLogin.master" AutoEventWireup="true" CodeFile="HomePageAfterLogin.aspx.cs" Inherits="HomePageAfterLoginNew" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
    <style>
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
		}
		/*header {
			background-color: #333;
			color: #fff;
			padding: 1rem;
			text-align: center;
			position: fixed;
			top: 0;
			width: 100%;
			z-index: 1;
		}*/
		main {
			padding-top: 60px;
			display: flex;
			flex-wrap: wrap;
			justify-content: space-between;
			margin: 2rem;
		}
		section {
			flex-basis: 30%;
			margin-bottom: 2rem;
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

		.hometxtbox{
			background-color: #4CAF50;
			border: none;
			color: white;
			padding: 15px 32px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 16px;
			margin: 1px 1px;
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
		.policies {
			background-color: #f2f2f2;
			padding: 2rem;
			margin-top: 2rem;
			bottom:0;
			left:0;
			width:600px;
		}

		.chatbot {
			position: fixed;
			bottom: 0;
			right: 0;
			background-color: #333;
			color: #fff;
			padding: 1rem;
			width: 300px;
			height: 400px;
			z-index: 1;
		}
		.chatbot h2 {
			margin-top: 0;
		}
		.chatbot input[type=text] {
			width: 70%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			border: 2px solid #ccc;
		}
		.faq-buttons {
			display: flex;
			flex-wrap: wrap;
			margin-top: 1rem;
		}
		.faq-button {
			background-color: #4CAF50;
			border: none;
			color: white;
			padding: 10px 20px;
			text-align: center;
			text-decoration: none;
			display: inline-block;
			font-size: 14px;
			margin: 4px 2px;
			cursor: pointer;
			flex-basis: 30%;
		}
		
	</style>
	<body>
	<main>

		<section>
			<h2>About Us</h2>
			<div class="hometxtbox">
				<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula eros, blandit nec, pulvinar a, mollis accumsan, felis. Nullam
			viverra turpis. In et mauris vitae eros tempor congue. </p>
			</div>
		</section>
		<section>
			<h2>Prescriptions + Tracking</h2>
			<button>View</button>
		</section>
		<section>
			<h2>Book Appointments</h2>
			<button> <accesskey href ="appointments.aspx"> Book</button>
		</section>
		<nav>
			<h2>Links</h2>
			<ul>
				<li><a href="medicine.aspx">Medicine</a></li>
				<li><a href="appointments.aspx">Appointments</a></li>
				<li><a href="history2.aspx">History</a></li>
				<li><a href="Cpntact.aspx">Contact Us</a></li>
			</ul>
		</nav>
	
	<div class="policies">
		<h2>Policies</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula eros, blandit nec, pulvinar a, mollis accumsan, felis. Nullam
			viverra turpis. In et mauris vitae eros tempor congue. Integer eu ligula eu lectus lobortis blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In duimagna, posuere eget, vestibulum et, tempor auctor, justo. In ac
			felis quis tortor malesuada pretium. Pellentesque auctor nec orci. Donec sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Inclampe mauris pas sagittis dui.</p>
	</div>
	<div class="chatbot">
		<h2>Chatbot</h2>
		<input type="text" placeholder="Ask a question...">
		<div class="faq-buttons">
			<button class="faq-button">Can I track my prescriptions</button>
			<button class="faq-button">Do you accept insurance?</button>
			<button class="faq-button">What services do you offer?</button>
			<button class="faq-button">How do I make an appointment?</button>
		</div>
	</div>
		</main>
		</body>
</asp:Content>

