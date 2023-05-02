<div id="{$sectionId}"  class="plugin-section">
  <span class="legend">
    {if !empty($sectionIcon)}<img src="{$sectionIcon|escape}" alt=""/>{/if}{$section|escape}
  </span>
  <div>
    <img src="{$attributes.pwds_stats.img|escape}" alt="user icon"/>
    {t count=$attributes.pwds_stats.nb 1=$attributes.pwds_stats.nb plural="There are %1 users:"}There is 1 user:{/t}
    <ul>
      {foreach from=$attributes.pwds_stats.methods item=method}
        {if $method.nb > 0}
          {if $method.style == "default"}
            <li style="color:green;">
          {elseif $method.style == "clear"}
            <li style="color:red;">
          {elseif $method.style == "forbidden"}
            <li style="color:red;">
          {else}
            <li>
          {/if}
            {t count=$method.nb 1=$method.name 2=$method.nb plural="%2 of them use the %1 method"}One of them uses %1 method{/t}
          </li>
        {/if}
      {/foreach}
      <li style="list-style-image:url({$attributes.pwds_stats.locked_accounts.img|escape})">
        {if $attributes.pwds_stats.locked_accounts.nb > 0}
          {t count=$attributes.pwds_stats.locked_accounts.nb 1=$attributes.pwds_stats.locked_accounts.nb plural="%1 of them are locked"}One of them is locked{/t}
        {else}
          {t}None of them are locked{/t}
        {/if}
      </li>
    </ul>
  </div>
</div>
