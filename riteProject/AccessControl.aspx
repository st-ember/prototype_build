<%@ Page Title=":::網頁設定與控制:::" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccessControl.aspx.cs" Inherits="riteProject.AccessControl" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- table_name="access_control"
        columns:
                unit VARCHAR(2),
                work_order INT,
                coworker_name VARCHAR(50),
                role VARCHAR(10) -->

    <%--<div id="thedialog"  title="新增">
  		<input type="text" class="form_control" placeholder="挑選同仁" >
                    <span class="input_group_btn">
                      <button class="btn">
                        <span class="icon_font icon_user"></span>
                      </button>
                    </span>
			&nbsp;
				<select name="character" class="select">
                          <option value="a">系統管理者</option>
                          <option value="b">收費管理員</option>
                      </select>
		 <div class="flt_right"><input type="button" value="送出" class="main_btn margin_top" ></div>
	</div>--%>	
      <div class="content">
        <section>
          <article> 
            <div class="breadcrumb"><p><a href=".#">首頁</a> &gt; 角色維護</p></div><!--end breadcrumb-->
			<input type="button" value="新增" class="main_btn flt_right margin_top"  id="thelink">  
            <h2><span>角色維護</span></h2> 
			  
            <table class="table_th_line" style="table-layout: auto;">
                <tr>
                    <th>
                        <input type="checkbox" name="checkbox-2" id="checkbox-2-1">
                        <label for="checkbox-2-1">全選</label>
                    </th>
                    <th width="12%">操作</th>
                    <th>單位<input type="image" src="images/arrow-up-thick.svg"></th>
                    <th>工號<input type="image" src="images/arrow-up-thick.svg"></th>
                    <th>姓名<input type="image" src="images/arrow-up-thick.svg"></th>
                    <th>角色<input type="image" src="images/arrow-up-thick.svg"></th>
                </tr>
                
                <asp:Repeater ID="rpt_control_row" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td class="text_center">
                                <input type="checkbox" name="checkbox-A" id="checkbox-A-2" disabled="" checked="">
                                <label for="checkbox-A-2"></label>
                            </td>
                            <td class="text_center grid-2">
                                <!--<span class="icon_font delete_btn"><input type="button"></span>-->
                                <input type="button" value="編輯" class="main_btn width-75">
                                <input type="button" value="刪除" class="main_btn witdh-75">
                            </td>
                            <td style="text-align:center"><%# DataBinder.Eval(Container.DataItem, "Unit") %></td>
                            <td style="text-align:center"><%# DataBinder.Eval(Container.DataItem, "WorkOrder") %></td>
                            <td style="text-align:center"><%# DataBinder.Eval(Container.DataItem, "CoworkerName") %></td>
                            <td style="text-align:center"><%# DataBinder.Eval(Container.DataItem, "Role") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <tr>
                    <td colspan="12" class="page">
                        <div class="text_center">
                            <div class="pagination">
                                <a href="#" class="first">首頁</a>
                                <a href="#" class="previous">上頁</a>
                                <a href="#">1</a>
                                <a href="#" class="active">2</a>
                                <a href="#">3</a>
                                <a href="#">4</a>
                                <a href="#">5</a>
                                <a href="#">6</a>
                                <a href="#" class="next">下頁</a>
                                <a href="#" class="last">末頁</a>
                                <span>每頁顯示</span>
                                <select class="select">
                                    <option>20</option>
                                    <option>40</option>
                                    <option>60</option>
                                    <option>80</option>
                                </select>
                                <span>筆 共97筆</span>
                            </div>
                        </div><!--end page-->
                    </td>
                </tr>
            </table><!--end 表格式表單-->

          </article>
        </section>       
      </div>

</asp:Content>
