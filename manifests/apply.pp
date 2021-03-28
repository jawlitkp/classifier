# Includes a list of roles on this node
class classifier::apply(
  Array[Classifier::Rolename] $roles,
  Boolean $debug
) {
  $roles.each |$role| {
    include "role::${role}"
  }
}
