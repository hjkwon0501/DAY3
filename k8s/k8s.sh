name = $1

kubectl run $1 --image=hjkwon0501/nginx --port=80
kubectl scale deployment $1 --replicas=20
