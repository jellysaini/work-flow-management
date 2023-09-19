<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>

<%@ Register src="../user_control/reports.ascx" tagname="reports" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript" >
        function SelectAll(id)
        {
          var frm = document.forms[0];
          for (i=0;i<frm.elements.length;i++)
          if (frm.elements[i].type == "checkbox") 
          {

                frm.elements[i].checked = document.getElementById(id).checked;
          }
       }   
   </script>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
             <tr>
                   <td width="100%">
                       <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                   <td width="3%">&nbsp;</td>
                                   <td width="27%">
                                       <uc1:reports ID="reports1" runat="server" />
                                   </td>
                                   <td width="60%" align="right"><b>Admin: </b><asp:Label ID="Label3" runat="server" ForeColor="Blue"></asp:Label></td>
                                   <td width="10%">&nbsp;</td>
                           </tr>
                       </table>
                 </td>
            </tr>
            <tr>
                <td>
                    <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                          <td>
                            <div id="firstdiv" style=" position:relative; float:left; width:100%; height:auto; border:0px solid black">
                               <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                   
                                    <tr>
                                        <td style="width:5%">&nbsp;</td>
                                        <td style="width:90%" align="center">
                                            <fieldset id="userdetail" style="height:100%">
                                                <legend class="fontForOuterLegend">User Detail</legend>
                                                   <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr><td style="width:100%">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="width:20%">&nbsp;</td>
                                                                    <td style="width:30%"><b>Select User Type</b></td>
                                                                    <td style="width:30%"><asp:DropDownList ID="drp" CssClass="fordrp" runat="server" AutoPostBack="true" onselectedindexchanged="drp_SelectedIndexChanged">
                                                                         <asp:ListItem Value="0">Select User Type</asp:ListItem>
                                                                         <asp:ListItem Value="2">Team Leader</asp:ListItem>
                                                                         <asp:ListItem Value="3">Developer</asp:ListItem>
                                                                    </asp:DropDownList></td>
                                                                    <td style="width:20%">&nbsp;</td>
                                                                </tr>            
                                                            </table>
                                                        </td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr><td>
                                                             <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="width:20%">
                                                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                            ConnectionString="<%$ ConnectionStrings:dbWorkFlowMangConnectionString %>" 
                                                                            SelectCommand="SELECT [UsrId], [UsrName], [UsrEmailAdd] FROM [tbUsr] WHERE ([UsrDesignation] = @UsrDesignation2)">
                                                                            <SelectParameters>
                                                                                <asp:ControlParameter ControlID="drp" Name="UsrDesignation2" 
                                                                                    PropertyName="SelectedValue" Type="Int32" />
                                                                            </SelectParameters>
                                                                        </asp:SqlDataSource>
                                                                    </td>
                                                                    <td style="width:60%" align="center">
                                                                            <asp:GridView ID="mailgrdview" runat="server" AutoGenerateColumns="False" 
                                                                                DataKeyNames="UsrId" DataSourceID="SqlDataSource1" ShowFooter="True" CellPadding="4" 
                                                                                ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True" onrowdatabound="mailgrdview_RowDataBound"
                                                                                PageSize="5">
                                                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                                    <RowStyle BackColor="#EFF3FB" />
                                                                                    <Columns>
                                                                                        <asp:TemplateField>
                                                                                        <ItemTemplate>
                                                                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                                        <asp:CheckBox ID="chk" runat="server" />
                                                                                        </ItemTemplate>
                                                                                        <HeaderTemplate>
                                                                                        <asp:CheckBox ID="chk" runat="server" Text="SelectAll" />  
                                                                                        </HeaderTemplate>                                  
                                                                                        </asp:TemplateField>
                                                                                        <asp:BoundField DataField="UsrName" HeaderText="UsrName" SortExpression="UsrName" />
                                                                                        <asp:BoundField DataField="UsrEmailAdd" HeaderText="UsrEmailAdd" SortExpression="UsrEmailAdd" />
                                                                                    </Columns>
                                                                                    
                                                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                                    <EditRowStyle BackColor="#2461BF" />
                                                                                    <AlternatingRowStyle BackColor="White" />
                                                                                    
                                                                                </asp:GridView>
                                                                    </td>
                                                                    <td style="width:20%">
                                                                        <asp:Repeater ID="repeater1" runat="server">
                                                                            <ItemTemplate>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
                                                                                 <%#Eval("UsrName") %>
                                                                                 <%#Eval("UsrEmailAdd") %>
                                                                            </ItemTemplate>
                                                                        </asp:Repeater>
                                                                        <asp:Label ID="label1" runat="server"></asp:Label>
                                                                        <asp:Label ID="label2" runat="server"></asp:Label>
                                                                    </td>
                                                                </tr>            
                                                            </table>
                                                        </td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                         <tr><td style="width:100%">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="width:20%">&nbsp;</td>
                                                                    <td style="width:60%" align="center">
                                                                        <asp:TextBox ID="txt_contents" runat="server" TextMode="MultiLine" Rows="8" Columns="48"></asp:TextBox>
                                                                    </td>
                                                                    <td style="width:20%">&nbsp;</td>
                                                                </tr>            
                                                            </table>
                                                        </td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr><td style="width:100%">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="width:20%">&nbsp;</td>
                                                                    <td style="width:60%" align="center">
                                                                      <asp:Button ID="btn_send" runat="server" CssClass="btn" Text="Send" 
                                                                            onclick="btn_send_Click" />
                                                                      
                                                                    </td>
                                                                
                                                                    <td style="width:20%">&nbsp;</td>
                                                                </tr>            
                                                            </table>
                                                        </td></tr>
                                                         <tr><td>&nbsp;</td></tr>
                                                   </table>
                                            </fieldset>
                                        </td>
                                        <td style="width:5%">&nbsp;</td>
                                    </tr>
                               </table> 
                          </div>
                        </td>
                      </tr>
                   </table>
                </td>
            </tr>
        </table>
</asp:Content>

