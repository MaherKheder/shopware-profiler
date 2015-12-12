<div class="sf-toolbar-block sf-toolbar-block-request sf-toolbar-status-normal">
    <a>
        <div class="sf-toolbar-icon"><span class="sf-toolbar-status sf-toolbar-status-green">200</span>
            <span class="sf-toolbar-label">@</span>
            <span class="sf-toolbar-value sf-toolbar-info-piece-additional">{controllerName}</span>
        </div>
    </a>
    <div class="sf-toolbar-info">
        <div class="sf-toolbar-info-piece">
            <b>HTTP status</b>
            <span>{$sProfiler.response->getHttpResponseCode()}</span>
        </div>
        <div class="sf-toolbar-info-piece">
            <b>Controller</b>
                    <span>
                        Shopware_Controllers_{$sProfiler.request->getModuleName()|ucfirst}_{$sProfiler.request->getControllerName()|ucfirst}&nbsp;::&nbsp;{controllerAction}
                    </span>
        </div>
        <div class="sf-toolbar-info-piece">
            <b>Controller class</b>
            <span>Shopware_Controllers_{$sProfiler.request->getModuleName()|ucfirst} _{$sProfiler.request->getControllerName()|ucfirst}</span>
        </div>
        <div class="sf-toolbar-info-piece">
            <b>Is logged in?</b>
            <span>{if !empty($sProfiler.user.loggedin)}yes{else}no{/if}</span>
        </div>
    </div>
</div>
<div class="sf-toolbar-block sf-toolbar-block-time sf-toolbar-status-normal">
    <a>
        <div class="sf-toolbar-icon">
            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" height="24"
                 viewBox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve">
                        <path fill="#AAAAAA" d="M15.1,4.3c-2.1-0.5-4.2-0.5-6.2,0C8.6,4.3,8.2,4.1,8.2,3.8V3.4c0-1.2,1-2.3,2.3-2.3h3c1.2,0,2.3,1,2.3,2.3
                            v0.3C15.8,4.1,15.4,4.3,15.1,4.3z M20.9,14c0,4.9-4,8.9-8.9,8.9s-8.9-4-8.9-8.9s4-8.9,8.9-8.9S20.9,9.1,20.9,14z M16.7,15
                            c0-0.6-0.4-1-1-1H13V8.4c0-0.6-0.4-1-1-1s-1,0.4-1,1v6.2c0,0.6,0.4,1.3,1,1.3h3.7C16.2,16,16.7,15.6,16.7,15z"/>
                    </svg>

            <span class="sf-toolbar-value" data-profiler-start-time="{$sProfiler.startTime}"></span>
            <span class="sf-toolbar-label">s</span>
        </div>
    </a>
    <div class="sf-toolbar-info">
        <div class="sf-toolbar-info-piece">
            <b>Total time</b>
            <span data-profiler-start-time="{$sProfiler.startTime}"></span>
            <span>s</span>
        </div>
    </div>
</div>