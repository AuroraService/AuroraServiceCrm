    <div class="panel panel-default">
  <div class="panel-heading">
  <span class="label label-primary lb-btn" style="float: right">Сбросить фильтр</span>
    <h3 class="panel-title">Глобальный поиск</h3>

  </div>
  <div class="filter-form">
  <select class="form-control filter-input">
  <option>Все бренды</option>
  <? foreach ($ret4 as $val) {
       echo '<option>'.$val->items[50139].'</option>';
     } ?>
  </select>
  <select class="form-control filter-input">
  <option value="0">Все типы техники</option>
  <? foreach ($ret as $val) {
       echo '<option>'.$val->items[50139].'</option>';
     } ?>
  </select>
  <select class="form-control filter-input">
  <option value="0">Все руппы запчастей</option>
  <? foreach ($ret2 as $val) {
       echo '<option>'.$val->items[50139].'</option>';
     } ?>
  </select>
  <input type="text" class="form-control filter-input" placeholder="Поиск">
  </div>
  <div class="panel-body nbody" style="max-height: 200px; overflow-y: scroll;">
<div class="list-group ngroup" style="background-color: white;"><? include 'item-1.php'; ?></div>
  </div>
</div>