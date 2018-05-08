```
minishift start --memory 8GB
minishift ssh
sudo ip link set docker0 promisc on
sudo vi /var/lib/minishift/openshift.local.config/master/master-config.yaml
```

Ensure the following block exists:
```yaml
admissionConfig:
  pluginConfig:
    openshift.io/ImagePolicy:
      configuration:
        apiVersion: v1
        kind: ImagePolicyConfig
        resolveImages: AttemptRewrite
```

minishift openshift restart
