// Promt when navigating away from page
// with un-saved form
$('form').areYouSure();


// Add helper class to checkboxes that start out checked
$('input[type=checkbox]').each(function() {
  if(this.checked) {
    $(this).addClass("js-originally-checked")
  }
})


// Add stikethrough when a user de-selects a checkbox
$('input[type=checkbox]').on('click',
  function(e) {
    if(e.target.checked) {
      $(e.target).siblings().css("text-decoration", "none")
    }

    if(!e.target.checked && $(e.target).hasClass("js-originally-checked")) {
      $(e.target).siblings().css("text-decoration", "line-through")
    }
  }
)
