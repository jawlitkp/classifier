# Emits a debug message when $classifier::debug is set
function classifier::debug (
  String $msg
) {

  echo {$msg :}
  # if $::classifier::debug {
  #   notice($msg)
  # }
}
