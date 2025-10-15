for i in {1..200}
do
    cat ubuntu-policy-monitor.yaml | sed "s/deploy-ubuntu-deployment/deploy-ubuntu-deployment-$i/g" | sed "s/app: ubuntu/app: ubuntu-$i/g" | kubectl apply -f -
done
