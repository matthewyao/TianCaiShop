<%@page import="com.tiancai.util.BeanFactory"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.tiancai.util.DBConnector"%>
<%@page import="java.util.List"%>
<%@page import="com.tiancai.bean.Item"%>
<%@page import="java.util.ArrayList"%>
<%
	String itemCode = request.getParameter("itemCode");
	Item item = new Item();
	Connection conn = DBConnector.getConnection();
	String sql = "SELECT i.*,m.url FROM item i " + 
			"LEFT JOIN material m ON m.`itemCode`=i.`itemCode` " + 
			"WHERE i.itemCode='" + itemCode + "' and m.type=1";
	Statement stmt = DBConnector.createStatement(conn);
	ResultSet rs = DBConnector.executeQuery(stmt,sql);
	item = BeanFactory.buildItem(rs,true);
%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>    
<html class="ks-webkit537 ks-webkit ks-chrome39 ks-chrome"><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">
 <title>��ʷ�װ����-��Ʒ����</title>  
 <link rel="stylesheet" href="./css/index-min.css">
<link charset="utf-8" href="./css/wlroute.css" rel="stylesheet">
<link charset="utf-8" href="./css/new_suggest-min.css" rel="stylesheet">
<link charset="utf-8" href="./css/page_pine_module-min.css" rel="stylesheet">
<body data-spm="1" class="tab-active-index-0 page-detail detached  ">
 <div id="J_SiteNav" class="site-nav">
 <div id="J_SiteNavBd" class="site-nav-bd">
 <ul id="J_SiteNavBdL" class="site-nav-bd-l"><li id="J_LoginInfo" class="J_Menu menu login-info" data-fn-name="fn-login-info" data-spm="754894437">
 <div class="menu-hd"><a href="http://i.taobao.com/my_taobao.htm?ad_id=&am_id=&cm_id=&pm_id=1501036000a02c5c3739" target="_top" class="login-info-nick">tb7009456_66</a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon">�_</span></span></div><div class="menu-bd"><div class="menu-bd-panel"><a href="http://i.taobao.com/my_taobao.htm?ad_id=&am_id=&cm_id=&pm_id=1501036000a02c5c3739" target="_top" id="J_UserAvatar" class="user-avatar"><img src="./images/index/s.gif" width="80" height="80" alt="tb7009456_66��ͷ��"></a><div class="user-info"><p class="user-operate"><a href="http://member1.taobao.com/member/fresh/account_security.htm" target="_top">�˺Ź���</a><span class="site-nav-pipe">|</span><a href="https://login.taobao.com/member/logout.jhtml?f=top&out=true&redirectURL=http%3A%2F%2Fitem.taobao.com%2Fitem.htm%3Fid%3D44788503208%26ali_refid%3Da3_430319_1007%3A1103452172%3AN%3A140000024652_merchants_abcdzxyzx%3Aceab03e6b9ecfd20123c74854dc4ee2d%26ali_trackid%3D1_ceab03e6b9ecfd20123c74854dc4ee2d%26spm%3Da217f.7278617.1997506545.23.WS39MO" target="_top">�˳�</a></p><p id="J_Global_UserVipLevel"></p><p><a href="http://vip.taobao.com/privilege/privilege_detail.htm" target="_top"><strong id="J_UserPrivilegeCount">�鿴�ҵĻ�Ա��Ȩ</strong></a></p></div><div id="J_UserPrivilegeTip" class="user-privilege-tip"></div><div id="J_UserMedal" class="user-medal site-nav-loading"><div class="user-medal-bd"><div id="J_UserMedalCont" class="user-medal-cont"></div></div><a href="javascript:;" target="_top" id="J_ArrowL" class="medal-arrow arrow-l">&lt;</a><a href="javascript:;" target="_top" id="J_ArrowR" class="medal-arrow arrow-r">&gt;</a></div></div></div></li><li id="J_Tmsg" class="tmsg" data-spm="1997563201"><div class="J_Menu menu" data-fn-name="fn-tmsg"><div class="menu-hd J_Tmsg_Basic tmsg_basic"><span class="J_Tmsg_Logo tmsg_logo_area tmsg_logo_active" style="zoom:1;"><span class="J_Tmsg_Logo_Loading tmsg_logo_loading" style="display: none;"></span> <span class="J_Tmsg_Logo_Icon tmsg_logo_icon g-icon">�\</span> <span class="J_Tmsg_Logo_Text tmsg_logo_text">��Ϣ</span> <span class="J_Tmsg_Logo_Unread tmsg_logo_unread">1</span></span> <span class="arrow-icon-wrapper"><span class="g-icon arrow-icon">�_</span></span></div><div class="menu-bd"><div class="J_Tmsg_Panel_Apps tmsg_panel_apps"><div class="J_Tmsg_Panel_Head tmsg_panel_head">   <h2 class="J_Tmsg_Panel_Title tmsg_panel_title">δ������Ϣ</h2>   <a class="J_Tmsg_Button_ReadAll tmsg_button_read-all" data-tip="ignoreAll" title="����������Ϣ" href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#">ȫ����Ϊ�Ѷ�</a></div><div class="J_Tmsg_Panel_AppsBody tmsg_panel_body">   <img style="display:block;margin:30px auto" width="48" height="48" src="./images/index/T1HcvHXd4nXXb6ROYh-48-48.gif"></div><div class="J_Tmsg_Panel_Foot tmsg_panel_foot">   <a class="J_Tmsg_Button_Setting tmsg_button_setting" data-tips="setting" title="��Ϣ����" href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#">����</a>   <a class="J_Tmsg_Button_Feedback tmsg_button_feedback" data-tips="feedback" title="�������" href="http://ur.taobao.com/survey/view.htm?spm=1.6659421.0.0.Nmaw77&id=1990&scm=1229.325.1.1" target="_blank">����</a>   <span class="J_Tmsg_Button_CheckAll_Wrap tmsg_button_check-all_wrap">       <a class="J_Tmsg_Button_CheckAll tmsg_button_check-all" href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" target="_blank">�鿴ȫ��</a>   </span></div></div></div></div><div class="J_Tmsg_Panels tmsg_panels"><div class="J_Tmsg_Panel_Detail tmsg_panel_detail"></div><div class="J_Tmsg_Panel_history tmsg_panel_history"></div><div class="J_Tmsg_Panel_Strong tmsg_panel_strong"></div><div class="J_Tmsg_Panel_Setting tmsg_panel_setting"></div></div></li><li class="menu mobile" data-spm="1997563273"><div class="menu-hd"><a href="http://www.taobao.com/m" target="_top">�ֻ����Ա�</a></div></li><li id="J_Weekend" class="menu weekend" data-spm="1996803849"></li></ul>
 <ul id="J_SiteNavBdR" class="site-nav-bd-r"><li class="menu home" data-spm="1581860521"><div class="menu-hd"><a href="http://www.taobao.com/" target="_top" class="h">�Ա�����ҳ</a></div></li><li class="J_Menu menu my-taobao" data-spm="1997525045"><div class="menu-hd J_MenuMyTaobao"><a href="http://i.taobao.com/my_taobao.htm" target="_top">�ҵ��Ա�</a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon">�_</span></span></div><div class="menu-bd menu-list"><div class="menu-bd-panel"><a href="http://trade.taobao.com/trade/itemlist/list_bought_items.htm" target="_top">���򵽵ı���</a><a href="http://lu.taobao.com/newMyPath.htm" target="_top">�ҵ��㼣</a><a href="http://dongtai.taobao.com/hub/new_arrival.htm?scm=1046.1.7.1" target="_top">�ҵ�����</a><a href="http://guang.taobao.com/?scm=2022.1.1.1" target="_top">����� <em class="J_GuangCount guang-count"></em></a><a href="http://daren.taobao.com/" target="_top">�Ա�����</a><a href="http://love.taobao.com/" target="_top">�»�</a></div></div></li><li id="J_MiniCart" class="J_Menu menu menu-empty mini-cart" data-fn-name="fn-mini-cart" data-spm="1997525049"><div class="menu-hd"><a href="http://cart.taobao.com/cart.htm?from=mini&ad_id=&am_id=&cm_id=&pm_id=1501036000a02c5c3739" target="_top" id="mc-menu-hd"><span class="g-icon">�]</span><span>���ﳵ</span></a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon">�_</span></span></div><div class="menu-bd"><div class="menu-bd-panel"></div></div></li><li class="J_Menu menu favorite" data-spm="1997525053"><div class="menu-hd"><a href="http://shoucang.taobao.com/shop_collect_list.htm" target="_top"><span class="g-icon">�^</span><span>�ղؼ�</span></a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon">�_</span></span></div><div class="menu-bd menu-list"><div class="menu-bd-panel"><a href="http://shoucang.taobao.com/item_collect.htm" target="_top">�ղصı���</a><a href="http://shoucang.taobao.com/shop_collect_list.htm" target="_top">�ղصĵ���</a></div></div></li><li class="menu guide" data-spm="1997563209"><div class="menu-hd"><a href="http://list.taobao.com/browse/cat-0.htm?taobao_from=6" target="_top">��Ʒ����</a></div></li><li class="site-nav-pipe">|</li><li class="J_Menu menu seller-center" data-spm="1997525073"><div class="menu-hd"><a href="http://mai.taobao.com/seller_admin.htm" target="_top">��������</a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon">�_</span></span></div><div class="menu-bd menu-list"><div class="menu-bd-panel"><a href="http://mai.taobao.com/seller_admin.htm" target="_top">��ѿ���</a><a href="http://trade.taobao.com/trade/itemlist/list_sold_items.htm" target="_top">�������ı���</a><a href="http://sell.taobao.com/auction/goods/goods_on_sale.htm" target="_top">�����еı���</a><a href="http://fuwu.taobao.com/?tracelog=tbdd" target="_top">���ҷ����г�</a><a href="http://daxue.taobao.com/" target="_top">������ѵ����</a></div></div></li><li class="menu service" data-spm="754895749"><div class="menu-hd"><a href="http://service.taobao.com/support/main/service_center.htm" target="_top">��ϵ�ͷ�</a></div></li><li id="J_SiteMap" class="J_Menu menu site-map" data-fn-name="fn-site-map" data-spm="1997525077"><div class="menu-hd"><a href="http://www.taobao.com/sitemap.php?id=sitemap2" target="_top"><span class="g-icon">�[</span><span>��վ����</span></a><span class="arrow-icon-wrapper"><span class="g-icon arrow-icon">�_</span></span></div><div class="menu-bd"><div id="J_SiteMapBd" class="menu-bd-panel"></div></div></li></ul>
 </div>
 </div>
           <!-- 2014�°�ҳͷ -->
