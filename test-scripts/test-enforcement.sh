for i in {1..200}
do
    echo "trying on ubuntu-pod-$i"
    kubectl exec ubuntu-pod-$i -- ls
done
