<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp_Address_Details.aspx.cs" Inherits="Hr_Mngmt.Emp_Address_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 157px;
            height: 30px;
        }
        .auto-style3 {
            width: 204px;
            height: 30px;
        }

        .auto-style4 {
            margin-left: 0px;
            height: 23px;
        }

        .auto-style5 {
            height: 30px;
        }

        .auto-style6 {
            margin-left: 0px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
        }

    </style>
    <script type="text/javascript">

        function chkClick() {
            var add1;
            //add1 = document.getElementById("txtAdd1").value;
            alert("hhhk");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border: 1px solid black;">
            
            <img src="logo.png" height="60" width="250" /></div>

       
        <div>
            <table>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblEmpID" runat="server" Text="Employee ID:"></asp:Label>&nbsp;&nbsp;&nbsp;
                        </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                            <asp:ListItem Selected="True"></asp:ListItem>

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

                <table>
                <tr>
                <th colspan="9" class="auto-style4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    PRESENT ADDRESS
                </th>
            </tr>
            </table>

            <table>
                
                <tr>
                    <td class="auto-style1" align:"right">
                       &nbsp;Address1:
                        </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtAdd1" runat="server" Width="382px"></asp:TextBox>
                    </td>                 
                   
                     </tr>
                     
                    <tr>
                    <td class="auto-style1" align:"right">
                        &nbsp;Address2:
                        </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtAdd2" runat="server" Width="382px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>

                    <td class="auto-style1" align:"right">
                        City/Village/Town:
                        </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtCVT" runat="server" Width="382px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>
                    <td class="auto-style1" align:"right">
                        District:
                        </td>
                    <td>
                        <asp:TextBox ID="txtDist" runat="server" Width="194px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>
                    <td class="auto-style6" align:"right">
                        State:
                        </td>
                    <td class="auto-style7">
                         <asp:TextBox ID="txtState" runat="server" Width="193px"></asp:TextBox>
                    </td>
                     </tr>
                
                <tr>
                    <td class="auto-style1">
                        Pin Code:
                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtPincd" runat="server" Width="191px"></asp:TextBox>
                    </td>
                   </tr>
              </table>

            <table>
                <tr>
                    <td>
                        
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Same As Present Address" AutoPostBack="true"  OnCheckedChanged="CheckBox1_CheckedChanged1" />
                    </td>
                </tr>
            </table>

            <table>
                <tr>
                <th colspan="9" class="auto-style4">
                    PERMANENT ADDRESS
                </th>
                    
            </tr>
                <tr>
                    <td class="auto-style1" align:"right">
                       &nbsp;Address1:
                        </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtPermAdd1" runat="server" Width="382px"></asp:TextBox>
                    </td>                 
                   
                     </tr>
                     
                    <tr>
                    <td class="auto-style1" align:"right">
                        &nbsp;Address2:
                        </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtPermAdd2" runat="server" Width="382px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>

                    <td class="auto-style1" align:"right">
                        City/Village/Town:
                        </td>
                    <td colspan="3">
                        <asp:TextBox ID="txtPermCVT" runat="server" Width="382px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>
                    <td class="auto-style1" align:"right">
                        District:
                        </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TxtPermDict" runat="server" Width="197px"></asp:TextBox>
                    </td>
                     </tr>
                <tr>
                    <td class="auto-style1" align:"right">
                        State:
                        </td>
                    <td>
                         <asp:TextBox ID="txtPermState" runat="server" Width="194px"></asp:TextBox>
                    </td>
                     </tr>
                
                <tr>
                    <td class="auto-style1">
                        Pin Code:
                        
                    </td>
                    <td>
                        <asp:TextBox ID="txtPermPnCd" runat="server" Width="195px"></asp:TextBox>
                    </td>
                   </tr>
                </table>


            
            
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblCrtOn" runat="server" Text="Created On"></asp:Label>
                        <asp:TextBox ID="txtCrtOn" runat="server" Width="131px"></asp:TextBox>

                    </td>
                    <td>
                        <asp:Label ID="lblCrtBy" runat="server" Text="Created By"></asp:Label>
                        <asp:TextBox ID="txtCrtBy" runat="server" Width="127px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblUpdt" runat="server" Text="Updated On"></asp:Label>
                        <asp:TextBox ID="txtUpdtOn" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblUpdtBy" runat="server" Text="Updated By"></asp:Label>
                        <asp:TextBox ID="txtUpdtBy" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
                        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <table colspan:"2" align:"left">
                <tr>
                   <td>
                       <asp:Button ID="BtnOk" runat="server" Text="Ok" OnClick="Button1_Click" />

                   </td>
                    <td>
                        <asp:Button ID="BtnCncl" runat="server" Text="Cancel" />


                    </td>
                </tr>
                
            </table>


        </div>
    </form>
</body>
</html>
