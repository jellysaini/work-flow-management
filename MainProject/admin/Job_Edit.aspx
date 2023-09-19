<%@ Page Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="Job_Edit.aspx.cs" Inherits="admin_Default" Title="Untitled Page" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

    <%@ Register src="../user_control/control_for_job.ascx" tagname="control_for_job" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td>
                    <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                             <td>
                                 <div id="headerdiv" style=" position:relative; float:left; width:100%; height:50px; border:0px solid black; top: 0px; left: 0px;">
                                        <table border="0" width="100%" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="100%">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="3%">&nbsp;</td>
                                                            <td width="17%">
                                                                
                                                                <uc1:control_for_job ID="control_for_job1" runat="server" />
                                                                
                                                            </td>
                                                            <td width="70%" align="right">
                                                                <b>Admin: </b>
                                                                <asp:Label ID="Label1" runat="server" ForeColor="Blue"></asp:Label>
                                                            </td>
                                                            <td width="10%">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                     </div>        
                                </td>
                            </tr>
                            <tr>
                <td>
                    <div id="seconddiv" style=" position:relative; float:left; width:100%; height:auto;border:0px solid black">
                        
                                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                                <td style="width:10%">&nbsp;</td>
                                                <td style="width:80%">
                                                         <fieldset id="fsAddUser">
                                                            <legend class="fontForOuterLegend">Add Jobs</legend>
                                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                        <tr><td>
                                                                            &nbsp;</td></tr>
                                                                        <tr>
                                                                            <td>
                                                                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                    <tr>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                        <td style="width:47%">
                                                                                             <fieldset id="fsAccfrmdt" style=" height:210px">
                                                                                                <legend class="fontForInnerLegend">Accounting Firm Details</legend>
                                                                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                        <tr><td>&nbsp;</td></tr>
                                                                                                            <tr>
                                                                                                            <td width="100%">
                                                                                                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                <tr>
                                                                                                                    <td width="5%">&nbsp;</td>
                                                                                                                    <td class="font_size" width="35">Accounting&nbsp;Firm:</td>
                                                                                                                    <td width="60%">
                                                                                                                    <asp:UpdatePanel ID="upd" runat="server"><ContentTemplate>
                                                                                                                        <asp:DropDownList ID ="drpAccountingFirm" CssClass ="txt" runat="server" 
                                                                                                                            DataTextField="FirmName" DataValueField="FirmId" AutoPostBack="True" ></asp:DropDownList></td>
                                                                                                                    </ContentTemplate></asp:UpdatePanel></td>
                                                                                                                 </tr>
                                                                                                                 </table>
                                                                                                              </td>
                                                                                                              </tr>
                                                                                                              <tr><td>&nbsp;</td></tr>
                                                                                                                 <tr>
                                                                                                                    <td width="100%">
                                                                                                                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                     <tr>
                                                                                                                         <td width="5%">&nbsp;</td>
                                                                                                                          <td width="35" class="font_size" >Main&nbsp;Contact:</td>
                                                                                                                          <td width="60%"><asp:TextBox ID="txtMainContact" CssClass="txt" runat="server" ReadOnly="true"></asp:TextBox></td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                             </tr>
                                                                                                             <tr><td>&nbsp;</td></tr>
                                                                                                            <tr>
                                                                                                            <td width="100%">
                                                                                                                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                   <tr>
                                                                                                                        <td width="5%">&nbsp;</td>
                                                                                                                        <td width="35" class="font_size">Parent&nbsp;job&nbsp;ID:</td>
                                                                                                                        <td width="60%"><asp:TextBox ID="txtParentJobId" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                                                                    </tr>
                                                                                                                   </table>
                                                                                                            </td>
                                                                                                           </tr>
                                                                                                          <tr><td>&nbsp;</td></tr>
                                                                                                     </table>
                                                                                             </fieldset>   
                                                                                        </td>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                        <td style="width:47%">
                                                                                         <fieldset id="fsassdetail" style="height:210px;">
                                                                                              <legend class="fontForInnerLegend">Assignment Details</legend>
                                                                                                 <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                    <tr><td>&nbsp;</td></tr>
                                                                                                    <tr>
                                                                                                        <td width="100%">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                <tr>
                                                                                                                    <td width="5%">&nbsp;</td>
                                                                                                                    <td>Fee&nbsp;To&nbsp;Client:</td>
                                                                                                                    <td width="60%"><asp:TextBox ID ="txtFeeToClient" CssClass ="txt" runat="server"></asp:TextBox>
                                                                                                                    </td>                                                            
                                                                                                                    
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                        </td>
                                                                                                     </tr>
                                                                                                     <tr><td>&nbsp;</td></tr>
                                                                                                     <tr>
                                                                                                          <td width="100%">
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                <tr>
                                                                                                                    <td width="5%">&nbsp;</td>
                                                                                                                    <td>Est&nbsp;No.&nbsp;of&nbsp;Hours:</td>
                                                                                                                    <td width="60%"><asp:TextBox ID ="txtEstNoOfHours" CssClass ="txt" runat="server"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                    
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                          </td>
                                                                                                      </tr>
                                                                                                  </table>
                                                                                        </fieldset>
                                                                                        </td>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                    </tr>
                                                                                    
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                         <tr><td>&nbsp;</td></tr>
                                                                         									<tr>
                                                                            <td>
                                                                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                    <tr>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                        <td style="width:47%">
                                                                                               <fieldset id="clientdiv" style="height:310px">
                                                                                                    <legend class="fontForInnerLegend">Client &nbsp;Details</legend>
                                                                                                         <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                            <tr><td>&nbsp;</td></tr>
                                                                                                             <tr>
                                                                                                                  <td width="100%">   <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                        <tr>
                                                                                                                          <td width="5%">&nbsp;</td>
                                                                                                                           <td class="font_size" width="35">Job&nbsp;Name:</td>
                                                                                                                          <td width="60%"><asp:TextBox ID ="txtJobName" CssClass ="txt" runat="server"></asp:TextBox></td>
                                                                                                                        </tr>
                                                                                                                    </table></td>
                                                                                                                </tr>
                                                                                                                <tr><td>&nbsp;</td></tr>
                                                                                                                 <tr>
                                                                                                                    <td width="100%">
                                                                                                                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                     <tr>
                                                                                                                         <td width="5%">&nbsp;</td>
                                                                                                                          <td width="35" class="font_size" >Job&nbsp;Code:</td>
                                                                                                                          <td width="60%"><asp:TextBox ID="txtJobCode" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                </td>
                                                                                                             </tr>
                                                                                                             <tr><td>&nbsp;</td></tr>
                                                                                                            <tr>
                                                                                                            <td width="100%">
                                                                                                                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                   <tr>
                                                                                                                        <td width="5%">&nbsp;</td>
                                                                                                                        <td width="35" class="font_size">Tax&nbsp;Number:</td>
                                                                                                
                                                                                                                        <td width="60%"><asp:TextBox ID="txtTaxNumber" CssClass="txt" runat="server"></asp:TextBox></td>
                                                                                                                    </tr>
                                                                                                                   </table>
                                                                                                            </td>
                                                                                                           </tr>
                                                                                                           
                                                                                                           <tr><td>&nbsp;</td></tr>
                                                                                                             <tr>
                                                                                                             
                                                                                                                  <td width="100%">
                                                                                                                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                        <tr>
                                                                                                                          <td width="5%">&nbsp;</td>
                                                                                                                           <td class="font_size" width="35">Fncl&nbsp;Year&nbsp;End:</td>
                                                                                                                          <td width="60%"><asp:TextBox ID ="txtFinanclYrEnd" CssClass ="txt" runat="server"></asp:TextBox>
                                                                                                                              <cc1:CalendarExtender ID="txtfnlyrend_CalendarExtender" runat="server" 
                                                                                                                                  Enabled="True" TargetControlID="txtFinanclYrEnd">
                                                                                                                              </cc1:CalendarExtender>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                   </td>
                                                                                                                </tr>
                                                                                                                
                                                                                                                <tr><td>&nbsp;</td></tr>
                                                                                                             <tr>
                                                                                                                  <td width="100%">
                                                                                                                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                        <tr>
                                                                                                                          <td width="5%">&nbsp;</td>
                                                                                                                           <td class="font_size" width="35">Target&nbsp;Date:</td>
                                                                                                                          <td width="60%"><asp:TextBox ID ="txtTargetDate" CssClass ="txt" runat="server"></asp:TextBox>
                                                                                                                              <cc1:CalendarExtender ID="txtTargetDate_CalendarExtender" runat="server" 
                                                                                                                                  Enabled="True" TargetControlID="txtTargetDate">
                                                                                                                              </cc1:CalendarExtender>
                                                                                                                            </td>
                                                                                                                           
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                   </td>
                                                                                                                </tr>
                                                                                                           
                                                                                                           
                                                                                                           
                                                                                                          <tr><td>&nbsp;</td></tr>
                                                                                                     </table>
                                                                                             </fieldset>
                     
                                                                                        </td>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                        <td style="width:47%" valign="top">
                                                                                             <fieldset id="fsAdditionalServices" style="height:310px">
                                                                                                    <legend class="fontForInnerLegend">Additional Services</legend>
                                                                                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                <tr style="height:15px"><td></td></tr>
                                                                                                                <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td style="width:50%" align="left">
                                                                                                                                    <asp:CheckBox ID="chk_benchmaking" runat="server" Text="Benchmarking:" />
                                                                                                                                </td>
                                                                                                                                <td style="width:50%" align="right">
                                                                                                                                    <asp:TextBox ID="txtBenchmarking" runat="server" CssClass="txt1" 
                                                                                                                                        ReadOnly="True"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                               
                                                                                                                 <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                 <td style="width:50%" align="left">
                                                                                                                                    <asp:CheckBox ID="chk_cashflow" runat="server" Text="Cashflow&nbsp;Forcast:" />
                                                                                                                                </td>
                                                                                                                                <td style="width:50%" align="right">
                                                                                                                                    <asp:TextBox ID="txtCashFlowForecast" runat="server" CssClass="txt1" 
                                                                                                                                        ReadOnly="True"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                 <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td style="width:50%" align="left">
                                                                                                                                    <asp:CheckBox ID="chk_profit" runat="server" Text="Profit&nbsp;Optimizer:" />
                                                                                                                                </td>
                                                                                                                                <td style="width:50%" align="right">
                                                                                                                                    <asp:TextBox ID="txtProfitOptimizer" runat="server" CssClass="txt1" 
                                                                                                                                        ReadOnly="True"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                 <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td style="width:50%" align="left">
                                                                                                                                    <asp:CheckBox ID="chk_annual_return" runat="server" Text="Annual&nbsp;Return:" />
                                                                                                                                </td>
                                                                                                                                <td style="width:50%" align="right">
                                                                                                                                    <asp:TextBox ID="txtAnnualReturn" runat="server" CssClass="txt1" 
                                                                                                                                        ReadOnly="True"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                 <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td style="width:50%" align="left">
                                                                                                                                    <asp:CheckBox ID="chk_othet" runat="server" Text="Other:" />
                                                                                                                                </td>
                                                                                                                                <td style="width:50%" align="right">
                                                                                                                                    <asp:TextBox ID="txtOther" runat="server" CssClass="txt1" ReadOnly="True"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td style="width:50%" align="left"><asp:CheckBox ID="chk_outsourcing" runat="server" Text="Outsourcing&nbsp;Fee:" /></td>
                                                                                                                                <td style="width:50%" align="right"><asp:TextBox ID="txtOutSourcingFee" runat="server" CssClass="txt1"></asp:TextBox></td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                
                                                                                                            </table>
                                                                                             </fieldset>
                                                                                        </td>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                    </tr>
                                                                                    
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                         <tr><td>&nbsp;</td></tr>
                                                                            									<tr>
                                                                            <td>
                                                                                <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                                                    <tr>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                        <td style="width:47%">
                                                                                               <fieldset id="Fieldset1" style=" height:170px">
                                                                                                    <legend class="fontForInnerLegend">Group company(if any)</legend>
                                                                                                         <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                             <tr><td>&nbsp;</td></tr>
                                                                                                             <tr>
                                                                                                                  <td width="100%">
                                                                                                                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                        <tr>
                                                                                                                          <td width="15%">&nbsp;</td>
                                                                                                                           
                                                                                                                          <td width="60%" align="center">
                                                                                                                              <asp:TextBox ID ="txtJobDesc" CssClass="" runat="server" 
                                                                                                                                  TextMode="MultiLine" Columns="30" Rows="5" ></asp:TextBox>
                                                                                                                          </td>
                                                                                                                          <td width="15%">&nbsp;</td>
                                                                                                                        </tr>
                                                                                                                    </table>
                                                                                                                   </td>
                                                                                                                </tr>
                                                                                                           
                                                                                                           
                                                                                                          <tr><td style="height: 25px"></td></tr>
                                                                                                     </table>
                                                                                             </fieldset> 
                                                                                        </td>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                        <td style="width:47%">
                                                                                                    <fieldset id="Fieldset2" style="height:170px">
                                                                                                        <legend class="fontForInnerLegend">Primary Services</legend>
                                                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                                <tr style="height:15px"><td></td></tr>
                                                                                                                <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td style="width:50%" align="left">
                                                                                                                                    <asp:CheckBox ID="chk_account" runat="server" Text="Accounts" />
                                                                                                                                </td>
                                                                                                                                <td style="width:50%" align="right">
                                                                                                                                    <asp:TextBox ID="txtAccounts" runat="server" CssClass="txt1" ReadOnly="True"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                               
                                                                                                                 <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td style="width:35%" align="left">
                                                                                                                                    <asp:CheckBox ID="chk_taxret" runat="server" Text="Tax&nbsp;Return" />
                                                                                                                                </td>
                                                                                                                                <td style="width:30">
                                                                                                                                    <asp:DropDownList ID="drp" runat="server" CssClass="fordrp2"></asp:DropDownList>
                                                                                                                                </td>
                                                                                                                                <td style="width:35%" align="right">
                                                                                                                                    <asp:TextBox ID="txtTaxReturn" runat="server" CssClass="txt1"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                 <tr>
                                                                                                                    <td style="width:100%">
                                                                                                                        <table border="0" width="100%">
                                                                                                                            <tr>
                                                                                                                                <td style="width:50%" align="left">
                                                                                                                                    <asp:CheckBox ID="chk_GST_ret" runat="server" Text="Accounts" />
                                                                                                                                </td>
                                                                                                                                <td style="width:50%" align="right">
                                                                                                                                    <asp:TextBox ID="txtGSTReturn" runat="server" CssClass="txt1"></asp:TextBox>
                                                                                                                                </td>
                                                                                                                            </tr>
                                                                                                                        </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                    </fieldset>
                                                                                        </td>
                                                                                        <td style="width:2%">&nbsp;</td>
                                                                                    </tr>
                                                                                    
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                         <tr><td>&nbsp;</td></tr>
                                                                         <tr><td>
                                                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                            <tr>
                                                                                                <td width="42%" align="right">
                                                                                                 <asp:Button ID="btnUpdate" Text="Update" runat="server" CssClass="btn" 
                                                                                                        ValidationGroup="abc" CommandName="update" onclick="btnUpdate_Click" />
                                                                                                 </td>
                                                                                                 <td width="10%" align="center">
                                                                                                    <asp:Button ID="btncan" Text="Cancel" runat="server" CssClass="btn" 
                                                                                                         />
                                                                                                     
                                                                                                 </td>
                                                                                                 <td width="48%" align="left">
                                                                                                     <asp:Button ID="btnReset" Text="Reset" runat="server" CssClass="btn" 
                                                                                                         />
                                                                                                 </td>
                                                                                            </tr>
                                                                                        </table>
                                                                         
                                                                         </td></tr>
                                                                          <tr style="height:15px"><td></td></tr>
                                                                          <tr>
                                    <td style="width:100%">
                                        <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                            <tr>
                                                <td  align="center">
                                                    <asp:Label ID="lblerr" runat="server" ForeColor="Red"></asp:Label>
                                                    <asp:Label ID="lblmailerr" runat="server" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                                                </table>
                                                         </fieldset>
                                                </td>
                                                <td style="width:10%">&nbsp;</td>
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

