<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_Exp_Details.aspx.cs" Inherits="Hr_Mngmt.Emp_Exp_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css" type="text/css" />
          <title>
        napaSOFT-Employee Experience Details
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
        <div style="border: 1px solid black;">
             <img src="logo.png" height="60" width="250" /></div>
        <div class="BodyText1">
             <table border="" width="100%" class="BodyText" cellpadding="0" cellspacing="0">
            <tr>
                <th colspan="9" class="auto-style1">
                    Employee Experience Details
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

           <br />





            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="true" OnRowCommand="GridView1_RowCommand2" OnRowCreated="GridView1_RowCreated1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2">

<Columns>
<asp:BoundField DataField="sno" HeaderText="serial No" />
<asp:TemplateField HeaderText="Organization">
    <ItemTemplate>
        <asp:TextBox ID="OrganizationTxt" runat="server" Text='<%#Eval("Organization")%>'/>
    </ItemTemplate>
</asp:TemplateField>
                    <asp:TemplateField HeaderText="Duration">
    <ItemTemplate>
        <asp:TextBox runat="server" ID="DurationTxt"  Text='<%#Eval("Duration")%>'/>
    </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Designation">
    <ItemTemplate>
        <asp:TextBox runat="server" ID="DesignationTxt"  Text='<%#Eval("Designation")%>'/>
    </ItemTemplate>
                             
    <%--                          <asp:TemplateField HeaderText="Institute Address">
    <ItemTemplate>
        <asp:TextBox runat="server" ID="AddTxt"  Text='<%#Eval("Institute Address")%>'/>
    </ItemTemplate>--%>
                                  



    


                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" Text="New Row" CommandName="AddNewRow" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" />

                        </FooterTemplate>


        </asp:TemplateField>




                    <asp:TemplateField>

                <ItemTemplate>

                    <asp:LinkButton ID="LinkButton1" runat="server" Text="remove" CommandName="removerow" CommandArgument="<%#((GridViewRow)Container).RowIndex %>"/>

                </ItemTemplate>

            </asp:TemplateField>

                    
                </Columns>





            </asp:GridView>
            <br />


            <table>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="SAVE ALL" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
      
        </div>
    </form>
</body>
</html>
