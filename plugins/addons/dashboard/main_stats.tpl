<div class="plugin-section">
  <span class="legend">
    {t}Statistics{/t}
  </span>
  <div>
    <ul style="list-style-type:none;line-height:2em;">
    {foreach from=$attributes.stats item=stat}
    <li>
{if isset($stat.href)}
      <a href="{$stat.href}"><img style="vertical-align:middle;" src="{$stat.img|escape}" alt=""/>&nbsp;{$stat.name|escape}&nbsp;: {$stat.nb|escape}</a>
{else}
      <img style="vertical-align:middle;" src="{$stat.img|escape}" alt=""/>&nbsp;{$stat.name|escape}&nbsp;: {$stat.nb|escape}
{/if}
    </li>
    {/foreach}
    </ul>
  </div>
</div>
