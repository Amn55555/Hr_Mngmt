<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/Emp_Prsnl_Info.aspx.cs" Inherits="Hr_Mngmt.Emp_Prsnl_Info" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css" type="text/css" />
    <title>napaSOFT-Employee Details</title>
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
        .auto-style2 {
            width: 191px;
        }
        .auto-style3 {
            BACKGROUND-COLOR: #ffffe2;
            width: 191px;
        }
        .auto-style4 {
            BACKGROUND-COLOR: #ffffe2;
            height: 28px;
        }
        .auto-style5 {
            width: 191px;
            height: 28px;
        }
        .auto-style6 {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border: 1px solid black;">
       <img src="logo.png" height="60" width="250" /></div>
    <div class="BodyText1">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
            Width="1000px" >
            <asp:ListItem Value="Employee Personal Information"></asp:ListItem>
            <asp:ListItem Value="Address Details"></asp:ListItem>
            <asp:ListItem Value="Qualification Details"></asp:ListItem>
            <asp:ListItem Value="Experience Details"></asp:ListItem>
            <asp:ListItem Value="KYC"></asp:ListItem>
            <asp:ListItem Value="Bank Details"></asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div style="width: 100%">
        <div style="width: 80px; height: 80px; position: absolute; margin-left: 1160px; padding-top:10px;padding-bottom:10px
            background-color: #ffffff; top: 104px">
            <asp:Image ID="Image1" runat="server"  />
            
                <%--<asp:Image ID="Image2" runat="server" Height="40px" Width="40px" style="margin-right="100px"/>--%>
            
            
        </div>
        <table border="" width="100%" class="BodyText" cellpadding="0" cellspacing="0">
            <tr>
                <th colspan="9" class="TableHeader">
                    EMPLOYEE DETAILS
                </th>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;Employee ID:
                </td>
                <td colspan="3">
                    
            <asp:TextBox ID="txtEmpID" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;Employee Name:
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtEmpName" runat="server" Width="300"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;Father's Name:
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtFatherName" runat="server" Width="300"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">
                    &nbsp;Gender:
                </td>
                <td colspan="2" class="auto-style5">
                    <asp:RadioButtonList ID="rdGender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="Male"></asp:ListItem>
                        <asp:ListItem Value="Female"></asp:ListItem>
                        <asp:ListItem Value="Other"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td align="right" class="auto-style4">
                    &nbsp;Marital Status:
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="drpdnMaritalStatus" runat="server" Height="16px" Width="162px"
                        class="bodycolor" 
                       >
                        <asp:ListItem Value="Married"></asp:ListItem>
                        <asp:ListItem Value="Unmarried"></asp:ListItem>
                        <asp:ListItem Value="Widow"></asp:ListItem>
                        <asp:ListItem Value="Divorced"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;Date Of Birth:
                </td>
                <td colspan="2" class="auto-style2">
                    <asp:TextBox ID="txtDob" runat="server" Width="198px"></asp:TextBox>
                </td>
                <td align="right">
                    &nbsp;Email ID:
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="250px"> @gmail.com</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="bodycolor">
                    &nbsp;Aadhar No:
                </td>
                <td colspan="2" class="auto-style3">
                    <asp:TextBox ID="txtAadharNo" runat="server" Width="196px"></asp:TextBox>
                </td>
                <td align="right" class="bodycolor">
                    &nbsp;Date of Appointment:
                </td>
                <td class="bodycolor">
                    <asp:TextBox ID="txtDateofAppointment" runat="server" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;Status:
                </td>
                <td>
                    <asp:DropDownList ID="drpdnEmpStatus" runat="server" Height="16px" Width="150px">
                        <asp:ListItem Value="Active"></asp:ListItem>
                        <asp:ListItem Value="Passive"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td colspan="2" align="right">
                    &nbsp;Residence No.
                </td>
                <td>
                    <asp:TextBox ID="txtResidenceNo" runat="server" Width="246px"></asp:TextBox>
                </td>
            </tr>
            <tr class="bodycolor">
                <td align="right">
                    &nbsp;Mobile No.
                </td>
                <td colspan="2" class="auto-style2">
                    <asp:TextBox ID="txtMobileNo" runat="server" Width="196px"></asp:TextBox>
                </td>
                <td align="right" class="style1">
                    &nbsp;Nationality:
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="txtNationality" runat="server" Height="16px" Width="152px">
                        <asp:ListItem Value="Indian"></asp:ListItem>
                        <asp:ListItem Value="British"></asp:ListItem>
                        <asp:ListItem Value="American"></asp:ListItem>
                        <asp:ListItem Value="Anglo"></asp:ListItem>
                        <asp:ListItem Value="French"></asp:ListItem>
                        <asp:ListItem Value="Spanish"></asp:ListItem>
                        <asp:ListItem Value="Germany"></asp:ListItem>
                        <asp:ListItem Value="Denmark"></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;PAN No.
                </td>
                <td colspan="2" class="auto-style2">
                    <asp:TextBox ID="txtPanNo" runat="server" Width="193px"></asp:TextBox>
                </td>
                <td colspan="2" align="right">
                    <asp:Button ID="BtnInsrt" runat="server" Text="Insert" Width="71px" OnClick="BtnInsrt_Click" style="height: 26px" />&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnUpdt" runat="server" Text="Update" OnClick="BtnUpdt_Click" />&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnVw" runat="server" Text="View" Width="71px" OnClick="BtnVw_Click" />&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnDlt" runat="server" Text="Delete" Width="71px" OnClick="BtnDlt_Click" />
                </td>
                
            </tr>
        </table>
    </div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="356px" GridLines="None" OnPageIndexChanged="GridView1_SelectedIndexChanged" Font-Underline="False" ForeColor="#333333" OnRowEditing="select">
            <AlternatingRowStyle BackColor="White" Font-Size="Medium" Font-Underline="True" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#000099" Font-Underline="True" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" BorderStyle="Double" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" BorderStyle="Solid" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
