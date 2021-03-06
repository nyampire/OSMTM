% if job.imagery:
% if job.requires_nextview:
<div class="alert ${'alert-error' if not user.accepted_nextview else ''}">
    <p>
Access to this imagery is limited by the
<a href="${request.route_url('nextview')}?redirect=${request.route_url('job', job=job.id)}">NextView license agreement</a>.
    </p>
% if not user.accepted_nextview:
    <p>
You need to 
<a href="${request.route_url('nextview')}?redirect=${request.route_url('job', job=job.id)}">review and acknowledge</a>
the agreement.
    </p>
% endif
</div>
% endif
% if user.accepted_nextview or not job.requires_nextview:
<p><pre><a href='http://127.0.0.1:8111/imagery?title=${job.title}&type=tms&url=${job.imagery}' target="_blank" rel="tooltip" data-original-title="If you have JOSM running and remote control activated, clicking this link should automatically load imagery.">${job.imagery}</a></pre></p>
% endif
% endif