<div id="J_Header"><div class="tb-header" role="banner">
<div class="tb-header-content">
<div class="tb-header-logo">
    <a href="http://www.taobao.com/" target="_blank" title="�Ա���">
        <img height="38" alt="�Ա���logo" src="./images/detail/T1Kz0pXzJdXXXIdnjb-146-58.png">
    </a>
</div><div id="J_Market" class="tb-header-market" role="dialog">
    <a href="javascript:" class="tb-header-market-hd">�����г�<i class="tb-header-market-icon"><em></em><span></span></i></a>
    <div class="tb-header-market-bd"></div>
</div><div class="J_Search tb-header-search search " role="search">
    <div class="search-panel">
        <form target="_top" action="http://s.taobao.com/search" name="search" class="J_SearchForm">
            <div class="search-buttons">
                <button class="J_PrimarySearch search-button primary" type="submit">���Ա�</button>
                
                <button class="J_SecondarySearch search-button secondary" type="submit" data-action="//shop58241739.taobao.com/search.htm">
                    �ѱ���
                </button>
                
            </div>
            <div class="search-panel-fields">
                <div class="search-combobox" id="ks-component916"><div class="search-combobox-input-wrap"><input class="search-combobox-input" name="q" accesskey="s" autocomplete="off" aria-haspopup="true" aria-combobox="list" role="combobox" x-webkit-grammar="builtin:translate" aria-label="�������������ֻ��������ʷ��ѡ��"></div></div>
            </div>
            <input type="hidden" value="newHeader" name="s_from">
            <input type="hidden" name="ssid" value="s5-e">
            <input type="hidden" name="search_type" value="item">
            <input type="hidden" name="sourceId" value="tb.item">
        </form>
    </div>
