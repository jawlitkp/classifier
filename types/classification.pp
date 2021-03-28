type Classifier::Classification = Struct[{
  match    => Optional[Classifier::Matches],
  rules    => Array[Classifier::Rule],
  data     => Optional[Classifier::Data],
  roles  => Optional[Array[Classifier::Rolename]]
}]
