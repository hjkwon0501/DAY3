# KUBERNETES DEPLOY
```
$ kubectl run nginx2 --image=hjkwon0501/nginx --port=80
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/nginx2 created

$ kubectl scale deployment nginx2 --replicas=20
deployment.extensions/nginx2 scaled
```

# CHECK 20 PODS 
```
$ kubectl.exe get po
NAME                           READY   STATUS             RESTARTS   AGE
nginx2-5f88676fb4-29ljm        1/1     Running            0          3m35s
nginx2-5f88676fb4-2rm7v        1/1     Running            0          3m35s
nginx2-5f88676fb4-2rqmk        1/1     Running            0          3m35s
nginx2-5f88676fb4-58sp2        1/1     Running            0          3m35s
nginx2-5f88676fb4-9htrp        1/1     Running            0          3m35s
nginx2-5f88676fb4-cghv6        1/1     Running            0          3m35s
nginx2-5f88676fb4-cwgml        1/1     Running            0          4m33s
nginx2-5f88676fb4-hchp8        1/1     Running            0          3m35s
nginx2-5f88676fb4-hw5zz        1/1     Running            0          3m35s
nginx2-5f88676fb4-k4jbp        1/1     Running            0          3m35s
nginx2-5f88676fb4-kptwv        1/1     Running            0          3m35s
nginx2-5f88676fb4-m6dmx        1/1     Running            0          3m35s
nginx2-5f88676fb4-mktt5        1/1     Running            0          3m35s
nginx2-5f88676fb4-ms8pq        1/1     Running            0          3m35s
nginx2-5f88676fb4-qz6n8        1/1     Running            0          3m35s
nginx2-5f88676fb4-s6xzm        1/1     Running            0          3m35s
nginx2-5f88676fb4-tzkl5        1/1     Running            0          3m35s
nginx2-5f88676fb4-vbz9m        1/1     Running            0          3m35s
nginx2-5f88676fb4-wrmmz        1/1     Running            0          3m35s
nginx2-5f88676fb4-xnh5d        1/1     Running            0          3m35s

$ kubectl get rs
NAME                     DESIRED   CURRENT   READY   AGE
nginx2-5f88676fb4        20        20        20      31m
```

# Description 
```
$ kubectl describe deploy/nginx2
Name:                   nginx2
Namespace:              default
CreationTimestamp:      Fri, 26 Jun 2020 15:05:07 +0900
Labels:                 run=nginx2
Annotations:            deployment.kubernetes.io/revision: 1
Selector:               run=nginx2
Replicas:               20 desired | 20 updated | 20 total | 20 available | 0 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
Pod Template:
  Labels:  run=nginx2
  Containers:
   nginx2:
    Image:        hjkwon0501/nginx
    Port:         80/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Progressing    True    NewReplicaSetAvailable
  Available      True    MinimumReplicasAvailable
OldReplicaSets:  <none>
NewReplicaSet:   nginx2-5f88676fb4 (20/20 replicas created)
Events:
  Type    Reason             Age   From                   Message
  ----    ------             ----  ----                   -------
  Normal  ScalingReplicaSet  38m   deployment-controller  Scaled up replica set nginx2-5f88676fb4 to 1
  Normal  ScalingReplicaSet  37m   deployment-controller  Scaled up replica set nginx2-5f88676fb4 to 20

```
  
#RESULT
![result](HJ.png)
