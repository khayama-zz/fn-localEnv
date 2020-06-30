# fn-localEnv

```
git clone
cd fn-localEnv
```

```
chmod +x exec
```

```
zip exec.zip exec
```

```
ibmcloud login
ibmcloud target -r REGION -g RESOURCE_GROUP
ibmcloud fn property set --namespace YOUR_NAMESPACE
ibmcloud fn action create local-env --native exec.zip
#ibmcloud fn action update local-env --native exec.zip
ibmcloud fn action invoke local-env --result
```
