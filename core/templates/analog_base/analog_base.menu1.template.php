    <div class="panel panel-default">
  <div class="panel-heading">
  <span class="label label-primary lb-btn" style="float: right" id="clear_filter_btn_1">Сбросить фильтр</span>
    <h3 class="panel-title">Поиск модели</h3>

  </div>
  <div class="filter-form">
  <select class="form-control filter-input f1">
  <option value="0">Все бренды</option>
  <? foreach ($ret3 as $val) {
       echo '<option>'.$val->items[50139].'</option>';
     } ?>
  </select>
  <select class="form-control filter-input f1">
  <option value="0">Все типы техники</option>
  <? foreach ($ret as $val) {
       echo '<option>'.$val->items[50139].'</option>';
     } ?>
  </select>

  <input type="text" class="form-control filter-input" placeholder="Поиск" id="find_input1">
  </div>
  <div class="panel-body nbody" style="max-height: 200px; overflow-y: scroll;">
    <div class="list-group ngroup" style="background-color: white;"><? include 'item-1.php'; ?></div>
  </div>
</div>


    <div class="panel panel-default">
  <div class="panel-heading">
  <span class="label label-primary lb-btn" style="float: right" id="clear_filter_btn_2">Сбросить фильтр</span>
    <h3 class="panel-title">Поиск запчасти</h3>
  </div>
    <div class="filter-form">
  <select class="form-control filter-input f2">
  <option value="0">Все бренды</option>
  <? foreach ($ret3 as $val) {
       echo '<option>'.$val->items[50139].'</option>';
     } ?>
  </select>
  <select class="form-control filter-input f2">
  <option value="0">Все типы техники</option>
  <? foreach ($ret as $val) {
       echo '<option>'.$val->items[50139].'</option>';
     } ?>
  </select>
  <select class="form-control filter-input f2">
  <option value="0">Все группы запчастей</option>
  <? foreach ($ret2 as $val) {
       echo '<option>'.$val->items[50139].'</option>';
     } ?>
  </select>
  <input type="text" class="form-control filter-input" placeholder="Поиск" id="find_input2">
  </div>
  <div class="panel-body nbody" style="max-height: 200px; overflow-y: scroll; border-top: 1px solid rgb(221,221,221);">
<div class="list-group ngroup" style="background-color: white;" id="find_res_2"><? include 'item-1.php'; ?></div>
  </div>
  </div>

  