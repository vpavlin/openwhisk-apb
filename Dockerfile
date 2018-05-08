FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IG9wZW53aGlzay1zZXJ2aWNlLWFwYgpkZXNjcmlwdGlvbjogPgog\
IEFwYWNoZSBPcGVuV2hpc2sgaXMgYSBzZXJ2ZXJsZXNzLCBvcGVuIHNvdXJjZSBjbG91ZCBwbGF0\
Zm9ybSB0aGF0CiAgZXhlY3V0ZXMgZnVuY3Rpb25zIGluIHJlc3BvbnNlIHRvIGV2ZW50cyBhdCBh\
bnkgc2NhbGUuCmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAp0YWdzOgogIC0gRmFhUwog\
IC0gT3BlbldoaXNrCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBBcGFjaGUgT3BlbldoaXNrCiAg\
Y29uc29sZS5vcGVuc2hpZnQuaW8vaWNvbkNsYXNzOiBpY29uLWFwYWNoZQogIGltYWdlVXJsOiBo\
dHRwczovL2dpdGh1Yi5jb20vYXBhY2hlL2luY3ViYXRvci1vcGVud2hpc2svYmxvYi9tYXN0ZXIv\
ZG9jcy9pbWFnZXMvd2hpc2tfaWNvbl9mdWxsLWNvbG9yX3dpdGhfdG1fMTI4eDEyOC0zMDBkcGku\
cG5nP3Jhdz10cnVlCiAgZG9jdW1lbnRhdGlvblVybDogaHR0cHM6Ly9vcGVud2hpc2suYXBhY2hl\
Lm9yZy8KICBzZXJ2aWNlTmFtZTogYXBhY2hlLW9wZW53aGlzawogIGRlcGVuZGVuY2llczogW10K\
cGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogVGhpcyBkZWZhdWx0IHBs\
YW4gZGVwbG95cyBvcGVud2hpc2stc2VydmljZQogICAgZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6\
IHt9CiAgICBwYXJhbWV0ZXJzOiBbXQogICAgYmluZF9wYXJhbWV0ZXJzOgogICAgICAtIG5hbWU6\
IGFjdGlvbl9pZAogICAgICAgIHRpdGxlOiBUaGUgbmFtZSBvZiB0aGUgT3BlbldoaXNrIGFjdGlv\
bl9pZAogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlZmF1bHQ6ICcnCiAgICAgICAgcmVx\
dWlyZWQ6IFRydWUKICAgICAgLSBuYW1lOiBhY3Rpb24KICAgICAgICB0aXRsZTogRGVmaW5lIHRo\
ZSBhY3Rpb24gaW4gSmF2YVNjcmlwdCAoTm9kZS5qcyA2IFJ1bnRpbWUpCiAgICAgICAgdHlwZTog\
c3RyaW5nCiAgICAgICAgZGlzcGxheV90eXBlOiB0ZXh0YXJlYQogICAgICAgIGRlZmF1bHQ6ICcn\
CiAgICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgLSBuYW1lOiBjbGllbnRfaWQKICAgICAgICB0\
aXRsZTogTW9iaWxlIENsaWVudCBJZGVudGlmaWVyCiAgICAgICAgdHlwZTogc3RyaW5nCiAgICAg\
ICAgZGVmYXVsdDogJycKICAgICAgICByZXF1aXJlZDogVHJ1ZQo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
