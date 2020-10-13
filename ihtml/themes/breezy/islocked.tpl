<div class="notice">
  <div class="msgtitle">
    <h2>
      <img alt="" src="geticon.php?context=status&amp;icon=object-locked&amp;size=32" class="center"/>&nbsp;{t}Locking conflict detected{/t}
    </h2>
  </div>
  <div>
    <p>
      <b>{t}Warning{/t}:</b> {t}The following entries are locked:{/t}
      <ul>
        {foreach from=$locks item=lock}
          <li>{t 1=$lock.object 2=$lock.user 3=$lock.timestamp|date_format:"%Y-%m-%d, %H:%M:%S"}"%1" has been locked by "%2" since %3{/t}</li>
        {/foreach}
      </ul>
    </p>
    <p>
      {t 1=$action}If this lock detection is false, the other person may have closed the webbrowser during the edit operation. You may want to take over the lock by pressing the "%1" button.{/t}
    </p>

    <p class="plugbottom">
      <input type="submit" name="delete_lock" value="{$action|escape}"/>
      {if $allow_readonly}
      &nbsp;
      <input type="submit" name="open_readonly" value="{t}Read only{/t}"/>
      {/if}
      &nbsp;
      <input type="submit" formnovalidate="formnovalidate" name="cancel_lock" value="{t}Cancel{/t}"/>
    </p>
  </div>
</div>

