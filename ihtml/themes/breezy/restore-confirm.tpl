<div class="notice">
  <div class="msgtitle">
    <h2>
      <img alt="" src="geticon.php?context=status&amp;icon=dialog-warning&amp;size=32" class="center"/>&nbsp;{t}Warning: you are about to restore the following snapshot{/t}
    </h2>
  </div>
  <div>
    <p>
      <ul>
        {foreach from=$objects item=object}
          <li style="list-style-image:url('{$object.icon|escape}');" title="{$object.type|escape}">
            {$object.name|escape}&nbsp;(<i>{$object.dn|escape}</i>)
          </li>
        {/foreach}
      </ul>
      {t}Any modification made to the object since this snapshot will be lost.{/t}
      {t}Please double check if you really want to do this since there is no way for FusionDirectory to get your data back.{/t}
    </p>

    <p>
      {t}So - if you're sure - press 'Continue' to continue or 'Cancel' to abort.{/t}
    </p>

    <p class="plugbottom">
      <input type="submit" name="restore_confirmed" value="{t}Continue{/t}"/>
      <input type="submit" formnovalidate="formnovalidate" name="restore_cancel" value="{msgPool type=cancelButton}"/>
    </p>
  </div>
</div>
