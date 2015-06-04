<%@page import="com.tiancai.util.Constant"%>
<%@page import="com.tiancai.util.JdbcTemplate"%>
<%@page import="com.tiancai.util.BeanFactory"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.tiancai.util.DBConnector"%>
<%@page import="java.util.List"%>
<%@page import="com.tiancai.bean.Item"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=GB18030" pageEncoding="GB18030"%>    
<%
		int categoryId = Integer.parseInt(request.getParameter("categoryId") == null ? Constant.INDEX_CATEGORY_DEFAULT_NZ : request.getParameter("categoryId"));
    	List<Item> items = new ArrayList<Item>();
    	String sql = "SELECT i.*,m.url FROM item i " + 
    			"LEFT JOIN material m ON m.`itemCode`=i.`itemCode` " + 
    			"WHERE i.isDeleted=0 and m.type="+
    			Constant.MATERIAL_DISPLAY_TYPE_DEFAULT+
    			" and i.categoryId=" + categoryId;
    	ResultSet rs = JdbcTemplate.excuteQuery(sql);
    	items = BeanFactory.buildItemList(rs,true);
    %>
<html class="ks-webkit537 ks-webkit ks-chrome39 ks-chrome"><head>
<title>天彩服装超市</title>
<link rel="stylesheet" href="./css/sm-nav-2014.css">
<link rel="stylesheet" href="./css/default.css">
<link rel="stylesheet" href="./css/1190-119-10-0.css">
<link rel="stylesheet" href="./css/sm-cat-2-25.css">
<link rel="stylesheet" href="./css/skin_default.css">
<link rel="stylesheet" href="./css/global-min.css">
<link rel="stylesheet" href="./css/20140418.css">
<style>
      .site-nav .site-nav-bd {
          width: 1190px;
      }
      .w990 .site-nav .site-nav-bd {
        width: 990px;
      }
      .firstTitle{
      	font-size:16px;
      }