</div></div>
</div></div>
      <div id="page">
 <div id="content" class="eshop tb-content " data-cat="J_Cat">

 <div id="bd">
 <div id="detail">

	<div class="tb-detail-bd tb-clear">
<div class="tb-summary tb-clear">
 <div class="tb-item-info tb-clearfix">
 <div class="tb-item-info-l">
 <div class="tb-gallery">
 <div class="tb-booth tb-pic tb-main-pic" data-spm="20140008">
 <a href="javascript:;" rel="nofollow" data-spm-click="gostr=/tbdetail;locaid=d1" target="_blank">      <span class="ks-imagezoom-wrap">
 <img id="J_ImgBooth"  data-haszoom="700" src="./images/detail/detail_01.jpg">
 <span class="ks-imagezoom-icon"></span>
 <span style="position: absolute; top: 200px; left: 0px; width: 200px; height: 200px; display: none;" class="ks-imagezoom-lens"></span>
 </span>
     </a>
</div>
<ul id="J_UlThumb" class="tb-thumb tb-clearfix" data-spm="20140009">
     <li class="tb-selected">	 
		<div class="tb-pic tb-s50">
			<a href="#" data-spm-click="gostr=/tbdetail;locaid=d1">
				<img  src="./images/detail/detail_01.jpg"></a>
		</div>	
	</li> 
	<li class="tb-selected">	 
		<div class="tb-pic tb-s50">
			<a href="#" data-spm-click="gostr=/tbdetail;locaid=d1">
				<img  src="./images/detail/detail_01.jpg"></a>
		</div>	
	</li> 
