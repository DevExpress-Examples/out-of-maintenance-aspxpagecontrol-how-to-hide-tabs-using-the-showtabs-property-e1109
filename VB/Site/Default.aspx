<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="PageControl_HideTabsSample" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web"
	TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web"
	TagPrefix="dxtc" %>
<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web"
	TagPrefix="dxw" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Untitled Page</title>

	<script type="text/javascript">
			function OnPrevButtonClick(s, e) {
				var activeTab = pageControl.GetActiveTab();
				var newActiveTab = pageControl.GetTab(activeTab.index == 0 ? 2 : activeTab.index - 1);
				pageControl.SetActiveTab(newActiveTab);
			}
			function OnNextButtonClick(s, e) {
				var activeTab = pageControl.GetActiveTab();
				var newActiveTab = pageControl.GetTab(activeTab.index == 2 ? 0 : activeTab.index + 1);
				pageControl.SetActiveTab(newActiveTab);
			}
	</script>

</head>
<body>
	<form id="form1" runat="server">
		<div>
		<table><tr><td colspan="2" style="height: 150px;vertical-align: top;">
			<dxtc:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="2" Width="322px"
				ShowTabs="False" ClientInstanceName="pageControl">
				<TabPages>
					<dxtc:TabPage>
						<ContentCollection>
							<dxw:ContentControl runat="server">
								Terminator<br /><br />
								<span class="Gray"><b>Directed by:</b> James Cameron
									<br />
									<b>Year:</b> 1984 </span>
								<br />
								<br />
								<div style="font-family: Tahoma; font-size: 10px; color: rgb(102, 102, 102);">
									In the Year of Darkness, 2029, the rulers of this planet devised the ultimate plan.
									They would reshape the Future by changing the Past. The plan required something
									that felt no pity. No pain. No fear. Something unstoppable. They created 'THE TERMINATOR'
								</div>
							</dxw:ContentControl>
						</ContentCollection>
					</dxtc:TabPage>
					<dxtc:TabPage>
						<ContentCollection>
							<dxw:ContentControl runat="server">
							Forrest Gump<br /><br />
							<span class="Gray"><b>Directed by:</b> Robert Zemeckis
								<br />
								<b>Year:</b> 1994 </span>
							<br />
							<br />
							<div style="font-family: Tahoma; font-size: 10px; color: rgb(102, 102, 102);">
								The world will never be the same once you've seen it through the eyes of Forrest
								Gump.</div>
							</dxw:ContentControl>
						</ContentCollection>
					</dxtc:TabPage>
					<dxtc:TabPage>
						<ContentCollection>
							<dxw:ContentControl runat="server">
							Matrix<br /><br />
							<span class="Gray"><b>Directed by:</b> Andy Wachowski,
								<br />
								Larry Wachowski
								<br />
								<b>Year:</b> 1999 </span>
							<br />
							<br />
							<div style="font-family: Tahoma; font-size: 10px; color: rgb(102, 102, 102);">
								Be Afraid Of The Future.</div>
							</dxw:ContentControl>
						</ContentCollection>
					</dxtc:TabPage>
				</TabPages>
			</dxtc:ASPxPageControl></td></tr>
				<tr>
					<td align="right">
						<dxe:ASPxButton ID="btnPrev" runat="server" Text="Prev" ClientInstanceName="btnPrev" AutoPostBack="False">
							<ClientSideEvents Click="OnPrevButtonClick" />
						</dxe:ASPxButton>
					</td>
					<td>
						<dxe:ASPxButton ID="btnNext" runat="server" Text="Next" ClientInstanceName="btnNext" AutoPostBack="False">
							<ClientSideEvents Click="OnNextButtonClick" />
						</dxe:ASPxButton>
					</td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>
