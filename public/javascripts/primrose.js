function recalcAverages() {
  $("tr.participant").each(function() {
    var vals = $(this).children("td.score").filter(function(index) { return !$(this).hasClass("dropped"); });

    var sum = 0;
    $.each(vals, function() { sum += parseFloat(this.innerHTML); });
    var avg = Math.round(sum / vals.length * 10) / 10;

    $(this).children("td.avg")[0].innerHTML = avg;
  });
}

function updateSorting() {
  var th = $("th.headerSortUp");
  if (th.length > 0) {
    var parent = th.parent();
    var table = parent.parent().parent();
    var index = parent.children().index(parent.children("th.headerSortUp"));
    table.tablesorter({ sortList: [[ index, 0 ]] });
  }

  th = $("th.headerSortDown");
  if (th.length > 0) {
    var parent = th.parent();
    var table = parent.parent().parent();
    var index = parent.children().index(parent.children("th.headerSortDown"));
    table.tablesorter({ sortList: [[ index, 1 ]] });
  }
}

$(function() {
  $("table.sortable").tablesorter();

  $("a#highlow").bind("click", function () {
    $("tr.participant").each(function(index) {
      var vals = $(this).children("td.score").map(function() { return parseFloat(this.innerHTML); }).sort();
      var drops = [ vals[0], vals[vals.length - 1] ];

      $(this).children("td.score").each(function(c) {
        $(this).removeClass("dropped");
        if (drops.indexOf(parseFloat(this.innerHTML)) != -1) {
          $(this).addClass("dropped");
          var idx = drops.indexOf(parseFloat(this.innerHTML));
          if (idx != -1)
            drops.splice(idx, 1);
        }
      });
    });

    recalcAverages();
    updateSorting();

    return false;
  });

  $("#randomize").bind("click", function () {
    $("tr.participant").each(function(index) {
      var drops = [ 0, 0 ];
      do {
        drops = [ Math.floor(Math.random() * 9), Math.floor(Math.random() * 9) ];
      } while(drops[0] == drops[1]);

      $(this).children("td.score").each(function() {
        $(this).removeClass("dropped");
      });

      for (var n = 0; n < 2; n++) {
        $(this).children(":nth-child(" + (parseInt(drops[n])+5) + ")").addClass("dropped");
      }
    });

    recalcAverages();
    updateSorting();

    return false;
  });
});
