{if (!$content_only && (($nbComments == 0 && $too_early == false && ($is_logged || $allow_guests)) || ($nbComments != 0)))}
  <div id="product_comments_block_extra" class="hidden-print" itemprop="aggregateRating" itemscope itemtype="https://schema.org/AggregateRating">
    {if $nbComments != 0}
      <div class="comments_note clearfix">
        <div class="product_comments_rating">
          <div> {l s='Rating' mod='productcomments'}</div>
          <div>({$averageTotal|string_format:"%.1f"})</div>
          <div class="star_content clearfix">
            {section name="i" start=0 loop=5 step=1}
              {if $averageTotal <= $smarty.section.i.index}
                <div class="star"></div>
              {else}
                <div class="star star_on"></div>
              {/if}
            {/section}
            <meta itemprop="worstRating" content = "0" />
            <meta itemprop="ratingValue" content = "{if isset($ratings.avg)}{$ratings.avg|round:1|escape:'html':'UTF-8'}{else}{$averageTotal|round:1|escape:'html':'UTF-8'}{/if}" />
            <meta itemprop="bestRating" content = "5" />
          </div>
          {if $nbComments != 0}
            <div>
              <a href="#product_comments_block_tab" class="reviews" data-toggle="tab" aria-expanded="false">
                <i class="icon icon-fw icon-comment"></i> {l s='Read reviews' mod='productcomments'} (<span itemprop="reviewCount">{$nbComments}</span>)
              </a>
            </div>
          {/if}
          <a class="open-comment-form" href="#new_comment_form">
            <button class="btn btn-primary btn-xs">
              <i class="icon icon-fw icon-pencil"></i> {l s='Write a review' mod='productcomments'}
            </button>
          </a>
        </div>
      </div>
    {/if}
    {if $nbComments == 0 && ($too_early == false && ($is_logged || $allow_guests))}
      <div class="product_comments_rating">
        <div>{l s='No ratings' mod='productcomments'}</div>
        <a class="open-comment-form" href="#new_comment_form">
          <button class="btn btn-primary btn-xs">
            <i class="icon icon-fw icon-pencil"></i> {l s='Write a review' mod='productcomments'}
          </button>
        </a>
      </div>
    {/if}
  </div>
  <hr>
{/if}
