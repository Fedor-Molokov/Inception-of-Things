kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 --decode && echo


kubectl -n argocd describe secret $(kubectl -n argocd get secret | awk '/^argocd-initial-admin-secret-/{print $1}') | awk '$1=="token:"{print $2}'


