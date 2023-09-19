<%@ Page Language="C#" MasterPageFile="~/teamleader/MasterPage.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="teamleader_Default" Title="Untitled Page" %>

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
                        <tr style="height:50px">
                           <td>
                                <table width="100%">
                                    <tr>
                                         <td align="right" style="width:90%">
                                            <b>Team&nbsp;Leader:</b>
                                            <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                         </td>
                                         <td width="10%">&nbsp;</td>
                                    </tr>
                                </table>
                           </td>
                        </tr>
                        <tr>
                          <td>
                            <div id="firstdiv" style=" position:relative; float:left; width:100%; height:auto; border:0px solid black">
                               <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td style="width:13%">&nbsp;</td>
                                        <td style="width:74%" align="center">
                                            <fieldset id="userdetail" style="height:100%">
                                                <legend class="fontForOuterLegend">Message</legend>
                                                   <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        
                                                        <tr><td style="width:100%">
                                                           
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="width:12%; height: 121px;"></td>                                                                       
                                                                    <td style="width:76%; height: 121px;" align="center">
                                                                        <asp:GridView ID="GRD_TeamLeader" runat="server" AutoGenerateColumns="False" 
                                                                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                                                                            onrowdatabound="GRD_TeamLeader_RowDataBound" DataKeyNames="UsrId" 
                                                                            AllowPaging="True" 
                                                                            PageSize="5" onpageindexchanging="GRD_TeamLeader_PageIndexChanging" >
                                                                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                            <RowStyle BackColor="#EFF3FB" />
                                                                            <Columns>
                                                                                 <asp:TemplateField >
                                                                                        <ItemTemplate>                                                                                       
                                                                                        <asp:CheckBox ID="chk" runat="server" />
                                                                                        </ItemTemplate>
                                                                                        <HeaderTemplate>
                                                                                        <asp:CheckBox ID="chk" runat="server" Text="SelectAll" />  
                                                                                        </HeaderTemplate>                                  
                                                                                        </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="ID">
                                                                                    <ItemTemplate>
                                                                                       <%#Eval("UsrId") %>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Name"> 
                                                                                    <ItemTemplate>
                                                                                       <%#Eval("UsrName") %>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="EmailId ">
                                                                                    <ItemTemplate>
                                                                                        <%#Eval("UsrEmailAdd") %>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="Salary ">
                                                                                    <ItemTemplate>
                                                                                        <%#Eval("UsrSalary") %>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                <asp:TemplateField HeaderText="LastLogInDate">
                                                                                    <ItemTemplate>
                                                                                        <%#Eval("LastLgnDate") %>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                 <asp:TemplateField HeaderText="StatusLevel">
                                                                                    <ItemTemplate>
                                                                                        <%#Eval("StatusLevel") %>
                                                                                    </ItemTemplate>
                                                                                </asp:TemplateField>
                                                                                            
                                                                                
                                                                                
                                                                            </Columns>
                                                                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                                            <EditRowStyle BackColor="#2461BF" />
                                                                            <AlternatingRowStyle BackColor="White" />
                                                                        </asp:GridView>     
                                                                    </td>
                                                                    <td style="width:12%;">
                                                                    <asp:Repeater ID="RPTR_Show_Developer" runat="server">
                                                                    </asp:Repeater>
                                                                        </td>
                                                                </tr>            
                                                            </table>
                                                        </td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                         <tr><td style="width:100%">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="width:20%"><asp:Label ID="lbl_Developer" runat="server"></asp:Label> </td>
                                                                    <td style="width:60%" align="center">
                                                                        <asp:TextBox ID="txt_Developer_Contents" runat="server" TextMode="MultiLine" CssClass="formail"></asp:TextBox>
                                                                    </td>
                                                                    <td style="width:20%"><asp:Label ID="lbl_Developer_Email" runat="server"></asp:Label></td>
                                                                </tr>            
                                                            </table>
                                                        </td></tr>
                                                        <tr><td>&nbsp;</td></tr>
                                                        <tr><td style="width:100%">
                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                <tr>
                                                                    <td style="width:20%">&nbsp;</td>
                                                                    <td style="width:60%" align="center">
                                                                        <table>
                                                                            <tr>
                                                                                <td style="width:25%" align="right" >
                                                                                    <asp:Button ID="btn_send" runat="server" CssClass="btn" Text="Send" 
                                                                                        onclick="btn_send_Click"/>
                                                                                </td>
                                                                                <td style="width:5%"></td>
                                                                                <td style="width:30%" align="left">
                                                                                    <asp:Button ID="btn_cancel" runat="server" CssClass="btn" Text="Cancel" 
                                                                                        onclick="btn_cancel_Click"/>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </td>
                                                                
                                                                    <td style="width:20%">&nbsp;</td>
                                                                </tr>            
                                                            </table>
                                                        </td></tr>
                                                        <tr>
                                            <td align="center">
                                                <asp:Label ID="errlab" runat="server" ForeColor="Red" style="font-weight:700;"></asp:Label>
                                            </td>
                                          </tr>
                                                         
                                                   </table>
                                            </fieldset>
                                        </td>
                                        <td style="width:13%">&nbsp;</td>
                                    </tr>
                                    
                               </table> 
                          </div>
                        </td>
                      </tr>
                      
                   </table>
</asp:Content>

