function ConfirmAction() {
  var answer = confirm("Are you sure want to do this?");
  if(answer == true){
    return true
  } else {
    return false
  }
}