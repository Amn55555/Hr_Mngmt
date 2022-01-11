<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_Edu_Qual_Details.aspx.cs" Inherits="Hr_Mngmt.Emp_Edu_Qual_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" ShowFooter="true"
                AutoGenerateColumns="false" OnRowCreated="GridView2_RowCreated">

           <%-- <asp:gridview ID="Gridview1"  runat="server"  ShowFooter="true"  
                             AutoGenerateColumns="false"  
                             OnRowCreated="Gridview1_RowCreated">  --%>
    <Columns>  
        <asp:BoundField DataField="RowNumber" HeaderText="Row Number" />  
        <asp:TemplateField HeaderText="Header 1">  
            <ItemTemplate>  
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>  
            </ItemTemplate>  
        </asp:TemplateField>  
        <asp:TemplateField HeaderText="Header 2">  
            <ItemTemplate>  
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>  
            </ItemTemplate>  
        </asp:TemplateField>  
        <asp:TemplateField  HeaderText="Header 3">  
            <ItemTemplate>  
                <asp:DropDownList ID="DropDownList1" runat="server"  
                                          AppendDataBoundItems="true">  
                    <asp:ListItem Value="-1">Select</asp:ListItem>  
                </asp:DropDownList>  
            </ItemTemplate>  
        </asp:TemplateField>  
        <asp:TemplateField HeaderText="Header 4">  
            <ItemTemplate>  
                <asp:DropDownList ID="DropDownList2" runat="server"  
                                          AppendDataBoundItems="true">  
                    <asp:ListItem Value="-1">Select</asp:ListItem>  
                </asp:DropDownList>  
            </ItemTemplate>  
            <FooterStyle HorizontalAlign="Right" />  
            <FooterTemplate>  
                <asp:Button ID="Button1" runat="server" Text="Button" />
               
            </FooterTemplate>  
        </asp:TemplateField>  
        <asp:TemplateField>  
            <ItemTemplate>  
                <asp:Button ID="Button2" runat="server" Text="Button" />
                  
            </ItemTemplate>  
        </asp:TemplateField>  
    </Columns>  
</asp:GridView>  

        </div>
    </form>
</body>
</html>