</ul>
  </div>
 <div id="J_Social" data-spm="20140010" class="tb-social tb-clearfix">
 <ul>
<li data-spm="d1" class="tb-social-fav">
<a data-spm-click="gostr=/tbdetail;locaid=d2" class="J_TDialogTrigger" href="http://favorite.taobao.com/popup/add_collection.htm?id=44788503208&itemtype=1&scjjc=1&_tb_token_=7b5b103e51b8f" data-closebtn="true" data-height="260" data-width="440" data-spm-protocol="" shortcut-key="c" shortcut-label="�ղر���" shortcut-effect="click">
<i class="tb-icon"></i> �ղر���<em class="J_FavCount"> (<%=item.getCollectTimes() %>����)</em>
</a>
</li>
 <li class="tb-social-split"></li>
 <li class="tb-social-share">
 <a data-spm-click="gostr=/tbdetail;locaid=d2" class="J_Share" href="javascript:;" data-init="false" shortcut-key="f" shortcut-label="������" shortcut-effect="click">
 <i class="tb-icon"></i> ����
 </a>
 </li>
 <li class="tb-social-pk">
 <a data-spm-click="gostr=/tbdetail;locaid=d4" class="J_TbPK" href="javascript:;" data-closebtn="true" data-height="260" data-width="440" shortcut-key="d" shortcut-label="����Ա�" shortcut-effect="click">
 <i class="tb-icon"></i> ����Ա�<em class="J_PK"></em>
 </a>
 </li>
 </ul>
</div><div id="J_SocialPkErrorInfo"></div>
  </div>
 <div class="tb-item-info-r">
 <div class="tb-property tb-property-x">
 <div class="tb-wrap">

 <div id="J_Title" class="tb-title" shortcut-key="t" shortcut-label="�鿴��������" shortcut-effect="focus">
	<h3 class="tb-main-title" data-title="2015ŷ��ɴ����ȹ��������ȹ��ɴɡȹ��ȹ����ȹ��ȹ��">
    	 <%=item.getItemTitle() %>
   </h3>
   <p class="tb-subtitle">
		<%=item.getItemDesc() %>
 </p>
   <div id="J_TEditItem" class="tb-editor-menu">	        
   <div id="J_Report" class="tb-report">                	
   <p class="tb-report-hd">�ٱ�</p>                
   	<ul class="tb-report-bd">                		
   		<li><a id="J_isuit" href="#" target="_blank">�ٱ�����Ʒ</a></li>                		
  		 <li><a href="#" target="_blank">��Ʒ�ٱ���ʾ</a></li>
         <li><a href="#" target="_blank">���ﰲȫ��ƭ</a></li>
         <li><a href="#" target="_blank">���������ع�</a></li>
   </ul>        
      </div>
    </div>
 </div>

 
 <ul class="tb-meta tb-promo-meta">
  <li id="J_StrPriceModBox" class="tb-detail-price tb-clearfix J_PriceItem" shortcut-key="p" shortcut-label="�鿴�۸�" shortcut-effect="focus" data-price-wight="0">
<span class="tb-property-type"> �۸�</span>
<div class="tb-property-cont">
<strong id="J_StrPrice" style="font-size: 14px; color: rgb(60, 60, 60); font-weight: 400; text-decoration: line-through;"><em class="tb-rmb">��</em><em class="tb-rmb-num">169.00</em></strong></div>
</li>
<li id="J_PromoPrice" class="tb-detail-price tb-clearfix tb-promo-price"><span class="tb-property-type">�Ա���</span>

<div class="tb-property-cont">
<div id="J_Promo" class="tb-promo-mod">
<div id="J_PromoHd" class="tb-promo-hd tb-promo-item"><div class="tb-promo-item-bd"><strong class="tb-promo-price"><em class="tb-rmb">��</em><em id="J_PromoPriceNum" class="tb-rmb-num"><%=item.getPrice() %></em></strong><span id="J_PromoType" class="tb-promo-type">�Ա�Ůװ��</span><a id="J_PromoMore" class="tb-promo-more" href="javascript:;"><i class="tb-arrow-roll"><em></em><span></span></i></a><span id="J_PromoTips" class="tb-promo-tips"></span></div><div class="tb-promo-item-ft"><div id="J_PromoInfo" class="tb-promo-info" style="display: none;"></div></div></div>
<div id="J_PromoBd" class="tb-promo-bd"><ul><li class="tb-promo-item"><div class="tb-promo-item-l"><span class="tb-promo-price"><em class="tb-rmb">��</em>89.00</span><span class="tb-promo-type">�����ؼ�</span></div><div class="tb-promo-item-r"><span class="tb-promo-tips"></span><span class="tb-promo-info"></span></div></li></ul><p>���ϼ۸���ڸ���ʱѡ������</p></div>
</div>
</div>

