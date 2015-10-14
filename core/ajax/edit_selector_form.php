

<div class="popup_btn_close" onclick="click_close_btn()"></div>
<input type="text" class="form-control" placeholder="Поиск" style="margin-bottom: 10px;">
<div class="list-group" style="overflow-y: scroll; max-height: <? echo $_GET[offset]; ?>; border: 1px solid rgb(204,204,204);">
    <?
    $i=0;
    while($i<100){
        $i++; ?>
        <a href="#" class="list-group-item popup_find_list_item" onclick="popup_list_change_item(this)" id="popup_list<? echo $i; ?>">Тестовая запись</a>

    <? } ?>

</div>
