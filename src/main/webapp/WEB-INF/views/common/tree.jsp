<%@ include file="/WEB-INF/common/taglibs.jsp"%>
<tiles:insertDefinition name="site.getree">
<tiles:putAttribute name="pagevStyle">
<link href="${ctx}/static/mui/assets/global/plugins/jstree/dist/themes/default/style.min.css" rel="stylesheet" type="text/css"/>
<script src="${ctx}/static/mui/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
</tiles:putAttribute>
<tiles:putAttribute name="contents">
<!-- BEGIN PAGE HEADER-->
<h3 class="page-title"> 首页 <small>一个空的页面</small> </h3>
<div class="page-bar">
	<ul class="page-breadcrumb">
		<li>
			<i class="fa fa-home"></i>
			<a href="index.html">Home</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">Page Layouts</a>
			<i class="fa fa-angle-right"></i>
		</li>
		<li>
			<a href="#">Blank Page</a>
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
	<div class="col-md-2">
		<div id="jstree-proton-2" class="tree-demo"></div>
		<script>
		$(function() {
			$('#jstree-proton-2').jstree({
				'plugins': ["wholerow"],
				'core': {
				'data' : [{"id":"1","parent":"#","text":"网站总根"},{"id":"2","parent":"#","text":"应用列表"},{"id":"3","parent":"1","text":"cms6.8培训演示网站"},{"id":"8","parent":"3","text":"要闻动态"},{"id":"9","parent":"3","text":"部门动态"},{"id":"10","parent":"3","text":"党建之窗"},{"id":"11","parent":"3","text":"资源中心"},{"id":"12","parent":"3","text":"专题信息"},{"id":"13","parent":"8","text":"要闻聚焦"},{"id":"14","parent":"8","text":"领导讲话"},{"id":"15","parent":"8","text":"会议信息"},{"id":"16","parent":"8","text":"干部任免"},{"id":"17","parent":"8","text":"图片新闻"},{"id":"18","parent":"9","text":"机关工作"},{"id":"19","parent":"9","text":"纪检监察"},{"id":"20","parent":"9","text":"组织工作"},{"id":"21","parent":"9","text":"宣传工作"},{"id":"22","parent":"9","text":"统战工作"},{"id":"23","parent":"9","text":"政法工作"},{"id":"24","parent":"9","text":"政策研究"},{"id":"26","parent":"10","text":"党建动态"},{"id":"27","parent":"10","text":"理论学习"},{"id":"28","parent":"10","text":"教育培训"},{"id":"29","parent":"10","text":"文明创建"},{"id":"30","parent":"10","text":"党风廉政建设"},{"id":"31","parent":"10","text":"组织建设"},{"id":"32","parent":"11","text":"内部刊物"},{"id":"33","parent":"11","text":"法律法规"},{"id":"34","parent":"33","text":"国家法律法规"},{"id":"35","parent":"33","text":"地方法规"},{"id":"36","parent":"11","text":"规章制度"},{"id":"37","parent":"11","text":"文献资料"},{"id":"38","parent":"11","text":"政策解读"},{"id":"39","parent":"1","text":"cms6.8测试网站"},{"id":"40","parent":"39","text":"部门动态"},{"id":"41","parent":"40","text":"部门要闻"},{"id":"42","parent":"40","text":"领导讲话"},{"id":"43","parent":"40","text":"会议信息"},{"id":"44","parent":"40","text":"干部任免"},{"id":"45","parent":"40","text":"图片新闻"},{"id":"46","parent":"39","text":"机构工作"},{"id":"47","parent":"46","text":"机关工作"},{"id":"48","parent":"46","text":"纪检监察"},{"id":"49","parent":"46","text":"组织工作"},{"id":"50","parent":"46","text":"宣传工作"},{"id":"51","parent":"46","text":"统战工作"},{"id":"52","parent":"39","text":"资源中心"},{"id":"53","parent":"52","text":"内部刊物"},{"id":"54","parent":"52","text":"法律法规"},{"id":"55","parent":"52","text":"规章制度"},{"id":"56","parent":"1","text":"党委系统网站示例"},{"id":"57","parent":"56","text":"要闻动态"},{"id":"58","parent":"56","text":"部门动态"},{"id":"59","parent":"56","text":"党建之窗"},{"id":"60","parent":"56","text":"资源中心"},{"id":"61","parent":"56","text":"专题信息"},{"id":"62","parent":"57","text":"要闻聚焦"},{"id":"63","parent":"57","text":"领导讲话"},{"id":"64","parent":"57","text":"会议信息"},{"id":"65","parent":"57","text":"干部任免"},{"id":"66","parent":"57","text":"图片新闻"},{"id":"67","parent":"58","text":"机关工作"},{"id":"68","parent":"58","text":"纪检监察"},{"id":"69","parent":"58","text":"组织工作"},{"id":"70","parent":"58","text":"宣传工作"},{"id":"71","parent":"58","text":"统战工作"},{"id":"72","parent":"58","text":"政法工作"},{"id":"73","parent":"58","text":"政策研究"},{"id":"74","parent":"59","text":"党建动态"},{"id":"75","parent":"59","text":"理论学习"},{"id":"76","parent":"59","text":"教育培训"},{"id":"77","parent":"59","text":"文明创建"},{"id":"78","parent":"59","text":"党风廉政建设"},{"id":"79","parent":"59","text":"组织建设"},{"id":"80","parent":"60","text":"内部刊物"},{"id":"81","parent":"60","text":"法律法规"},{"id":"82","parent":"60","text":"规章制度"},{"id":"83","parent":"60","text":"文献资料"},{"id":"84","parent":"60","text":"政策解读"},{"id":"85","parent":"81","text":"国家法律法规"},{"id":"86","parent":"81","text":"地方法规"},{"id":"87","parent":"1","text":"cmsdev6.8林"},{"id":"88","parent":"87","text":"要闻动态"},{"id":"89","parent":"87","text":"市政实施"},{"id":"90","parent":"89","text":"新华社转载"},{"id":"91","parent":"89","text":"报社时文"},{"id":"92","parent":"3","text":"test"},{"id":"94","parent":"1","text":"ceshi"},{"id":"95","parent":"94","text":"栏目1"},{"id":"96","parent":"94","text":"栏目2"},{"id":"97","parent":"94","text":"栏目3"},{"id":"98","parent":"88","text":"军事要闻"},{"id":"99","parent":"88","text":"党政要闻"},{"id":"100","parent":"88","text":"科技要闻"},{"id":"101","parent":"98","text":"国内军事"},{"id":"102","parent":"98","text":"国际军事"},{"id":"103","parent":"98","text":"美国军事"},{"id":"104","parent":"98","text":"亚洲动态"},{"id":"105","parent":"99","text":"北京要闻"},{"id":"106","parent":"99","text":"群众路线"},{"id":"107","parent":"100","text":"苹果"},{"id":"108","parent":"100","text":"索尼"},{"id":"109","parent":"100","text":"联想"},{"id":"110","parent":"100","text":"海尔"},{"id":"111","parent":"110","text":"笔记本"},{"id":"112","parent":"110","text":"冰箱"},{"id":"113","parent":"101","text":"军区1"},{"id":"114","parent":"101","text":"军旗"},{"id":"115","parent":"90","text":"栏目1"},{"id":"116","parent":"90","text":"栏目2"},{"id":"118","parent":"91","text":"报社2"},{"id":"119","parent":"91","text":"报社1"},{"id":"120","parent":"1","text":"sysdevLPW"},{"id":"121","parent":"2","text":"1111"},{"id":"122","parent":"2","text":"2222"},{"id":"123","parent":"2","text":"3333"},{"id":"124","parent":"2","text":"4444"}],
				'themes': {
					'name': 'proton',
					'responsive': true
				}
				}
			});
		});
		</script>
	</div>
</div>
<!-- END PAGE CONTENT-->
</tiles:putAttribute>
<tiles:putAttribute name="pagexPlugins">
<script src="${ctx}/static/mui/assets/global/plugins/jstree/dist/jstree.min.js" type="text/javascript"></script>
</tiles:putAttribute>
</tiles:insertDefinition>