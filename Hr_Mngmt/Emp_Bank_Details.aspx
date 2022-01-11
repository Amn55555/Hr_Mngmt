<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_Bank_Details.aspx.cs" Inherits="Hr_Mngmt.BankDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css" type="text/css" />
          <title>
        napaSOFT-Employee BANK Details
    </title>
    <style type="text/css">
        .style1
        {
            width: 190px;
        }
        .style2
        {
            background-color: #ffffe2;
            width: 190px;
        }
        .style3
        {
            background-color: #ffffe2;
            height: 27px;
        }
        .Button
        {
            margin-left: 86%;
        }
        .auto-style1 {
            FONT: bold 14pt Verdana,Arial, Times, serif;
            COLOR: blue;
            BACKGROUND-COLOR: #ffffe2;
            height: 25px;
        }
        .auto-style4 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="border: 1px solid black;">
             <img src="logo.png" height="60" width="250" /></div>
        <div class="BodyText1">
             <table border="" width="100%" class="BodyText" cellpadding="0" cellspacing="0">
            <tr>
                <th colspan="9" class="auto-style1">
                    Employee BANK Details
                </th>
            </tr>
                 </table>
            <br />

            <table>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblEmpID" runat="server" Text="Employee ID:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        
                    <asp:DropDownList ID="DrdnEmpID" runat="server" Height="34px" Width="152px">
                        <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    </td>
                    <td class="auto-style2" colspan="3">
                        <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>&nbsp;
                  <asp:Label ID="lbl_Name" runat="server" Text="  "></asp:Label>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style3" colspan="3">
                        <asp:Label ID="Label3" runat="server" Text="Father Name:"></asp:Label>&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="lbl_FtheNm" runat="server" Text="  "></asp:Label>

                    </td>
                </tr>
            </table>



            </div>
        </div>
    </form>
</body>
</html>
