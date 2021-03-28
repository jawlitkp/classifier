type Classifier::Node = Array[
  Struct[{
    'name'  => String,
    'roles' => Array[Classifier::Rolename],
    'data'  => Classifier::Data
  }]
]
