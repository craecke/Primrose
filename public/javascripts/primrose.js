function round2(f) {
  return Math.round(f * 100) / 100;
}

function recalcQuarterCumulative() {
  var performers = [];

  $("tbody.quarter").each(function(day) {
    $(this).children().each(function(index) {
      var i = parseInt($(this).children("td:first-child")[0].innerHTML);
      var avg = parseFloat($(this).children("td.avg")[0].innerHTML);

      if (!performers[index])
        performers[index] = [];

      performers[index][day] = avg;
    });
  });

  $("tbody.quartercumulative").children().each(function(p) {
    var sortedIndex = parseInt($(this).children("td:first-child")[0].innerHTML) - 1;
    $(this).children("td.day1")[0].innerHTML = performers[sortedIndex][0];
    $(this).children("td.day2")[0].innerHTML = performers[sortedIndex][1];
    $(this).children("td.final")[0].innerHTML = round2((performers[sortedIndex][0] + performers[sortedIndex][1]) / 2);
  });
}

function recalcAverages() {
  $("tr.participant").each(function() {
    var vals = $(this).children("td.score").filter(function(index) { return !$(this).hasClass("dropped"); });

    var sum = 0;
    $.each(vals, function() { sum += parseFloat(this.innerHTML); });
      var avg = round2(sum / vals.length);

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
    recalcQuarterCumulative();

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
    recalcQuarterCumulative();

    return false;
  });

  recalcQuarterCumulative();
});
