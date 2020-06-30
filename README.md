# fn-localEnv

```
git clone https://github.com/khayama/fn-localEnv.git
cd fn-localEnv
```

```
ibmcloud login
ibmcloud target -r REGION -g RESOURCE_GROUP
ibmcloud fn property set --namespace YOUR_NAMESPACE
ibmcloud fn action create local-env --native script.sh
#ibmcloud fn action update local-env --native script.sh
ibmcloud fn action invoke local-env --result
```
