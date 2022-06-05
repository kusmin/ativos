
<div class="container m-2 p-1 ">
    <div class="card ">
        <div class="card-body "> 
            <ol class=" list-group list-group-flush p-2 ">
                <g:each in="${domainProperties}" var="p">
                    <li class="list-group-item d-flex align-items-center">
                        <span id="${p.name}-label" class="property-label"><g:message code="${domainClass.decapitalizedName}.${p.name}.label" default="${p.defaultLabel}"/>:     </span>
                        <div class="property-value ml-1" aria-labelledby="${p.name}-label"><p>  ${body(p)}</p></div>
                    </li>
                </g:each>
            </ol>
        </div>
    </div>
</div>