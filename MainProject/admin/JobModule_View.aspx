<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="JobModule_View.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>

<%@ Register src="../user_control/control_for_MohuleJob.ascx" tagname="control_for_MohuleJob" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
       <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
       <div id="maindiv" style="position:relative; float:left; width:100%; height:100%; border:0px solid black">
           <div id="headerdiv" style=" position:relative; float:left; width:100%; height:60px; border:0px solid black">
                <table border="0" width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="100%">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td width="13%">&nbsp;</td>
                                    <td width="22%">
                                        <uc1:control_for_MohuleJob ID="control_for_MohuleJob1" runat="server" />
                                    </td>
                                    <td width="55%" align="right">
                                        <b>Admin: </b><asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                    </td>
                                    <td width="10%">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>  
        </div>
        
        <div id="firstdiv" style=" position:relative; float:left; width:100%; height:auto; border:0px solid black">
              <table border="0" cellpadding="0" cellspacing="0" style="width:100%">
                  <tr>
                     <td style="width:25%">&nbsp;</td>
                     <td align="center" style="width:50%">
                         
                         <asp:UpdatePanel ID="upd_for_datalist" runat="server">
                            <ContentTemplate>
                               <fieldset id="fsJobModuleDetail" style="height:100%">
                                   <legend class="fontForOuterLegend">View Jobs Module</legend>
                                   <asp:UpdatePanel ID="upd" runat="server">
                                      <ContentTemplate>
                                          <asp:DataList ID="DataList_For_Jobs_Module" runat="server" 
                                       oneditcommand="DataList_For_Jobs_Module_EditCommand" 
                                       DataKeyField="ModuleId" 
                                       ondeletecommand="DataList_For_Jobs_Module_DeleteCommand">
                                          <HeaderTemplate>
                                             <table cellpadding="2" cellspacing="1" border="0" width="100%">
                                                 <tr  style="background-color:White" align="center">
                                                     
                                                    <th>Module&nbsp;ID</th>
                                                     
                                                    <th>Module&nbsp;Name</th>
                                                     
                                                    <th>Module&nbsp;Type</th>
                                                     
                                                    <th>Edit</th>
                                                     
                                                    <th>Delete</th>
                                                 </tr>
                                         
                                          </HeaderTemplate>
                                          <ItemTemplate>
                                             <tr style="background-color:#99CCFF" align="center">
                                                 <td align="center"><%#Eval("ModuleId") %></td>
                                                 <td align="center"><%#Eval("ModuleName") %></td>
                                                 <td align="center"><%#Eval("WorkType") %></td>
                                                 <td align="center">
                                                     <asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit"><b>Edit</b></asp:LinkButton>
                                                 </td>
                                                 
                                                 <td align="center">
                                                     <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" OnClientClick="return confirm('Are you sure you want to delete this record ?');"><b>Delete</b></asp:LinkButton>
                                                 </td>
                                                 
                                             </tr>
                                          </ItemTemplate>
                                          <AlternatingItemTemplate>
                                              <tr style="background-color:white" align="center">
                                                 <td align="center"><%#Eval("ModuleId") %></td>
                                                 <td align="center"><%#Eval("ModuleName") %></td>
                                                 <td align="center"><%#Eval("WorkType") %></td>
                                                  
                                                 <td align="center">
                                                     <asp:LinkButton ID="lnkEdit" runat="server" CommandName="edit"><b>Edit</b></asp:LinkButton>
                                                  </td>
                                                  
                                                 <td align="center">
                                                     <asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete"  OnClientClick="return confirm('Are you sure you want to delete this record ?');"><b>Delete</b></asp:LinkButton>
                                                 </td>
                                                  
                                             </tr>
                                          </AlternatingItemTemplate>
                                          <FooterTemplate>
                                             </table>
                                          </FooterTemplate>
                                   </asp:DataList>
                                      </ContentTemplate>
                                   </asp:UpdatePanel>
                               </fieldset>
                            </ContentTemplate>
                         </asp:UpdatePanel>
                         
                     </td>
                     <td style="width:25%">&nbsp;</td>
                  </tr>
              </table>
        </div>
       </div>
   
</asp:Content>

