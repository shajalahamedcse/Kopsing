#### Create service account
    kubectl create serviceaccount cluster-admin-dashboard-sa

#### Bind ClusterAdmin role to the service account
    kubectl create clusterrolebinding cluster-admin-dashboard-sa \
      --clusterrole=cluster-admin \
      --serviceaccount=default:cluster-admin-dashboard-sa

#### Parse the token

    TOKEN=$(kubectl describe secret $(kubectl -n kube-system get secret | awk '/^cluster-admin-dashboard-sa-token-/{print $1}') | awk '$1=="token:"{print $2}')
    
    
#### Print TOKEN
    echo $TOKEN