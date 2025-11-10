# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as cortex__xdr with context %}

cortex-xdr-package-install-pkg-installed:
  pkg.installed:
    - name: {{ cortex__xdr.pkg.name }}
