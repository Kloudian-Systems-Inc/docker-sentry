FROM            sentry:7.7.0

USER            root
RUN             pip install sentry-github sentry-slack django-redis gevent>=0.13 newrelic
USER            user

ENTRYPOINT      ["newrelic-admin", "run-program"]