</li>



<li class="tb-clearfix" id="J_OtherDiscount">
 <div class="tb-other-discount">
 <div id="J_RedGift" class="tb-red-gift"></div>
 <div id="J_GoldCoin" class="tb-coin"><div class="tb-other-discount-content"><i class="tb-icon-coin"></i>�Խ�ҿɵ�<strong>0.86</strong>Ԫ</div></div>
 </div>
</li>

    
 <li id="J_Counter" class="tb-counter">
 <span class="tb-property-type">����</span>
 <div class="tb-counter-bd">
 <div class="tb-rate-counter">
 <a id="J_ReviewTabTrigger" href="javascript:;">
 <strong id="J_RateCounter">55</strong>
 <span>�ۼ�����</span>
 </a>
 </div>
 <div class="tb-sell-counter">
 <a href="javascript:;" title="30�������۳�137�������н��׳ɹ�101��">
 <strong id="J_SellCounter">101</strong>
 <span>���׳ɹ�</span>
 </a>
 </div>
 </div>
 </li>
 <li id="J_MorePromoSlider" class="tb-more-promo-slider tb-clearfix" style="display: none">
 <ul id="J_MorePromoList"></ul>
 <div class="post-script">���ϼ۸���ڸ���ʱѡ������</div>
 </li>
 </ul><div class="tb-logistic tb-clearfix"><span class="tb-name tb-property-type">����</span><div id="J_LogisticInfo" class="tb-logistic-info"><div class="wl-areainfo clearfix"><span id="J_WlAreaInfo" class="wl-areacon"><span id="J-From">�㶫����</span> �� <span id="J-To"><span class="wl-addressinfo" id="J_WlAddressInfo" title="�Ϻ��ֶ�����">�Ϻ��ֶ����� <s></s></span></span></span><span class="loading" id="J-Loading"></span></div><div id="J_WlServiceInfo" class="wl-serviceinfo"><span class="wl-servicetitle" id="J_WlServiceTitle">��� <span class="wl-yen">��</span>10.00 <s></s></span></div><div id="J_WlServiceTitleMark" class="wl-serviceinfo"><span class="wl-servicemarkinfo" id="J_ServiceMarkInfo">�����Ԥ�����ڶ���6��2�գ��ʹ�</span></div></div></div>     <div id="��J_logistic��"></div>
   
    <div id="J_SepLine" class="sep-line"></div>
          <div id="J_isku" data-spm="20140002" class="tb-key tb-key-sku " shortcut-key="i" shortcut-label="��ѡ����" shortcut-effect="focus">
<div class="tb-skin">
 <dl class="J_Prop J_TMySizeProp tb-size tb-prop tb-clearfix      J_Prop_measurement  ">
<dt class="tb-property-type">����</dt>
<dd>
<ul data-property="����" class="J_TSaleProp tb-clearfix">
<li data-value="20509:28313"><a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#"><span>XS</span></a><i>��ѡ��</i></li>
<li data-value="20509:28314"><a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#"><span>S</span></a><i>��ѡ��</i></li>
<li data-value="20509:28315"><a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#"><span>M</span></a><i>��ѡ��</i></li>
<li data-value="20509:28316"><a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#"><span>L</span></a><i>��ѡ��</i></li>

</ul></dd></dl>
<span id="J_TMySize" class="size-btn" data-template-id="1709587" data-value-type="1" data-value="1623" data-value-rt="16">&#8250; ��������</span>
 <dl class="J_Prop tb-prop tb-clearfix   J_Prop_Color     ">
<dt class="tb-property-type">��ɫ����</dt>
<dd>
<ul data-property="��ɫ����" class="J_TSaleProp tb-clearfix tb-img">
<li data-value="1627207:28320">
<a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" style="background:url() center no-repeat;">
<span>��ɫ</span>
</a>
<i>��ѡ��</i>
</li>
<li data-value="1627207:30155">
<a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" style="background:url() center no-repeat;">
<span>��ɫ</span>
</a>
<i>��ѡ��</i>
</li>
<li data-value="1627207:28323">
<a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" style="background:url() center no-repeat;">
<span>��ɫ</span>
</a>
<i>��ѡ��</i>
</li>
</ul></dd></dl>
<dl class="tb-amount tb-clearfix">

