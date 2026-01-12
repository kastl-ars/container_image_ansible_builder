# SPDX-License-Identifier: Apache-2.0

FROM registry.opensuse.org/opensuse/tumbleweed:20260109

RUN set -euo pipefail && \
 zypper --non-interactive refresh && \
 zypper --non-interactive install --no-recommends ansible-builder bash && \
 zypper --non-interactive clean && \
 rm -rf /var/log/{lastlog,tallylog,zypper.log,zypp/history,YaST2}

ENTRYPOINT ["/usr/bin/ansible-builder"]
CMD ["--help"]
