<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="ptags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!-- BEGIN PAGE HEADER-->
<h3 class="page-title">
Hi! <small>THIS IS BLANK</small>
</h3>
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
	<div class="col-md-12">
		<table class="table table-bordered table-striped">
			<thead>
				<c:forEach items="${tasks.content}" var="task">
					<tr>
						<td><a href="${ctx}/task/update/${task.id}">${task.title}</a></td>
						<td><a href="${ctx}/task/delete/${task.id}">删除</a></td>
					</tr>
				</c:forEach>
			</thead>
			<tbody>
			</tbody>
		</table>
		<ptags:pagination page="${tasks}" paginationSize="5"/>
	</div>
</div>
<!-- END PAGE CONTENT-->
