<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="<%=request.getContextPath()%>/static/js/tree/jquery.treeview.css" rel="stylesheet" >
<link href="<%=request.getContextPath()%>/static/js/tree/treetable/stylesheets/jquery.treetable.css" rel="stylesheet" >
<link href="<%=request.getContextPath()%>/static/js/tree/treetable/stylesheets/jquery.treetable.theme.default.css" rel="stylesheet" >
<link href="<%=request.getContextPath()%>/static/js/tree/tabelizer/tabelizer.min.css" media="all" rel="stylesheet" type="text/css">
<script src="<%=request.getContextPath()%>/static/js/tree/lib/jquery.cookie.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/static/js/tree/jquery.treeview.js" type="text/javascript"></script>


<script src="<%=request.getContextPath()%>/static/js/tree/tabelizer/jquery-ui-1.10.4.custom.min.js"></script>
<script src="<%=request.getContextPath()%>/static/js/tree/tabelizer/jquery.tabelizer.js"></script>

<script src="<%=request.getContextPath()%>/static/js/tree/treetable/vendor/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/static/js/tree/treetable/javascripts/src/jquery.treetable.js"></script>

<script type="text/javascript">
$(function() {
    $("#browser, #browser2").treeview({
        animated: "fast",
        collapsed: false,
        unique: true,
        persist: "cookie",
        toggle: function() {
            window.console && console.log("%o was toggled", this);
        }
    });
});
</script>

<script>
$("#example-basic").treetable({
    expandable: true
});

$("#example-basic-static").treetable();

$("#example-basic-expandable").treetable({
    expandable: true
});

$("#example-advanced").treetable({
    expandable: true
});

// Highlight selected row
$("#example-advanced tbody").on("mousedown", "tr", function() {
    $(".selected").not(this).removeClass("selected");
    $(this).toggleClass("selected");
});

// Drag & Drop Example Code
$("#example-advanced .file, #example-advanced .folder").draggable({
    helper: "clone",
    opacity: .75,
    refreshPositions: true, // Performance?
    revert: "invalid",
    revertDuration: 300,
    expandable: true,
    scroll: true
});

$("#example-advanced .folder").each(function() {
    $(this).parents("#example-advanced tr").droppable({
        accept: ".file, .folder",
        drop: function(e, ui) {
            var droppedEl = ui.draggable.parents("tr");
            $("#example-advanced").treetable("move", droppedEl.data("ttId"), $(this).data("ttId"));
        },
        hoverClass: "accept",
        over: function(e, ui) {
            var droppedEl = ui.draggable.parents("tr");
            if (this != droppedEl[0] && !$(this).is(".expanded")) {
                $("#example-advanced").treetable("expandNode", $(this).data("ttId"));
            }
        }
    });
});

$("form#reveal").submit(function() {
    var nodeId = $("#revealNodeId").val()

    try {
        $("#example-advanced").treetable("reveal", nodeId);
    } catch (error) {
        alert(error.message);
    }

    return false;
});
</script>

<script>
$(document).ready(function() {
    var table1 = $('#table1').tabelize({
        /*onRowClick : function(){
        alert('test');
    }*/
        fullRowClickable: true,
        onReady: function() {
            console.log('ready');
        },
        onBeforeRowClick: function() {
            console.log('onBeforeRowClick');
        },
        onAfterRowClick: function() {
            console.log('onAfterRowClick');
        },
    });
});
</script>