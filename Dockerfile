FROM jupyter/base-notebook:latest
USER root
RUN apt-get update && apt-get install -y apt-utils nodejs npm
RUN sudo npm install -g ijavascript && ijsinstall
RUN sudo npm install pouchdb lodash dayjs node-fetch
CMD ["jupyter","lab","--ip=0.0.0.0","--allow-root"]

