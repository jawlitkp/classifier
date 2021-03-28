# Includes a list of classes on this node
class classifier::apply(
  Array[Classifier::Rolename] $roles,
  Boolean $debug
) {
  $roles.each |$role| {
    include "role::${role}"
  }
}
