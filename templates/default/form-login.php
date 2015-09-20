<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Аврора</a>
        </div>
        <div class="navbar-collapse collapse">
          <form class="navbar-form navbar-right" role="form" method="post" action="/">
            <div class="form-group">
              <input type="text" name="login" placeholder="Логин" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" name="pswd" placeholder="Пароль" class="form-control">
            </div>
            <button type="submit" class="btn btn-success" name="submit">Войти</button>
          </form>
        </div>
      </div>
    </div>
<? if($clogin!=0){ ?>
      <div class="jumbotron" style="width: 70%; margin: 20px auto; padding: 20px;">
        <h1 style="font-size: 24px;">Ошибка авторизации</h1>
        <p class="lead">
        <? 
switch ($clogin) {
    case 101:
        echo "Поля логин и пароль не могут быть пустыми";
        break;
    case 102:
        echo "Неправильный логин или пароль";
        break;
    default:
        echo "Неизвестная ошибка";
        break;
}

        ?>
        </p>
      </div>
<? } ?>


<?
    require_once('temp/footer.php');
echo '</body>';
require_once($var_pth_template.$template_end);
    ?>