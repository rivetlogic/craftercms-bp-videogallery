<#import "/templates/web/layout/default-layout.ftl" as layout/>
<#import "/templates/system/common/cstudio-support.ftl" as studio />

<@layout.default>
<div class="content"  <@studio.iceAttr iceGroup="visible" path=contentModel.storeUrl />>
    <div class="inner-page">
        <div class="searchbar">
            <div class="search-left">
                <p>${contentModel.title_t}</p>
            </div>
            <div class="clear"> </div>
        </div>
        <div class="title">
            <h3>${model.title_t}</h3>
            <ul>
                <li><h4>By:</h4></li>
                <li><a href="#">${contentModel.author_t!""}</a></li>
            </ul>
        </div>
        <div class="video-inner">
            <#assign posterImage="">
            <#if contentModel.thumbnail_s??>
                <#assign posterImage="${contentModel.thumbnail_s}">
            </#if>
            <video controls poster="${posterImage}" preload="auto">
            	<source src="${model.video_s}" type="video/mp4">
            	<p>Your browser does not support H.264/MP4.</p>
            </video>
        </div>
        <div class="viwes">
            <div class="view-links">
                <div id="share"></div>
            </div>
            <div class="clear"> </div>
        </div>
        <div class="clear"> </div>
        <div class="video-details">
            <ul>
            	<li><p>Uploaded on <a href="#">${contentModel.createdDate_dt?datetime?string[contentModel.dateFormat_s]!""}</a></p></li>
                <li><span>${model.description_t}</span></li>
            </ul>
        </div>
        <div class="clear"> </div>
        <div class="tags">
          <ul>
              <li><h3>Tags:</h3></li>
              <#if contentModel.tags_o.item??>
                <#list contentModel.tags_o.item as tag>
                    <li><a onClick="categoryRedirect('${tag.tagName_t}')">${tag.tagName_t}</a> ,</li>
                </#list>
              </#if>
          </ul>
        </div>
        <div class="clear"> </div>
    </div>
    <div class="clear"> </div>
</div>
</@layout.default>