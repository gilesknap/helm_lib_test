echo '------------------ Expected output: 

# Source: app-test/templates/ioc.yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name:  release-name
  namespace: bl45p
  labels:
    app: release-name
    beamline: BeamlineNameFromApplicationValues
    ioc_version: "2021.2.0"
    is_ioc: "True"
data:
    ---- Start of Values.data
    This Data is from the Library Chart values.yaml
    ----- End of Values.data



------------------ Actual output: 
'
helm dependency update app
helm template app
