srcs-$(CFG_TEE_CORE_EMBED_INTERNAL_TESTS) += pta_self_tests.c
srcs-$(CFG_TEE_CORE_EMBED_INTERNAL_TESTS) += core_self_tests.c
srcs-$(CFG_TEE_CORE_EMBED_INTERNAL_TESTS) += interrupt_tests.c
srcs-$(CFG_WITH_STATS) += stats.c
srcs-$(CFG_TA_GPROF_SUPPORT) += gprof.c

ifeq ($(CFG_SE_API),y)
srcs-$(CFG_SE_API_SELF_TEST) += se_api_self_tests.c
cppflags-se_api_self_tests.c-y += -Icore/tee/se
endif
