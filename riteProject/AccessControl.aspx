<%@ Page Title=":::網頁權限設定與控制:::" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccessControl.aspx.cs" Inherits="riteProject.AccessControl" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="wrapper">
<%--      <section>
        <article>  
          <!-- #include file="include/header.html"--> <!--end function_link + logo--> 
        </article>
      </section> <!--end section--> 
        <!-- #include file="include/nav.html"--> <!--end nav-->  --%>
	<div id="thedialog"  title="新增">
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
	</div>	
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
                    <th>單位<img src="/img/arrow-up-thick.svg"></th>
                    <th>工號<input type="image" src="img/arrow-up-thick.svg"></th>
                    <th>姓名<input type="image" src="img/arrow-up-thick.svg"></th>
                    <th>角色<input type="image" src="img/arrow-up-thick.svg"></th>
                </tr>
                <tr>
                    <td class="text_center">
                        <input type="checkbox" name="checkbox-2" id="checkbox-2-2" disabled="" checked="">
                        <label for="checkbox-2-2"></label>
                    </td>
                    <td>
                        <!--<span class="icon_font delete_btn"><input type="button"></span>-->
                        <input type="button" value="編輯" class="main_btn" style="padding:10px 15px">
                        <input type="button" value="刪除" class="main_btn" style="padding:10px 15px">
                    </td>
                    <td>資科</td>
                    <td>531508</td>
                    <td>張皓</td>
                    <td>系統管理者</td>
                </tr>
                <tr>
                    <td class="text_center">
                        <input type="checkbox" name="checkbox-C" id="checkbox-C-2" disabled="" checked="">
                        <label for="checkbox-C-2"></label>
                    </td>
                    <td class="text_center">
                        <!--<span class="icon_font delete_btn"><input type="button"></span>-->
                        <input type="button" value="編輯" class="main_btn" style="padding:10px 15px">
                        <input type="button" value="刪除" class="main_btn" style="padding:10px 15px">
                    </td>
                    <td>資科</td>
                    <td>950489</td>
                    <td>何信賢</td>
                    <td>收費管理員</td>
                </tr>
                <tr>
                    <td class="text_center">
                        <input type="checkbox" name="checkbox-B" id="checkbox-B-2" disabled="" checked="">
                        <label for="checkbox-B-2"></label>
                    </td>
                    <td>
                        <!--<span class="icon_font delete_btn"><input type="button"></span>-->
                        <input type="button" value="編輯" class="main_btn" style="padding:10px 15px">
                        <input type="button" value="刪除" class="main_btn" style="padding:10px 15px">
                    </td>
                    <td>資科</td>
                    <td>531508</td>
                    <td>陳詩聖</td>
                    <td>收費管理員</td>
                    
                </tr>
                <tr>
                    <td class="text_center">
                        <input type="checkbox" name="checkbox-A" id="checkbox-A-2" disabled="" checked="">
                        <label for="checkbox-A-2"></label>
                    </td>
                    <td class="text_center">
                        <!--<span class="icon_font delete_btn"><input type="button"></span>-->
                        <input type="button" value="編輯" class="main_btn" style="padding:10px 15px">
                        <input type="button" value="刪除" class="main_btn" style="padding:10px 15px">
                    </td>
                    <td>資科</td>
                    <td>531508</td>
                    <td>游士豪</td>
                    <td>系統管理者</td>
                    
                </tr>
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
      </div><!--end .content-->
      <%--<footer class="extfooter">
        <div class="footer"> 
         <!-- #include file="include/footer.html"-->
        </div><br clear="all" />
    </footer><!--end footer-->--%>
    </div><!--end #wrapper-->



</asp:Content>

