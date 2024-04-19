<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CphBody" Runat="Server">
    <head>
	<title>Medical History</title>
	<style>
		table {
			width: 100%;
			border-collapse: collapse;
		}
		th, td {
			padding: 8px;
			text-align: left;
			border-bottom: 1px solid #ddd;
		}
		th {
			background-color: #f2f2f2;
		}
		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		.record {
			width: 60%;
		}
		.search-bar {
			width: 50%;
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			border: 2px solid #ccc;
		}
		.order-by {
			padding: 12px 20px;
			margin: 8px 0;
			box-sizing: border-box;
			border: 2px solid #ccc;
		}
	</style>
</head>
<body>
	<h1>Medical History</h1>
	<input type="text" class="search-bar" placeholder="Search medical records...">
	<select class="order-by">
		<option value="oldest">Oldest to Newest</option>
		<option value="newest">Newest to Oldest</option>
	</select>
	<table>
		<thead><tr>
				<th>Date</th>
				<th>Record</th>
				<th>Doctor</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>2022-01-01</td>
				<td class="record">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.</td>
				<td>Dr. John Doe</td>
			</tr>
			<tr>
				<td>2021-12-15</td>
				<td class="record">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.</td>
				<td>Dr. Jane Smith</td>
			</tr>
			<tr>
				<td>2021-11-01</td>
				<td class="record">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.</td>
				<td>Dr. John Doe</td>
			</tr>
		</tbody>
	</table>
</body>

</asp:Content>

