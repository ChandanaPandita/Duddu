<%@include file="adminHeader.jsp" %>
<br/><br/><br/>
<div>
<div class="container">
  <div ng-app="myApp" ng-controller="dataCtrl">
  Data:${ss}
Enter Name/Email ID: <input type="text"  ng-model="search">&nbsp&nbsp<span class="glyphicon glyphicon-search"></span>
    <hr></hr>
    <table class="table table-striped">
    <tr>
    <th>Id</th>
    <th>Item Name
    <th>Description</th>
    
    </tr>
        <tr ng-repeat="resource in names | filter:search">
              <td>{{ resource.id}}</td>
              <td>{{ resource.itemName}}</td>
           	<td>{{ resource.description}}</td>
            <td><img src="resources/images/{{resource.id}}.jpg" style="width:100px;height:100px;"/></td>
			<td><a href="productOverview?id={{resource.id}}">Add to Cart</a></td> 
			        
        </tr>    
    </table>
</div>
<script>
angular.module('myApp',[]).controller('dataCtrl',function($scope)
		{
	
		$scope.names=${items};
		$scope.orderByMe=function(x)
		{
			$scope.myOrderBy=x;
			}
		});
</script>
<%@include file="footer.jsp" %>