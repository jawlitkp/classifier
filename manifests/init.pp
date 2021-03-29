# Reads classification rules from Hiera and classifies a node
#
# After classification is done a number of variables are
# considered public and can be used to access the classification
# results.  These are `$classification`, `$classification_roles`,
# `$data` and `$roles`.
class classifier (
  Classifier::Classifications  $rules = {},
  Boolean                      $debug = false,
) {

  class{'classifier::classify':
    rules => $rules,
    debug => $debug
  }

  $classification = $classifier::classify::classification
  $classification_roles = $classifier::classify::classification_roles
  $data = $classifier::classify::data
  $roles = $classification_roles

  classifier::debug("Final roles for ${trusted[certname]}: ${roles}")

  class{'classifier::apply':
    roles => $roles,
    debug => $debug
  }
}
