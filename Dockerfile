# SPDX-License-Identifier: Apache-2.0

LABEL MAINTAINER Johannes Kastl <ojkastl_buildservice@ojkastl.de>

FROM registry.opensuse.org/opensuse/tumbleweed:20250331

RUN set -euo pipefail && \
 zypper -n refresh && \
 zypper -n install --no-recommends ansible-builder bash && \
 zypper -n clean && \
 rm -rf /var/log/{lastlog,tallylog,zypper.log,zypp/history,YaST2}

ENTRYPOINT ["/usr/bin/ansible-builder"]
CMD ["--help"]
