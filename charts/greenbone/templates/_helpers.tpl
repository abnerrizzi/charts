{{/*
Expand the name of the chart.
*/}}
{{- define "greenbone.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "greenbone.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "greenbone.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "greenbone.labels" -}}
helm.sh/chart: {{ include "greenbone.chart" . }}
{{ include "greenbone.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "greenbone.selectorLabels" -}}
app.kubernetes.io/name: {{ include "greenbone.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "greenbone.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "greenbone.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Return the proper image name
*/}}
{{- define "greenbone.image" -}}
{{- if hasKey . "tag" -}}
  {{- if ne .tag "" -}}
    {{- printf "%s/%s:%s" .Values.global.imageRegistry .repository .tag }}
  {{- else -}}
    {{- printf "%s/%s" .Values.global.imageRegistry .repository }}
  {{- end -}}
{{- else -}}
  {{- printf "%s/%s:%s" .Values.global.imageRegistry .repository .Chart.AppVersion }}
{{- end -}}
{{- end }}