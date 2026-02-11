#Helper Function to get cluster name with a default value if nothing is found
{{- define "dynamic.clusterName" -}}
{{- with (index (lookup "v1" "Node" "" "").items 0).metadata.annotations }}
{{- index . "k3s.io/hostname" | default "edge-1" }}
{{- end }}
{{- end }}