<dt class="tb-property-type">����</dt>
<dd>
<span class="tb-stock" id="J_Stock">
 <a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" hidefocus="" class="tb-reduce J_Reduce tb-iconfont tb-disable-reduce">&#411;</a><input id="J_IptAmount" type="text" class="tb-text" value="1" maxlength="8" title="�����빺����"><a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" hidefocus="" class="tb-increase J_Increase tb-iconfont">&#410;</a>��
 </span>
<em>(���<span id="J_SpanStock" class="tb-count">1018</span>��)</em>
</dd>
</dl>
<dl id="J_DlChoice" class="tb-choice tb-clearfix">
<dt>��ѡ��</dt>
<dd>
<em>"����"</em><em>"��ɫ����"</em></dd>
</dl>
<div class="tb-sure" id="J_SureSKU"><p class="tb-choice">�빴ѡ��Ҫ����Ʒ��Ϣ</p>
<p class="tb-sure-continue"><a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" id="J_SureContinue">ȷ��</a></p>
<span class="close J_Close tb-iconfont">&#223;</span>
</div>
<div class="tb-msg tb-hidden"><p class="tb-stop">��������</p></div><div class="tb-msg tb-hidden"><p class="tb-stop">���Ժ�����</p></div><div id="J_juValid" class="tb-action tb-clearfix ">
<div class="tb-btn-buy"><a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" data-addfastbuy="true" title="����˰�ť������һ��ȷ�Ϲ�����Ϣ" class="J_LinkBuy" data-spm-click="gostr=/tbdetail;locaid=d1" shortcut-key="b" shortcut-label="��������" shortcut-effect="click">��������</a></div>
<div class="tb-btn-add"><a href="http://item.taobao.com/item.htm?id=44788503208&ali_refid=a3_430319_1007:1103452172:N:140000024652_merchants_abcdzxyzx:ceab03e6b9ecfd20123c74854dc4ee2d&ali_trackid=1_ceab03e6b9ecfd20123c74854dc4ee2d&spm=a217f.7278617.1997506545.23.WS39MO#" title="���빺�ﳵ" class="J_LinkAdd" data-spm-click="gostr=/tbdetail;locaid=d2" shortcut-key="a" shortcut-label="���빺�ﳵ" shortcut-effect="click"><i class="tb-iconfont">&#365;</i>���빺�ﳵ</a></div>
</div>
</div>
</div>
 <div class="tb-extra" id="J_tbExtra">
   <dl id="J_ServiceIcon" class="tb-service-icon" data-spm="1000126" style="display: block;">
 <dt>��ŵ</dt>
 <dd id="J_ServiceIconBd"><a class="J_Cont" href="http://xiaobao.taobao.com/contract/item_service.htm?scm=1010.100.100.1&contract_id=7d&item_id=44788503208" target="_blank" title="7��������"><img src="./images/detail/T1EQA5FpVgXXceOP_X-16-16.jpg">7��������</a>
   </dd>
 </dl>
      <dl data-spm="1000126">
 <dt>֧��</dt>
 <dd>
   <a href="https://f.alipay.com/moonlight/channel.htm" target="_blank" title="����" data-spm="">
 <i class="tb-icon-hua-bei-pay"></i>
 ����
 </a>
   <a href="http://www.taobao.com/go/act/sale/kadepay.php?spm=2013.1.1000126.9.ohEnsm&ad_id=&am_id=&cm_id=14001249574b437a411d&pm_id=" target="_blank" title="���ÿ�֧��" data-spm="d9">
 <i class="tb-icon-credit-card-payment"></i>
 ���ÿ�֧��
 </a>
   <a href="http://abc.alipay.com/cool/jfb.html" target="_blank" title="���ֱ�" data-spm="d19">
 <i class="tb-icon-jifen"></i>
 ���ֱ�
 </a>
   </dd>
 </dl>
</div>

    </div>
 </div>  </div>
</div>

