document.addEventListener("turbolinks:load", () => {

  $(".increment-item").on("click", function(){
    var stock_id = $(this).data("id");
    $.ajax({
      url: "/item/increment",
      method: "post",
      data: {
        stock_id: stock_id
      },
      success: function(data) {
        $("#item-"+data.id+"-count").text(data.item_count);
      }
    });
  });

  $(".decrement-item").on("click", function(){
    var stock_id = $(this).data("id");
    $.ajax({
      url: "/item/decrement",
      method: "post",
      data: {
        stock_id: stock_id
      },
      success: function(data) {
        $("#item-"+data.id+"-count").text(data.item_count);
      }
    });
  });

  $(".increment-threshold").on("click", function(){
    var stock_id = $(this).data("id");
    $.ajax({
      url: "/threshold/increment",
      method: "post",
      data: {
        stock_id: stock_id
      },
      success: function(data) {
        $("#threshold-"+data.id+"-count").text(data.low_item_threshold);
      }
    });
  });

  $(".decrement-threshold").on("click", function(){
    var stock_id = $(this).data("id");
    $.ajax({
      url: "/threshold/decrement",
      method: "post",
      data: {
        stock_id: stock_id
      },
      success: function(data) {
        $("#threshold-"+data.id+"-count").text(data.low_item_threshold);
      }
    });
  });

});