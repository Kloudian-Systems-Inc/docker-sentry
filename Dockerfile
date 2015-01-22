FROM 			sentry:6.4.4

RUN 			pip install gevent newrelic

# 				Fix: debian broken gevent.ssl by removing PROTOCOL_SSLv3
RUN				sed -i 's/PROTOCOL_SSLv3/PROTOCOL_SSLv23/g' /usr/local/lib/python2.7/site-packages/gevent/ssl.py