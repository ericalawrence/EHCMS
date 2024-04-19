<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="HomepageDoctor.aspx.cs" Inherits="HomepageDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
    <head>
	<title>Doctors Dashboard</title>
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

		
		.policies {
			background-color: #f2f2f2;
			padding: 2rem;
			margin-top: 2rem;
			bottom:0;
			left:0;
			width:600px;
		}
	</style>
</head>
<body>
	<main>
		<section>
			<h2>About Us</h2>
			<div class="hometxtbox">
				<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula eros, blandit nec, pulvinar a, mollis accumsan, felis. Nullam
			viverra turpis. In et mauris vitae eros tempor congue. </p>
			</div>
		</section>
	</main>
	<div class="policies">
		<h2>Policies</h2>
		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula eros, blandit nec, pulvinar a, mollis accumsan, felis. Nullam
			viverra turpis. In et mauris vitae eros tempor congue. Integer eu ligula eu lectus lobortis blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In duimagna, posuere eget, vestibulum et, tempor auctor, justo. In ac
			felis quis tortor malesuada pretium. Pellentesque auctor nec orci. Donec sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Inclampe mauris pas sagittis dui.</p>
	</div>
</body>

 </asp:Content>

