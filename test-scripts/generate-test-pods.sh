for i in {1..200}
do
    cat ubuntu-pod.yaml | sed "s/ubuntu-pod/ubuntu-pod-$i/g" | sed "s/app: ubuntu/app: ubuntu-$i/g" | kubectl apply -f -
done
