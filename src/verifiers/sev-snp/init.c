/* Copyright (c) 2022 Intel Corporation
 * Copyright (c) 2020-2022 Alibaba Cloud
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <rats-tls/log.h>
#include <rats-tls/verifier.h>

static unsigned int dummy_private;

enclave_verifier_err_t sev_snp_verifier_init(enclave_verifier_ctx_t *ctx, rats_tls_cert_algo_t algo)
{
	RTLS_DEBUG("ctx %p, algo %d\n", ctx, algo);

	ctx->verifier_private = &dummy_private;

	return ENCLAVE_VERIFIER_ERR_NONE;
}