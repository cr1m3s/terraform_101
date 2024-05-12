```
terraform init
tf validate
tf apply
$ tf state list
module.flux_bootstrap.flux_bootstrap_git.this
module.github_repository.github_repository.this
module.github_repository.github_repository_deploy_key.this
module.kind_cluster.kind_cluster.this
module.tls_private_key.tls_private_key.this
gsutil ls gs://{google-bucket}
kubectl get ns
NAME                 STATUS   AGE
default              Active   13m
demo                 Active   2m6s
flux-system          Active   11m
kube-node-lease      Active   13m
kube-public          Active   13m
kube-system          Active   13m
local-path-storage   Active   13m
curl -s https://fluxcd.io/install.sh | bash
flux get all
flux logs -f
git clone https://github.com/cr1m3s/tf-fluxcd-flux-gitops.git
cd tf-fl.. 
flux create source git kbot \
    --url=https://github.com/cr1m3s/kbot \
    --branch=main \
    --namespace=demo \
    --export > clusters/demo/kbot-gr.yaml
flux create helmrelease kbot \
    --namespace=demo \
    --source=GitRepository/kbot \
    --chart="./helm" \
    --interval=1m \
    --export > clusters/demo/kbot-hr.yaml
git add .
git commit -m "+ manifest"
git push

flux logs -f
k get po -n demo
```
