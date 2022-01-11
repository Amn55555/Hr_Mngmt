<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_Edu_Qualification_Details.aspx.cs" Inherits="Hr_Mngmt.Emp_Edu_Qualification_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="style.css" type="text/css" />
    <title>napaSOFT-Employee Education Qualification Details
    </title>
    <style type="text/css">
        .style1 {
            width: 190px;
        }

        .style2 {
            background-color: #ffffe2;
            width: 190px;
        }

        .style3 {
            background-color: #ffffe2;
            height: 27px;
        }

        .Button {
            margin-left: 86%;
        }

        .auto-style1 {
            FONT: bold 14pt Verdana,Arial, Times, serif;
            COLOR: blue;
            BACKGROUND-COLOR: #ffffe2;
            height: 25px;
        }

        .auto-style2 {
            width: 268435488px;
        }

        .auto-style4 {
            margin-right: 0px;
        }

        .auto-style5 {
            margin-top: 0px;
        }

        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <img src="logo.png" height="60" width="250" />
        </div>
        <div class="BodyText1">
            <table border="" width="100%" class="BodyText" cellpadding="0" cellspacing="0">
                <tr>
                    <th colspan="9" class="auto-style1">EMPLOYEE EDUCATION QUALIFICATION DETAILS
                    </th>
                </tr>
            </table>
            <br />

            <table style="width: 70%">
                <tr>
                    <td style="width: 10%">
                        <asp:Label ID="lblEmpID" runat="server" Text="Employee ID:"></asp:Label>
                    </td>

                    <td style="width: 25%">
                        <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox>
                    </td>

                    <td style="width: 10%">
                        <asp:Label ID="Label2" runat="server" Text="Name:" ></asp:Label>
                    </td>

                    <td style="width: 25%">
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Employee Name" ></asp:TextBox>
                    </td>
                </tr>
          
             </table>

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="true" OnRowCommand="GridView1_RowCommand2" OnRowCreated="GridView1_RowCreated1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" CssClass="auto-style4">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="SL. No." />
                    <asp:TemplateField HeaderText="Qualification ">
                        <ItemTemplate>
                            <asp:TextBox ID="QualificationTxt" runat="server"  Text='<%#Eval("Qualification")%>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Year">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="PassingTxt" Text='<%#Eval("Passing Year")%>' Width="30px" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="%">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="PercentageTxt" Text='<%#Eval("Percentage")%>' Width="45px"/>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="University/Collage">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="InstitutionTxt" Text='<%#Eval("Institution")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Institute Address">
                        <ItemTemplate>
                            <asp:TextBox runat="server" ID="AddTxt" Text='<%#Eval("Institute Address")%>' />
                        </ItemTemplate>

                        <FooterTemplate>
                            <asp:Button ID="Button1" runat="server" Text="New Row" CommandName="AddNewRow" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style5" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="BtnUpload" runat="server" Text="Upload" OnClick="BtnUpload_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Remove Row" CommandName="removerow" Style="color: blue" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
            <br />
            <table>
                <tr>
                    <td>&nbsp;
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button2" runat="server" Text="SAVE ALL" />

        </div>
    </form>
</body>
</html>
