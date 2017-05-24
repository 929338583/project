<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/loader-style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/js/progress-bar/number-pb.css">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/static/icon/minus.png">

<!-- common-->
<script src="<%=request.getContextPath() %>/static/js/jquery.js"></script>
<script src="<%=request.getContextPath() %>/static/js/progress-bar/src/jquery.velocity.min.js"></script>
<script src="<%=request.getContextPath() %>/static/js/progress-bar/number-pb.js"></script>
<script src="<%=request.getContextPath() %>/static/js/progress-bar/progress-app.js"></script>
<!-- 自定义-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/monkey.js"></script>
<!-- MAIN EFFECT -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/preloader.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/app.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/load.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/main.js"></script>
<!-- 个性部分 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/chart/jquery.flot.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/chart/jquery.flot.resize.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/chart/realTime.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/speed/canvasgauge-coustom.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/countdown/jquery.countdown.js"></script>
<script src="<%=request.getContextPath() %>/static/js/jhere-custom.js"></script>
<style type="text/css">
canvas#canvas4 {
	position: relative;
	top: 20px;
}
</style>
<script>
var gauge4 = new Gauge("canvas4", {
    'mode': 'needle',
    'range': {
        'min': 0,
        'max': 90
    }
});
gauge4.draw(Math.floor(Math.random() * 90));
var run = setInterval(function() {
    gauge4.draw(Math.floor(Math.random() * 90));
}, 3500);
</script>


<script type="text/javascript">
$(window).on('load', function() {
    $('#mapContainer').jHERE({
        center: [52.500556, 13.398889],
        type: 'smart',
        zoom: 10
    }).jHERE('marker', [52.500556, 13.338889], {
        icon: '<%=request.getContextPath() %>/static/ico/minus.png',
        anchor: {
            x: 12,
            y: 32
        },
        click: function() {
            alert('Hallo from Berlin!');
        }
    })
        .jHERE('route', [52.711, 13.011], [52.514, 13.453], {
            color: '#FFA200',
            marker: {
                fill: '#86c440',
                text: '#'
            }
        });
});
</script>
 <script type="text/javascript">
var output, started, duration, desired;

// Constants
duration = 5000;
desired = '50';

// Initial setup
output = $('#speed');
started = new Date().getTime();

// Animate!
animationTimer = setInterval(function() {
    // If the value is what we want, stop animating
    // or if the duration has been exceeded, stop animating
    if (output.text().trim() === desired || new Date().getTime() - started > duration) {
        console.log('animating');
        // Generate a random string to use for the next animation step
        output.text('' + Math.floor(Math.random() * 60)

        );

    } else {
        console.log('animating');
        // Generate a random string to use for the next animation step
        output.text('' + Math.floor(Math.random() * 120)

        );
    }
}, 5000);
</script>
<script type="text/javascript">
$('#getting-started').countdown('2015/01/01', function(event) {
    $(this).html(event.strftime('<span>%M</span>' + '<span class="start-min">:</span>' + '<span class="start-min">%S</span>'));
});
</script>

