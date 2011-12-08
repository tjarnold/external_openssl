#
# These flags represent the build-time configuration of openssl for android
#
# They were pruned from the "Makefile" generated by running ./Configure from import_openssl.sh
#

# From CLFAG=	
LOCAL_CFLAGS += -DOPENSSL_THREADS -D_REENTRANT -DL_ENDIAN #-DTERMIO

ifneq ($(HOST_OS),windows)
LOCAL_CFLAGS += -DDSO_DLFCN -DHAVE_DLFCN_H
endif

# From DEPFLAG=
LOCAL_CFLAGS += -DOPENSSL_NO_CAMELLIA -DOPENSSL_NO_CAPIENG -DOPENSSL_NO_CAST -DOPENSSL_NO_CMS -DOPENSSL_NO_GMP -DOPENSSL_NO_IDEA -DOPENSSL_NO_JPAKE -DOPENSSL_NO_MD2 -DOPENSSL_NO_MDC2 -DOPENSSL_NO_RC5 -DOPENSSL_NO_SHA0 -DOPENSSL_NO_RFC3779 -DOPENSSL_NO_SEED -DOPENSSL_NO_STORE -DOPENSSL_NO_WHIRLPOOL

# Extra
LOCAL_CFLAGS += -DOPENSSL_NO_STATIC_ENGINE -DOPENSSL_NO_GOST -DOPENSSL_NO_DTLS1 -DOPENSSL_NO_RSAX -DOPENSSL_NO_RDRAND -DOPENSSL_NO_SCTP -DOPENSSL_NO_HEARTBEATS

# Directories
LOCAL_CFLAGS += -DOPENSSLDIR="\"/system/lib/ssl\"" -DENGINESDIR="\"/system/lib/ssl/engines\""


# OpenSSL isn't ready to be built with strict aliasing, and fixing it without
# breaking both API and ABI is hard
LOCAL_CFLAGS += -fno-strict-aliasing


# Debug
# LOCAL_CFLAGS += -DCIPHER_DEBUG
