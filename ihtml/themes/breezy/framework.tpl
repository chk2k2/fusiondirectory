<!-- Headline -->
<body onLoad="javascript:$$('div.debug_div').each(function (a) { a.hide(); });">
  {$game_screen}
  {$php_errors}
  <form action="main.php{$plug}" name="mainform" id="mainform" method="post" enctype="multipart/form-data">
    <div class="setup-header">
      <div id="header-left">
        <img id="fd-logo" class="optional" src="geticon.php?context=applications&amp;icon=fusiondirectory&amp;size=48" alt="FusionDirectory logo"/>
        <a class="maintitlebar" href="main.php?reset=1">
          <img src="geticon.php?context=actions&amp;icon=go-home&amp;size=22" alt=""/>&nbsp;{t}Main{/t}
        </a>
        &nbsp;
        <a class="maintitlebar logout" href="index.php?signout=1">
          <img src="geticon.php?context=actions&amp;icon=application-exit&amp;size=22" alt=""/>&nbsp;{t}Sign out{/t}
        </a>
        <a class="plugtop">
          <img src="{$headline_image|escape}" alt=""/>{t}{$headline|escape}{/t}
        </a>
      </div>
      <div id="header-right">
        <a><span class="optional">{t}Signed in:{/t} </span><b>{$username|escape}</b></a>
        {if ($sessionLifetime > 0)}
        <div class="logout-label">
          <canvas id="sTimeout" width="22" height="22" title="{$sessionLifetime}|{t}Session expires in %d!{/t}"></canvas>
        </div>
        {/if}
      </div>
    </div>

    <table class="framework">
      <tbody>
        <tr>
          {if !$hideMenus}
            <!-- Menu -->
            <td class="optional" id="menucell">
              {$menu}
              <br/>
            </td>
          {/if}

          <!-- Plugin window -->
          <td id="maincell">
            {$msg_dialogs}
            <div class="plugin-window">
              {$contents}
            </div>
          </td>
        </tr>
      </tbody>
    </table>

    {$errors}
    {$focus}
    <input type="hidden" name="php_c_check" value="1"/>
    <input type="hidden" name="CSRFtoken" value="{$CSRFtoken}"/>
  </form>


  <!-- Automatic logout when session is expired -->
  <script type="text/javascript">
  {literal}
   function logout()
   {
    document.location = 'index.php?signout=1&message=expired';
   }
  {/literal}

  {if ($sessionLifetime > 0)}
   logout.delay({$sessionLifetime});
  {/if}

  </script>

</body>
</html>
