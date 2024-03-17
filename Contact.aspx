<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
<head>
	<title>Contact Us</title>
	<style>
       body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

h1 {
    color: #333;
    margin-bottom: 20px;
}

h2 {
    color: #666;
    margin-bottom: 10px;
}

ul {
    list-style-type: none;
    padding: 0;
}

li {
    margin-bottom: 10px;
}

li strong {
    color: #333;
}

li span {
    color: #666;
}
    </style>
</head>
<body>
	<h1>Contact Us</h1>
	<p>If you have any questions or concerns, please don't hesitate to reach out to us.</p>

	<h2>Frequently Asked Questions</h2>
	<ul>
		<li><strong>Q:</strong> What is your return policy?</li>
		<li><strong>A:</strong> We accept returns within 30 days of purchase for a full refund.</li>

		<li><strong>Q:</strong> How do I track my order?</li>
		<li><strong>A:</strong> You can track your order by logging into your account on our website.</li>

		<li><strong>Q:</strong> Do you offer expedited shipping?</li>
		<li><strong>A:</strong> Yes, we offer several expedited shipping options at checkout.</li>
	</ul>

	<h2>Contact Information</h2>
	<p>Email: info@example.com</p>
	<p>Phone: (123) 456-7890</p>
	<p>Address: 123 Main St, Anytown USA 12345</p>
</body>
 </asp:Content>
