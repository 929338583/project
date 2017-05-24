<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/loader-style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.css">
<!-- 自定义-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/monkey.js"></script>

<link href="<%=request.getContextPath()%>/static/js/iCheck/flat/all.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/static/js/iCheck/line/all.css" rel="stylesheet">

<link href="<%=request.getContextPath()%>/static/js/colorPicker/bootstrap-colorpicker.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/static/js/switch/bootstrap-switch.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/static/js/validate/validate.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/static/js/idealform/css/jquery.idealforms.css" rel="stylesheet">
<link rel="shortcut icon" href="<%=request.getContextPath()%>/static/ico/minus.png">

<!-- MAIN EFFECT -->
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/preloader.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/app.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/load.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/main.js"></script>
<!-- 个性 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/iCheck/jquery.icheck.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/switch/bootstrap-switch.js"></script>

<script>
    $(document).ready(function() {
        //CHECKBOX PRETTYFY
        $('.skin-flat input').iCheck({
            checkboxClass: 'icheckbox_flat-red',
            radioClass: 'iradio_flat-red'
        });
        $('.skin-line input').each(function() {
            var self = $(this),
                label = self.next(),
                label_text = label.text();

            label.remove();
            self.iCheck({
                checkboxClass: 'icheckbox_line-blue',
                radioClass: 'iradio_line-blue',
                insert: '<div class="icheck_line-icon"></div>' + label_text
            });
        });
        //Switch Button

        $('.make-switch').bootstrapSwitch('setSizeClass', 'switch-small');
    });
</script>