</div><div class="tb-sidebar tb-clear">
  <div data-spm="1000126" id="J_ShopInfo" class="tb-shop-info tb-shop-info-gold-border" data-creditscore="18629" data-creditflag="cap" data-rateurl="//rate.taobao.com/user-rate-49be3a1d39ea4bafc837c3f5624db255.htm">
 <a class="J_ShopInfoHeader tb-shop-info-bg" href="http://www.taobao.com/go/act/jpmj.php" target="_blank"><img width="198" src="./images/detail/TB1zIlNFVXXXXXtXpXXxwHxIVXX-198-60.png"></a><div class="tb-shop-age"><a href="http://rate.taobao.com/user-rate-49be3a1d39ea4bafc837c3f5624db255.htm" target="_blank"><div class="tb-shop-age-content"><i class="tb-shop-age-icon"></i><span class="tb-shop-age-val">6</span><span class="tb-shop-age-desc">���ϵ�</span></div></a></div>
 <div class="tb-shop-info-wrap">
 <div class="tb-shop-info-hd">
 <div class="tb-shop-name">
 <dl>
 <dd>
 <strong>
 <a href="http://hyfushi2010.taobao.com/" title="��Ľ��" target="_blank">
 ��Ľ��
 </a>
 </strong>
 </dd>
 </dl>
 </div>
   <div class="tb-shop-rank tb-rank-cap">
 <dl>
 <dt>������</dt>
 <dd>
 <a href="http://rate.taobao.com/user-rate-49be3a1d39ea4bafc837c3f5624db255.htm" target="_blank">
   <i></i>
   </a>
 </dd>
 </dl>
 </div>
 
 <div class="tb-shop-seller">
 <dl>
 <dt>�ƹ�</dt>
 <dd>
 <a class="tb-seller-name" href="http://hyfushi2010.taobao.com/" target="_blank" title="hzwyangsan">
 hzwyangsan
 </a>
 </dd>
 </dl>
 </div>
 <div class="tb-shop-ww">
 <dl>
 <dt>��ϵ��</dt>
 <dd>
 <span class="ww-light ww-large" data-nick="hzwyangsan" data-tnick="hzwyangsan" data-encode="true"><a href="http://amos.alicdn.com/getcid.aw?v=3&site=cntaobao&groupid=0&s=1&fromid=cntaobaotb7009456_66&uid=hzwyangsan" target="_blank" class="ww-inline ww-online" title="��˿���ֱ�Ӻ����ҽ���ѡ�õı��������໥�����������飬��֧��������Ƶ�ޡ�"><span>��������</span></a></span>
 </dd>
 </dl>
 </div>
   <div class="tb-shop-icon">
 <dl>
 <dt>���ʣ�</dt>
 <dd>
   <a class="tb-icon tb-icon-alipay-persion-auth" href="http://help.alipay.com/lab/210120-210321/0-210321.htm?spm=2013.1.1000126.12" target="_blank" title="֧����������֤2009-05-20" data-spm="d12"></a>
     <a class="tb-seller-bail" href="http://www.taobao.com/go/act/special/index.php" target="_blank" title="�ѽ���3000Ԫ��֤��">
 <span class="tb-icon tb-icon-bail"></span><span class="tb-seller-bail-text">3000<span class="tb-seller-bail-unit">Ԫ</span></span>
 </a>
   </dd>
 </dl>
 </div>
   </div>
 <div class="tb-shop-info-bd">
   <div class="tb-shop-rate">
 <dl>
   <dt>����</dt>
   <dd class="tb-rate-higher">
 <a href="http://rate.taobao.com/user-rate-49be3a1d39ea4bafc837c3f5624db255.htm" target="_blank" title="�������:(ͬ��ҵƽ����-���̵÷�)/(ͬ��ҵƽ����-ͬ��ҵ������͵÷�)">
 4.8
 </a>
 </dd>
 </dl>
   <dl>
   <dt>����</dt>
   <dd class="tb-rate-higher">
 <a href="http://rate.taobao.com/user-rate-49be3a1d39ea4bafc837c3f5624db255.htm" target="_blank" title="�������:(ͬ��ҵƽ����-���̵÷�)/(ͬ��ҵƽ����-ͬ��ҵ������͵÷�)">
 4.8
 </a>
 </dd>
 </dl>
 <dl>
   <dt>����</dt>
   <dd class="tb-rate-higher">
 <a href="http://rate.taobao.com/user-rate-49be3a1d39ea4bafc837c3f5624db255.htm" target="_blank" title="�������:(ͬ��ҵƽ����-���̵÷�)/(ͬ��ҵƽ����-ͬ��ҵ������͵÷�)">
 4.8
 </a>
 </dd>
 </dl>
   </div>
   </div>
   <div class="tb-shop-info-ft">
 <a data-spm="d21" href="http://hyfushi2010.taobao.com/" target="_blank">�������</a>
 <a class="J_TDialogTrigger J_TokenSign" data-spm="d22" href="http://favorite.taobao.com/popup/add_collection.htm?id=58241739&itemid=58241739&itemtype=0&ownerid=49be3a1d39ea4bafc837c3f5624db255&scjjc=2&_tb_token_=7b5b103e51b8f" data-info="param=SCCP_2_58241739&amp;countUrl=//count.taobao.com/counter3&amp;mecuryUrl=//favorite.taobao.com/collect_item_relation---58241739-0-.htm" mercury:params="id=58241739&amp;itemid=58241739&amp;itemtype=0&amp;ownerid=49be3a1d39ea4bafc837c3f5624db255&amp;scjjc=5" data-closebtn="true" data-width="440" data-height="260">�ղص���</a>
 </div>
   </div>
 <a class="tb-gold-icon" title="��������" href="http://www.taobao.com/go/act/jpmj.php" target="_blank"></a></div>
   <div id="J_Pine" data-spm="20141001" class="tb-pine" data-sellerid="201580779" data-catid="1623" data-rootid="16" data-itemid="44788503208"><div class="tb-clearfix tuijian-module tuijian-module-detail-pine"><div class="tuijian-hd tb-clearfix"><div class="tuijian-l"><h2 class="tuijian-label">�����ֿ�</h2></div><div class="tuijian-r"><div class="refresh hidden"></div></div></div><div class="tuijian-bd tb-clearfix"><ul><li class="tuijian-item"><div class="tuijian-l"><div class="tuijian-img clearfix"><div class="pic-con"><a href="http://item.taobao.com/item.htm?id=18147533910&scm=1007.10115.6103.i44788503208&pvid=1be85db8-6ece-484b-b125-c9ea893674c3" title="2015�¿���̿� ��Ҷ��ȹ�� �ٴ��������� �ȿ�" target="_blank" class="img-con"><img src="./images/detail/T1phd7XrxhXXXXXXXX_!!0-item_pic.jpg_80x80.jpg" title="2015�¿���̿� ��Ҷ��ȹ�� �ٴ��������� �ȿ�" alt="2015�¿���̿� ��Ҷ��ȹ�� �ٴ��������� �ȿ�"></a></div></div><p class="tuijian-price"><span class="now-price"><b class="yen">��</b><b class="price">49.00</b></span></p></div></li><li class="tuijian-item"><div class="tuijian-l"><div class="tuijian-img clearfix"><div class="pic-con"><a href="http://item.taobao.com/item.htm?id=37891548001&scm=1007.10115.6103.i44788503208&pvid=1be85db8-6ece-484b-b125-c9ea893674c3" title="2015�����¿� С�����廨��˿��ȹ ̫��������ȹ�� ����ȹ��Ůȹ" target="_blank" class="img-con"><img src="./images/detail/T1jBmaFytcXXXXXXXX_!!0-item_pic.jpg_80x80.jpg" title="2015�����¿� С�����廨��˿��ȹ ̫��������ȹ�� ����ȹ��Ůȹ" alt="2015�����¿� С�����廨��˿��ȹ ̫��������ȹ�� ����ȹ��Ůȹ"></a></div></div><p class="tuijian-price"><span class="now-price"><b class="yen">��</b><b class="price">59.00</b></span></p></div></li><li class="tuijian-item"><div class="tuijian-l"><div class="tuijian-img clearfix"><div class="pic-con"><a href="http://item.taobao.com/item.htm?id=38870415596&scm=1007.10115.6103.i44788503208&pvid=1be85db8-6ece-484b-b125-c9ea893674c3" title="hy2014�¿�����ǰ���ȹ��ȹѩ�� �ļ�������Ůȹ ��ڳ�ȹŮ" target="_blank" class="img-con"><img src="./images/detail/T1Y4LhFJ0bXXXXXXXX_!!0-item_pic.jpg_80x80.jpg" title="hy2014�¿�����ǰ���ȹ��ȹѩ�� �ļ�������Ůȹ ��ڳ�ȹŮ" alt="hy2014�¿�����ǰ���ȹ��ȹѩ�� �ļ�������Ůȹ ��ڳ�ȹŮ"></a></div></div><p class="tuijian-price"><span class="now-price"><b class="yen">��</b><b class="price">59.00</b></span></p></div></li><li class="tuijian-item last"><div class="tuijian-l"><div class="tuijian-img clearfix"><div class="pic-con"><a href="http://item.taobao.com/item.htm?id=38989940369&scm=1007.10115.6103.i44788503208&pvid=1be85db8-6ece-484b-b125-c9ea893674c3" title="2015����װ�¿���ϵ���ݸ������ƴ�ȹ��A��ȹ����ȹ" target="_blank" class="img-con"><img src="./images/detail/T1VdjQFSxaXXXXXXXX_!!0-item_pic.jpg_80x80.jpg" title="2015����װ�¿���ϵ���ݸ������ƴ�ȹ��A��ȹ����ȹ" alt="2015����װ�¿���ϵ���ݸ������ƴ�ȹ��A��ȹ����ȹ"></a></div></div><p class="tuijian-price"><span class="now-price"><b class="yen">��</b><b class="price">79.00</b></span></p></div></li></ul></div></div></div>
</div>
 </div>
<body>
</html>