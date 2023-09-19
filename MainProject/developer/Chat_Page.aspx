<%@ Page Language="C#" MasterPageFile="~/developer/MasterPage.master" AutoEventWireup="true" CodeFile="Chat_Page.aspx.cs" Inherits="developer_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
             <asp:ScriptManager ID="scr" runat="server"></asp:ScriptManager>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                   <tr style="height:50px">
                   <td>
                        <table width="100%">
                            <tr>
                                <td style="width:58%" align="right">
                                        <asp:LinkButton ID="logout" runat="server" ForeColor="Blue" onclick="logout_Click" ><b>Logout 
                                    From Chat</b></asp:LinkButton>
                                </td>
                                <td style="width:2%">&nbsp;</td>
                                 <td align="right" style="width:30%">
                                    <b>Developer:</b>
                                    <asp:Label ID="Label3" runat="server" ForeColor="Blue"></asp:Label>
                                 </td>
                                 <td width="10%">&nbsp;</td>
                            </tr>
                        </table>
                   </td>
                </tr>
                <tr>
                    <td>
                        <table border="0" width="100%">
                            <tr>
                                <td style="width:20%">&nbsp;</td>
                                <td style="width:60%">
                                    <table>
                                        <tr>
                                                <td style="width:100%">    
                                                    <table width="100%">
                                                        <tr>
                                                            <td style="width:100%">
                                                                <asp:Label ID="Label1" runat="server" style="font-weight: 600; font-size: large" Text="Label"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width:100%">
                                                                <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text="Label"></asp:Label>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width:100%">
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                                     <ContentTemplate>
                                                                        <asp:Timer ID="Timer1" runat="server" Interval="100" ontick="Timer1_Tick">
                                                                        </asp:Timer>
                                                                         <table border="1" width="100%">
                                                                                <tr style="background-color:Aqua">
                                                                                        <td width="70%">
                                                                                             <div id="divmsg" style="width:400px;height:250px;">
                                                                                                    <asp:Literal ID="ltmsg" runat="server"></asp:Literal>
                                                                                              </div>
                                                                                        </td>
                                                                                        <td width="30%">
                                                                                            <div id="divuser" style="width:200px;height:250px;">
                                                                                                    <asp:Literal ID="ltuser" runat="server"></asp:Literal>
                                                                                            </div>
                                                                                        </td>
                                            
                                                                                </tr>
                                                                        </table>
                                                                     </ContentTemplate>
                                                                    <Triggers>
                                                                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                                                    </Triggers>
                                                                </asp:UpdatePanel>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="width:100%">
                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                                            <ContentTemplate>
                                                    <table>
                                                        
                                                        <tr>
                                                           <td>
                                                                <table>
                                                                    <tr>
                                                                         <td style="width:40%"><b>Enter The Messge</b></td>
                                                                         <td style="width:60%"><asp:TextBox ID="TextBox1" runat="server" Height="120px" TextMode="MultiLine" Width="300px" ></asp:TextBox></td>    
                                                                    </tr>
                                                                </table>
                                                           </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <table width="100%">
                                                                    <tr>
                                                                        <td align="center" style="width:100%"><asp:Button ID="Button1" runat="server" Text="Send" style="font-size: medium; font-weight: 700" onclick="Button1_Click" /></td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                       
                                                    </table>
                                                    </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                </td>
                                            </tr>

                                    </table>
                                </td>
                                <td style="width:20%">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>


</asp:Content>



