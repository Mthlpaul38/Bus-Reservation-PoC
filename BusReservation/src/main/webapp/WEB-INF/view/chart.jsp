<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<%@page import="com.example.BusReservation.models.User" %>

<!DOCTYPE html>
<html lang="en-US">
<body>

<h1>Most Prefered buses</h1>

<div id="chart_div"></div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);
var a=${chart.keySet()};
var b=${chart.values()};

function drawChart() {
	vari=0;
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Bus_id');
    data.addColumn('number', 'Populartiy');
    for(i=0;i<a.length;i++){
    data.addRows([
      ["Bus_id:"+a[i].toString(),b[i]],
    ]);
    }
    var options = {
    		'title':'Popularity	', 'width':600, 'height':500,
      sliceVisibilityThreshold:.2
    };

    var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    chart.draw(data, options);
  }
</script>

</body>
</html>