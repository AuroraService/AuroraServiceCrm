<?
// Database
     $var_db_host='192.168.88.105';
     $var_db_user='root';
     $var_db_paswd='';
     $var_db_name='kb1';

// Paths
     $var_pth_templatesfolder='/templates/';




// Template
     $var_template_default='default';
     $var_template_selected='';
     $var_template_index='template.php';


// Names
     $var_names_sitetitle='Аврора - управление процессами v. 2.0 technical';



// NO EDIT!!!!!!!!!!!!!!========================================
    if ($var_template_selected!='') { //Если не выбран шаблон - подгружаем дефолтный
        $var_pth_template=$var_pth_templatesfolder.$var_template_selected.'/';
    } else {
    	$var_pth_template=$var_pth_templatesfolder.$var_template_default.'/';
    }  

?>