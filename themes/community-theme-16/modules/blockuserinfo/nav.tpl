{if $is_logged}
  <li role="presentation" class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
      <span class="caret"></span> {l s='Moje konto'}  <i class="icon icon-user" aria-hidden="true"></i>
    </a>
    <ul class="dropdown-menu">
      <li id="blockuserinfo-customer" class="blockuserinfo">
        <a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" rel="nofollow">
          <span>{l s="Witaj"} {$cookie->customer_firstname} {$cookie->customer_lastname} </span>
        </a>
      </li>
      <li id="blockuserinfo-customer" class="blockuserinfo">
        <a href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" title="{l s='View my customer account' mod='blockuserinfo'}" rel="nofollow">
          <i class="icon icon-user" aria-hidden="true"></i> {l s="Moje konto"}
        </a>
      </li>
      <li id="blockuserinfo-logout" class="blockuserinfo">
        <a class="logout" href="{$link->getPageLink('index', true, NULL, "mylogout")|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log me out' mod='blockuserinfo'}">
          <i class="icon icon-sign-out" aria-hidden="true"></i> {l s='Sign out' mod='blockuserinfo'}
        </a>
      </li>
      <li>
        <a href="{$link->getPageLink('history', true)|escape:'html':'UTF-8'}" title="{l s='My orders' mod='blockmyaccount'}">
          <i class="icon icon-truck" aria-hidden="true"></i> {l s='My orders' mod='blockuserinfo'}
        </a>
      </li>
      <li>
        <a href="{$link->getModuleLink('blockwishlist', 'mywishlist', array(), true)|addslashes}" title="{l s='My wishlists' mod='blockmyaccount'}" rel="nofollow"><i class="icon icon-heart" aria-hidden="true"></i> {l s='Lista życzeń' mod='blockuserinfo'}</a>
        </a>
      </li>
      <li>
        <a href="{$link->getPageLink('addresses', true)|escape:'html':'UTF-8'}" title="{l s='My addresses' mod='blockmyaccount'}">
          <i class="icon icon-map-marker" aria-hidden="true"></i> {l s='My addresses' mod='blockuserinfo'}
        </a>
      </li>
      {if $voucherAllowed}
        <li>
          <a href="{$link->getPageLink('discount', true)|escape:'html':'UTF-8'}" title="{l s='My vouchers' mod='blockuserinfo'}">
            {l s='My vouchers' mod='blockuserinfo'}
          </a>
        </li>
      {/if}
    </ul>
  </li>
  
  
{else}
  <li id="blockuserinfo-login" class="blockuserinfo">
    <a class="login" href="{$link->getPageLink('my-account', true)|escape:'html':'UTF-8'}" rel="nofollow" title="{l s='Log in to your customer account' mod='blockuserinfo'}">
      {l s='Sign in' mod='blockuserinfo'}
    </a>
  </li>
{/if}