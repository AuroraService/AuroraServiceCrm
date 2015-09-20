<?php
class TypeFabric {
  private $types;
  function __construct(){
	$textType = new TextType();
    $types[$textType->getTypeId] = $textType;
  }
  public static function get($id){
	  return $types[$id];
  }
}

class CNode{
  protected $id;
  protected $type;

  public function getType(){
	  return 1013;
  }
}

class CText extends CNode{
  public function getType(){
	  return 1016;
  }
}

class CResource extends CNode{
  protected $type;
  function __construct($type1){
	  $this->type = $type1;
  }
  public function getType(){
	  return $type;
  }
}

class CDate extends CNode{
	
}
/*
class NumberType extends Type{
	
}
class DateType extends Type{
	
}
class ResourceType extends Type{
	
}

class ComboBoxType extends Type{
	
}

class FileType extends Type{
	
}

class ComplexType extends Type{
	
}
*/
?>