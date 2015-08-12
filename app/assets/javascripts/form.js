$("#new_construction").change(function() { 
  $form = $(this);
  $input_value = $form.children("#construction_construction_period").val();
  $label = $form.children("#construction_construction_period").siblings("label");
  $label.text("Current Value = " + $input_value);
})