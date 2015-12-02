<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
<head>
<link href="${ctx}/static/mui/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/oth/bootstrapdialog/css/bootstrap-dialog.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/oth/dropzone/css/dropzone.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}/static/oth/dropzone/css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
	<div class="panel panel-default">
		<div class="panel-body">
			<form id="dropzone-form" class="dropzone" enctype="multipart/form-data">
				<div class="dz-default dz-message file-dropzone text-center well col-md-12">
					<span class="glyphicon glyphicon-paperclip"></span>
					<span>点击上传</span><br/> 
					<span>或者将文件拖拽至此</span>
				</div>
				<div class="dropzone-previews"></div>
			</form>
			<hr/>
			<button id="upload-button" class="btn btn-success">上传</button>
			<a class="pull-right" href="/upload/list"> 
				<button class="btn">查看所有上传文件</button>
			</a>
		</div>
	</div>
</div>
<script src="${ctx}/static/mui/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="${ctx}/static/oth/bootstrapdialog/js/bootstrap-dialog.min.js" type="text/javascript"></script>
<script src="${ctx}/static/oth/dropzone/js/app.js" type="text/javascript"></script>
<script src="${ctx}/static/oth/dropzone/js/dropzone.min.js" type="text/javascript"></script>
</body>
</html>