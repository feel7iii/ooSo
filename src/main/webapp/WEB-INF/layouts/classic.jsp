<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<title><tiles:insertAttribute name="title" /></title>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
<meta content="" name="description"/>
<meta content="" name="author"/>

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<tiles:insertAttribute name="pagexStyle" />
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="${ctx}/static/mui/assets/global/css/components-md.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/global/css/plugins-md.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/admin/layout2/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/admin/layout2/css/themes/grey.css" id="style_color"  rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/admin/layout2/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<tiles:insertAttribute name="pagevStyle" />
<link rel="shortcut icon" href="${ctx}/static/favicon.png"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-md page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo">
<!-- BEGIN HEADER -->
<tiles:insertAttribute name="header" />
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<tiles:insertAttribute name="sidebar" />
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<tiles:insertAttribute name="content" />
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<tiles:insertAttribute name="footer" />
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS -->
<tiles:insertAttribute name="pagecPlugins" />
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${ctx}/static/mui/assets/global/plugins/respond.min.js"></script>
<script src="${ctx}/static/mui/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="${ctx}/static/mui/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="${ctx}/static/mui/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<tiles:insertAttribute name="pagexPlugins" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME PLUGINS -->
<script src="${ctx}/static/mui/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/admin/layout2/scripts/layout.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/admin/layout2/scripts/demo.js" type="text/javascript"></script>
<tiles:insertAttribute name="pagevPlugins" />
<!-- END THEME PLUGINS -->
<!-- BEGIN ONLOAD JS -->
<tiles:insertAttribute name="onloadComponent" />
<!-- END ONLOAD JS -->
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>