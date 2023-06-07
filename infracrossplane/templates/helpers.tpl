{{- define "azureProvider" -}}
    {{- if and .Values.azureProvider.package.path .Values.azureProvider.package.version -}}
        {{- printf "%s:%s" .Values.azureProvider.package.path .Values.azureProvider.package.version -}}
    {{- else -}}
        {{- printf "xpkg.upbound.io/upbound/provider-azure:v0.32.0" -}}
    {{- end -}}
{{- end -}}

{{- define "azureADProvider" -}}
    {{- if and .Values.azureProviderAAD.package.path .Values.azureProviderAAD.package.version -}}
        {{- printf "%s:%s" .Values.azureProviderAAD.package.path .Values.azureProviderAAD.package.version -}}
    {{- else -}}
        {{- printf "xpkg.upbound.io/upbound/provider-azuread:v0.8.0" -}}
    {{- end -}}
{{- end -}}
