{if $settings.index_last_withdrawals}
{loaddata name="transactions" limit=$settings.index_last_withdrawals type="withdrawal" var="last_withdrawals"}
{/if}

{if $last_withdrawals}

{foreach from=$last_withdrawals item=s}

<div class="ctn-latest-abdos">
            <div class="latestLeft"> <img src="images/{$s.ec}.gif"> </div>
            <div class="latestRight">
              <h3>{$s.username}</h3>
              <p>{$currency_sign}{$s.amount}</p>
              <!--<td>{$s.date}</td>-->
              
              
            </div>
          </div>

{/foreach}
{/if}
