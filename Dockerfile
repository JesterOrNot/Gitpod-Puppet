FROM gitpod/workspace-full

RUN sudo apt-get update -qq \
    && sudo apt-get install -yq \
       puppetmaster \
       puppet \
    && sudo gem pristine executable-hooks --version 1.6.0 \
    && sudo gem pristine nokogiri --version 1.10.9 \
    && sudo gem pristine gem-wrappers --version 1.4.0 \
    && sudo gem pristine jaro_winkler --version 1.5.4
