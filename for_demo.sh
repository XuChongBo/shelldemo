ls
pwd
export PKGS=" Flask==0.10.1 \
    Jinja2==2.7.3 \
    MarkupSafe==0.23 \
    Werkzeug==0.9.6 \
    itsdangerous==0.24 \
    Pillow>=2.3.0 six>=1.1.0 pydot" && for req in $PKGS; do echo $req; done


