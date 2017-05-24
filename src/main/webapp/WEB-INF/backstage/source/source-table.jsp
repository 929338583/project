<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- common-->
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/loader-style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/css/bootstrap.css">
<!-- 自定义-->
<script type="text/javascript" src="<%=request.getContextPath() %>/static/js/monkey.js"></script>
<!-- 自定义-->
<link href="<%=request.getContextPath()%>/static/js/footable/css/footable.core.css?v=2-0-1" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/static/js/footable/css/footable.standalone.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/static/js/footable/css/footable-demos.css" rel="stylesheet" type="text/css">
<!-- MAIN EFFECT -->
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/preloader.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/app.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/load.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/main.js"></script>
<!-- 个性-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/js/dataTable/lib/jquery.dataTables/css/DT_bootstrap.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/static/js/dataTable/css/datatables.responsive.css">
<link rel="shortcut icon" href="<%=request.getContextPath()%>/static/ico/minus.png">
<script src="<%=request.getContextPath()%>/static/js/toggle_close.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/js/footable/js/footable.js?v=2-0-1" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/js/footable/js/footable.sort.js?v=2-0-1" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/js/footable/js/footable.filter.js?v=2-0-1" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/js/footable/js/footable.paginate.js?v=2-0-1" type="text/javascript"></script>
<script type="text/javascript">
$(function() {
    $('.footable-res').footable();
});
</script>
<script type="text/javascript">
$(function() {
    $('#footable-res2').footable().bind('footable_filtering', function(e) {
        var selected = $('.filter-status').find(':selected').text();
        if (selected && selected.length > 0) {
            e.filter += (e.filter && e.filter.length > 0) ? ' ' + selected : selected;
            e.clear = !e.filter;
        }
    });

    $('.clear-filter').click(function(e) {
        e.preventDefault();
        $('.filter-status').val('');
        $('table.demo').trigger('footable_clear_filter');
    });

    $('.filter-status').change(function(e) {
        e.preventDefault();
        $('table.demo').trigger('footable_filter', {
            filter: $('#filter').val()
        });
    });

    $('.filter-api').click(function(e) {
        e.preventDefault();

        //get the footable filter object
        var footableFilter = $('table').data('footable-filter');

        alert('about to filter table by "tech"');
        //filter by 'tech'
        footableFilter.filter('tech');

        //clear the filter
        if (confirm('clear filter now?')) {
            footableFilter.clearFilter();
        }
    });
});
</script>