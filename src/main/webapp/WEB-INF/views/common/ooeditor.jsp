<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<tiles:insertDefinition name="ooso.site.layout">
<tiles:putAttribute name="pagevStyle">
<link href="${ctx}/static/mui/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/mui/assets/global/plugins/bootstrap-summernote/summernote.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/mui/assets/global/css/plugins-md.css" rel="stylesheet" type="text/css"/>
</tiles:putAttribute>
<tiles:putAttribute name="contents">
<!-- BEGIN CONTENT -->
<!-- BEGIN PAGE HEADER-->
<h3 class="page-title">
Markdown WYSIWYG Editors <small>markdown wysiwyg editors</small>
</h3>
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li>
			<i class="fa fa-home"></i>
			<a href="index.html">Home</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">UI Components</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">Markdown WYSIWYG Editors</a>
		</li>
	</ul>
	<div class="page-toolbar">
		<div class="btn-group pull-right">
			<button type="button" class="btn btn-fit-height grey-salt dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
			Actions <i class="fa fa-angle-down"></i>
			</button>
			<ul class="dropdown-menu pull-right" role="menu">
				<li>
					<a href="#">Action</a>
				</li>
				<li>
					<a href="#">Another action</a>
				</li>
				<li>
					<a href="#">Something else here</a>
				</li>
				<li class="divider">
				</li>
				<li>
					<a href="#">Separated link</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
	<div class="col-md-12">
		<!-- BEGIN EXTRAS PORTLET-->
		<div class="portlet box blue-hoki">
			<div class="tools">
				<a href="javascript:;" class="collapse">
				</a>
				<a href="#portlet-config" data-toggle="modal" class="config">
				</a>
				<a href="javascript:;" class="reload">
				</a>
				<a href="javascript:;" class="remove">
				</a>
			</div>
			<div class="portlet-body form">
				<form class="form-horizontal form-bordered">
					<div class="form-body">
						<div class="form-group">
							<label class="control-label col-md-1">Default Editor</label>
							<div class="col-md-11">
								<div id="summernote_1"></div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- END PAGE CONTENT-->
<!-- END CONTENT -->
</tiles:putAttribute>
<tiles:putAttribute name="pagexPlugins">
<script src="${ctx}/static/mui/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js" type="text/javascript"></script>
<script src="${ctx}/static/mui/assets/global/plugins/bootstrap-summernote/summernote.min.js" type="text/javascript"></script>
</tiles:putAttribute>
<tiles:putAttribute name="pagevPlugins">
<script src="${ctx}/static/mui/assets/admin/pages/scripts/components-editors.js" type="text/javascript"></script>
</tiles:putAttribute>
<tiles:putAttribute name="onloadComponent">
<script>
	jQuery(document).ready(function() {       
		// initiate layout and plugins
		Metronic.init(); // init metronic core components
		Layout.init(); // init current layout
		Demo.init(); // init demo features
		ComponentsEditors.init();
	}); 
</script>
</tiles:putAttribute>
</tiles:insertDefinition>