</style>
<body>
<div class="ks-suggest-container input-drop" style="position: absolute; visibility: hidden; left: 1011.5px; top: 87px; width: 370px;"><div class="ks-suggest-content"></div><div class="ks-suggest-footer"></div></div><script id="tb-beacon-aplus" src="" exparams="category=&amp;userid=&amp;aplus&amp;yunid=&amp;&amp;asid=AQAAAADPHWlVJgqZUgAAAADNGED4k5naoQ=="></script><script>
with(document)with(body)with(insertBefore(createElement("script"),firstChild))setAttribute("exparams","category=&userid=&aplus&yunid=&&asid=AQAAAADPHWlVJgqZUgAAAADNGED4k5naoQ==",id="tb-beacon-aplus",src="")
</script>
<div id="J_SiteNav" class="site-nav">
<div id="J_SiteNavBd" class="site-nav-bd">
<ul id="J_SiteNavBdL" class="site-nav-bd-l"><li id="J_LoginInfo" class="J_Menu menu login-info" data-fn-name="fn-login-info" data-spm="754894437"><div class="menu-hd"><a href="#" target="_top" class="login-info-nick"><%=session.getAttribute("username") %></a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon"></span></span></div><div class="menu-bd"><div class="menu-bd-panel"><a href="http://i.taobao.com/my_taobao.htm?ad_id=&am_id=&cm_id=&pm_id=1501036000a02c5c3739" target="_top" id="J_UserAvatar" class="user-avatar"><img src="./images/index/s.gif" width="80" height="80" alt="tb7009456_66的头像"></a><div class="user-info"><p class="user-operate"><a href="http://member1.taobao.com/member/fresh/account_security.htm" target="_top">账号管理</a><span class="site-nav-pipe">|</span><a href="http://login.taobao.com/member/logout.jhtml?f=top&out=true&redirectURL=http%3A%2F%2Fwww.taobao.com%2Fmarket%2Fnanzhuang%2Findex.php%3Fspm%3D1.7274553.200.2.Dq0ynd" target="_top">退出</a></p><p id="J_Global_UserVipLevel"></p><p><a href="http://vip.taobao.com/privilege/privilege_detail.htm" target="_top"><strong id="J_UserPrivilegeCount">查看我的会员特权</strong></a></p></div><div id="J_UserPrivilegeTip" class="user-privilege-tip"></div><div id="J_UserMedal" class="user-medal site-nav-loading"><div class="user-medal-bd"><div id="J_UserMedalCont" class="user-medal-cont"></div></div><a href="javascript:;" target="_top" id="J_ArrowL" class="medal-arrow arrow-l">&lt;</a><a href="javascript:;" target="_top" id="J_ArrowR" class="medal-arrow arrow-r">&gt;</a></div></div></div></li><li id="J_Tmsg" class="tmsg" data-spm="1997563201"><div class="J_Menu menu" data-fn-name="fn-tmsg"><div class="menu-hd J_Tmsg_Basic tmsg_basic"><span class="J_Tmsg_Logo tmsg_logo_area tmsg_logo_active" style="zoom:1;"><span class="J_Tmsg_Logo_Loading tmsg_logo_loading" style="display: none;"></span> <span class="J_Tmsg_Logo_Icon tmsg_logo_icon g-icon"></span> <span class="J_Tmsg_Logo_Text tmsg_logo_text">消息</span> <span class="J_Tmsg_Logo_Unread tmsg_logo_unread">1</span></span> <span class="arrow-icon-wrapper"><span class="g-icon arrow-icon"></span></span></div><div class="menu-bd"><div class="J_Tmsg_Panel_Apps tmsg_panel_apps"><div class="J_Tmsg_Panel_Head tmsg_panel_head">   <h2 class="J_Tmsg_Panel_Title tmsg_panel_title">未读新消息</h2>   <a class="J_Tmsg_Button_ReadAll tmsg_button_read-all" data-tip="ignoreAll" title="忽略所有消息" href="http://www.taobao.com/market/nanzhuang/index.php?spm=1.7274553.200.2.Dq0ynd#">全部设为已读</a></div><div class="J_Tmsg_Panel_AppsBody tmsg_panel_body">   <img style="display:block;margin:30px auto" width="48" height="48" src="./images/index/T1HcvHXd4nXXb6ROYh-48-48.gif"></div><div class="J_Tmsg_Panel_Foot tmsg_panel_foot">   <a class="J_Tmsg_Button_Setting tmsg_button_setting" data-tips="setting" title="消息设置" href="http://www.taobao.com/market/nanzhuang/index.php?spm=1.7274553.200.2.Dq0ynd#">设置</a>   <a class="J_Tmsg_Button_Feedback tmsg_button_feedback" data-tips="feedback" title="意见反馈" href="http://ur.taobao.com/survey/view.htm?spm=1.6659421.0.0.Nmaw77&id=1990&scm=1229.325.1.1" target="_blank">反馈</a>   <span class="J_Tmsg_Button_CheckAll_Wrap tmsg_button_check-all_wrap">       <a class="J_Tmsg_Button_CheckAll tmsg_button_check-all" href="http://www.taobao.com/market/nanzhuang/index.php?spm=1.7274553.200.2.Dq0ynd#" target="_blank">查看全部</a>   </span></div></div></div></div><div class="J_Tmsg_Panels tmsg_panels"><div class="J_Tmsg_Panel_Detail tmsg_panel_detail"></div><div class="J_Tmsg_Panel_history tmsg_panel_history"></div><div class="J_Tmsg_Panel_Strong tmsg_panel_strong"></div><div class="J_Tmsg_Panel_Setting tmsg_panel_setting"></div></div></li><li class="menu mobile" data-spm="1997563273"><div class="menu-hd"><a href="http://www.taobao.com/m" target="_top">手机逛淘宝</a></div></li><li id="J_Weekend" class="menu weekend" data-spm="1996803849"></li></ul>
<ul id="J_SiteNavBdR" class="site-nav-bd-r"><li class="menu home" data-spm="1581860521"><div class="menu-hd"><a href="http://www.taobao.com/" target="_top" class="h">天彩首页</a></div></li><li class="J_Menu menu my-taobao" data-spm="1997525045"><div class="menu-hd J_MenuMyTaobao"><a href="http://i.taobao.com/my_taobao.htm" target="_top">我的淘宝</a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon"></span></span></div><div class="menu-bd menu-list"><div class="menu-bd-panel"><a href="http://trade.taobao.com/trade/itemlist/list_bought_items.htm" target="_top">已买到的宝贝</a><a href="http://lu.taobao.com/newMyPath.htm" target="_top">我的足迹</a><a href="http://dongtai.taobao.com/hub/new_arrival.htm?scm=1046.1.7.1" target="_top">我的上新</a><a href="http://guang.taobao.com/?scm=2022.1.1.1" target="_top">爱逛街 <em class="J_GuangCount guang-count"></em></a><a href="http://daren.taobao.com/" target="_top">淘宝达人</a><a href="http://love.taobao.com/" target="_top">新欢</a></div></div></li><li id="J_MiniCart" class="J_Menu menu menu-empty mini-cart" data-fn-name="fn-mini-cart" data-spm="1997525049"><div class="menu-hd"><a href="http://cart.taobao.com/cart.htm?from=mini&ad_id=&am_id=&cm_id=&pm_id=1501036000a02c5c3739" target="_top" id="mc-menu-hd"><span class="g-icon"></span><span>购物车</span></a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon"></span></span></div><div class="menu-bd"><div class="menu-bd-panel"></div></div></li><li class="J_Menu menu favorite" data-spm="1997525053"><div class="menu-hd"><a href="http://shoucang.taobao.com/shop_collect_list.htm" target="_top"><span class="g-icon"></span><span>收藏夹</span></a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon"></span></span></div><div class="menu-bd menu-list"><div class="menu-bd-panel"><a href="http://shoucang.taobao.com/item_collect.htm" target="_top">收藏的宝贝</a><a href="http://shoucang.taobao.com/shop_collect_list.htm" target="_top">收藏的店铺</a></div></div></li><li class="menu guide" data-spm="1997563209"><div class="menu-hd"><a href="http://list.taobao.com/browse/cat-0.htm?taobao_from=6" target="_top">商品分类</a></div></li><li class="site-nav-pipe">|</li><li class="J_Menu menu seller-center" data-spm="1997525073"><div class="menu-hd"><a href="http://mai.taobao.com/seller_admin.htm" target="_top">卖家中心</a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon"></span></span></div><div class="menu-bd menu-list"><div class="menu-bd-panel"><a href="http://mai.taobao.com/seller_admin.htm" target="_top">免费开店</a><a href="http://trade.taobao.com/trade/itemlist/list_sold_items.htm" target="_top">已卖出的宝贝</a><a href="http://sell.taobao.com/auction/goods/goods_on_sale.htm" target="_top">出售中的宝贝</a><a href="http://fuwu.taobao.com/?tracelog=tbdd" target="_top">卖家服务市场</a><a href="http://daxue.taobao.com/" target="_top">卖家培训中心</a></div></div></li><li class="menu service" data-spm="754895749"><div class="menu-hd"><a href="http://service.taobao.com/support/main/service_center.htm" target="_top">联系客服</a></div></li><li id="J_SiteMap" class="J_Menu menu site-map" data-fn-name="fn-site-map" data-spm="1997525077"><div class="menu-hd"><a href="http://www.taobao.com/sitemap.php?id=sitemap2" target="_top"><span class="g-icon"></span><span>网站导航</span></a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon"></span></span></div><div class="menu-bd"><div id="J_SiteMapBd" class="menu-bd-panel"></div></div></li></ul>
</div>
</div>
<div class="skin-default" data-name="sm-nav-2014" data-skin="default" data-guid="1399376595986" id="guid-1399376595986" data-version="85" data-type="3"><div class="module" data-spm="a214d6t">
<div class="sm-nav-2014">
<div class="head clearfix">
<div class="market-wrap">
<div class="clearfix">
<div class="logo">
<a href="./index.jsp"><img src="./images/index/logo.png"  alt="天彩服装超市" height="45"></a>
</div>
<div class="more-button">
<div class="more-label"><span>更多市场</span><b></b></div>
<div class="more-content"></div>
</div>
<div class="search">
<form action="http://www.taobao.com/market/nanzhuang/foo" accept-charset="gbk" class="market-search" method="GET">
<div class="search-wrap">
<div class="input-wrap">
<div class="opt">
<span data-type="item" data-action="http://s.taobao.com/list?seller_type=taobao&amp;style=grid" data-allaction="http://s.taobao.com/search" data-target="http://s.taobao.com/list?seller_type=taobao&amp;style=grid" data-cat="50344007">宝贝</span>
<b class="icon"></b>
<div class="opt-drop">
<ul>
<li><a href=""><span data-type="shop" data-shop="yes" data-action="//s.taobao.com/search" data-target="//s.taobao.com/search" data-cat="文字">店铺</span></a></li>
</ul>
</div>
</div>
<input type="text" class="input search-keyword" name="q" autocomplete="off">
</div>
<a class="local no-bg" href="" title="">搜男装</a>
<a class="global" href="" title="搜全站">搜全站</a>
</div>
<div class="search-hot-link search-hot-link-hide">
</div>
</form>
</div>
</div>
</div>
</div>
<div class="nav">
<div class="sm-item-list clearfix">
<div class="market-wrap list-wrap">
<ul class="main-list hl-list">
<li>
<a href="http://www.taobao.com/market/nanzhuang/index.php" class="list-index current" data-tag="index">首页
<span class="icon">&#13427;</span>
</a></li>
<li><a data-tag="xinpin" href="http://www.taobao.com/market/nanzhuang/xinpin.php?spm=a217q.1218506.1998076743.1.bp0jSJ">尚新频道<b><i>尚新频道</i></b></a></li>
<li><a data-tag="nanchao" href="http://www.taobao.com/market/nanzhuang/citiao/nanchao.php">个性潮流<b><i>个性潮流</i></b></a></li>
<li><a data-tag="shishang" href="http://www.taobao.com/market/nanzhuang/citiao/ssxx.php">时尚休闲<b><i>时尚休闲</i></b></a></li>
<li><a data-tag="swss" href="http://www.taobao.com/market/nanzhuang/swss.php">商务职场<b><i>商务职场</i></b></a></li>
<li><a data-tag="taoxiansheng" href="http://www.taobao.com/go/market/nanzhuang/txs.php">淘先生·原创新品<b><i>淘先生·原创新品</i></b></a></li>
<li><a data-tag="temaihui" href="http://www.taobao.com/market/nanzhuang/taotlets.php">淘特来斯·品牌<b><i>淘特来斯·品牌</i></b></a></li>
</ul>
<div class="menu-button hl-list">
<ul class="main-list">
</ul>
<a data-tag="people-list" href="http://bangpai.taobao.com/group/14171512.htm?spm=0.0.0.0.eYZbUh">商家入口<b><i>商家入口</i></b></a>
</div>
</div>
</div>
<div class="sm-cat-list clearfix current">
<div class="fix-box" style="position: relative;">
<div class="market-wrap clearfix market-ext-wrap" style="">
<div class="market-nav-ext" data-open="open" data-spm-ab="0" style="display: none; left: 0px; background-image: url(http://gtms03.alicdn.com/tps/i3/TB1p.FMHpXXXXX8XpXX_h219XXX-130-180.jpg);">
<div class="bd-fix" style="left: 0px;"></div>
</div>
</div>
<div data-spm-ab="static" class="market-wrap clearfix sm-cat-list-main">
<dl class="" data-ext-img="http://gtms03.alicdn.com/tps/i3/TB1p.FMHpXXXXX8XpXX_h219XXX-130-180.jpg">
<dt class="clearfix">
<div class="cat-title firstTitle" >
<a href="./index.jsp?categoryId=20001">男装</a>
</div>
<span class="lala"></span>
</dt>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20001">夏款</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20001">短袖</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20001">长袖</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20001">纯棉</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20001">修身</a></dd>
</dl>
<dl class="" data-ext-img="http://gtms04.alicdn.com/tps/i4/TB1qdFiGpXXXXaNXpXX_h219XXX-130-180.jpg">
<dt class="clearfix">
<div class="cat-title firstTitle" data-tag="">
<a href="./index.jsp?categoryId=20002">女装</a>
</div>
<span class="lala"></span>
</dt>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20002">短袖</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20002">长袖</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20002">修身</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20002">韩版</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20002">纯色</a></dd>
</dl>
<dl class="" data-ext-img="http://gtms03.alicdn.com/tps/i3/T1si7LFLtXXXaCwpjX.png">
<dt class="clearfix">
<div class="cat-title firstTitle" data-tag="">
<a href="./index.jsp?categoryId=20003">内衣</a>
</div>
<span class="lala"></span>
</dt>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20003">夏款</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20003">清仓</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20003">哈伦裤</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20003">小脚裤</a></dd>
</dl>
<dl class="" data-ext-img="http://gtms02.alicdn.com/tps/i2/TB10hlEHpXXXXaHapXX_h219XXX-130-180.jpg">
<dt class="clearfix">
<div class="cat-title firstTitle" data-tag="">
<a href="./index.jsp?categoryId=20004">鞋子</a>
</div>
<span class="lala"></span>
</dt>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20004">夏季款</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20004">日系</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20004">美式</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20004">户外</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20004">简约</a></dd>
</dl>
<dl class="" data-ext-img="http://gtms03.alicdn.com/tps/i3/TB1QmRmGpXXXXaCXXXX_h219XXX-130-180.jpg">
<dt class="clearfix">
<div class="cat-title firstTitle" data-tag="">
<a href="./index.jsp?categoryId=20005">童装</a>
</div>
<span class="lala"></span>
</dt>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20005">夏款</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20005">夹克</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20005">卫衣</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20005">西服</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20005">风衣</a></dd>
</dl>
<dl class="" data-ext-img="http://gtms01.alicdn.com/tps/i1/TB1rQRhGpXXXXa5XpXX_h219XXX-130-180.jpg">
<dt class="clearfix">
<div class="cat-title firstTitle" >
<a href="./index.jsp?categoryId=20006">箱包</a>
</div>
<span class="lala"></span>
</dt>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20006">休闲</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20006">日系韩风</a></dd>
<dd class="cat-title" data-tag=""><a href="./index.jsp?categoryId=20006">欧美街头</a></dd>
</dl>
</div>
</div>
</div>
</div>
</div>
</div></div>
<div id="page">
<div id="content">
<div class="J_Layout layout grid-m0">
<div class="col-main">
<div class="main-wrap J_Region"><div class="J_Module skin-default" data-name="style-module-title" data-skin="default" data-guid="14308237812090" id="guid-14308237812090" data-version="10" data-type="3"><div class="module" data-spm="1998509990"><div class="tb-module style-module-title clearfix">
<h3 class="title"><a href="http://www.taobao.com/go/market/nanzhuang/txs.php" target="_blank"><img src="./images/index/TB1M0SbHFXXXXXKapXXm04j_XXX-450-35.jpeg"></a></h3>
<div class="quick-links">
<a href="http://www.taobao.com/go/market/nanzhuang/txs.php" target="_blank" class="module-more">进入淘先生<i class="iconfont"></i></a>
</div>
</div>
</div></div><div class="J_Module skin-default" data-name="n-product-item-promo-2015qx" data-skin="default" data-guid="14292602738540" id="guid-14292602738540" data-version="26" data-type="3"><div class="module" data-spm="1998493170" data-spm-max-idx="20"><div class="tb-module tb-lazyload n-product-item-promo-2015qx">
<textarea class="J_dynamic_data" style="display:none;">        {"items":[{"tms_type":"jsonp","data_type":"tce","data_para":{"tce_sid":49546}}],"moduleinfo":{}}      </textarea>
<h2 class="b-title ms-yh"> <span></span></h2>
<ul class="list" id="J_ModuleList" data-now="2015/05/30 10:17:51">
       <%
       int cursor = 1;
       for(Item item : items) { 
       	if(cursor % 4 == 0) { 
       %>
       	 <li class="nomr" data-store="297"> 
                <div class="inner">
                        <div class="pic-wrap">
                              <div class="ipic img-vertical">
                                    <a href="detail.jsp?itemCode=<%=item.getItemCode() %>" class="img-wrap" target="_blank" >
                                          <img width="290" src=<%=item.getDefaultUrl() %> alt="">
                                    </a>
                              </div>
                        </div>
                        <div class="shop-mask ">                             

                              <div class="shop-logo img-vertical"><a class="img-wrap" href="#"  target="_blank" ><img src=<%=item.getBrandUrl() %> alt=""></a></div>
                              <h3 class="ms-yh"><a href="#" title="Q9 男装集市店" target="_blank" ><%=item.getBrandName() %></a></h3>
                              
                              <div class="txt"><span class="statu">疯抢进行中</span> <span class="num"><em>仅剩</em><strong><%=item.getInventory() %></strong>件</span> 
                              </div>
                        </div>
                        <div class="info">
                              <h3 class="title"><a href="detail.jsp?itemCode=<%=item.getItemCode() %>" target="_blank" ><%=item.getItemTitle() %></a></h3>
                              <div class="price">抢新价 <em class="ms-yh ">￥</em><span><%=item.getPrice()%></span></div>
                              <a class="btn" href="detail.jsp?itemCode=<%=item.getItemCode() %>" target="_blank">立即抢</a>
                        </div>
                  </div> 
            </li>
       
       <% } else { %>
            <li class="" data-store="297"> 
                <div class="inner">
                        <div class="pic-wrap">
                              <div class="ipic img-vertical">
                                    <a href="detail.jsp?itemCode=<%=item.getItemCode() %>" class="img-wrap" target="_blank" >
                                          <img width="290" src=<%=item.getDefaultUrl() %> alt="">
                                    </a>
                              </div>
                        </div>
                        <div class="shop-mask ">                             

                              <div class="shop-logo img-vertical"><a class="img-wrap" href="#"  target="_blank" ><img src=<%=item.getBrandUrl() %>></a></div>
                              <h3 class="ms-yh"><a href="#" title="Q9 男装集市店" target="_blank" ><%=item.getBrandName() %></a></h3>
                              
                              <div class="txt"><span class="statu">疯抢进行中</span> <span class="num"><em>仅剩</em><strong><%=item.getInventory() %></strong>件</span> 
                              </div>
                        </div>
                        <div class="info">
                              <h3 class="title"><a href="detail.jsp?itemCode=<%=item.getItemCode() %>" target="_blank" ><%=item.getItemTitle() %></a></h3>
                              <div class="price">抢新价 <em class="ms-yh ">￥</em><span><%=item.getPrice()%></span></div>
                              <a class="btn" href="detail.jsp?itemCode=<%=item.getItemCode() %>" target="_blank">立即抢</a>
                        </div>
                  </div> 
            </li>
       <%} 
       		cursor++; 
       	} %>  
</ul>
</div>
</div></div>
</div>
</div></div>
</div>
</div>