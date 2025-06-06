/*
 * Copyright (c) 2020-2023, NVIDIA CORPORATION.  All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "../decoderMaskedMultiheadAttentionLaunch.h"

namespace tensorrt_llm
{
namespace kernels
{

namespace
{
auto constexpr kSizePerHead = 256;
} // namespace

namespace mmha
{

#ifdef ENABLE_BF16
INSTANTIATE_MMHA_LAUNCHERS_WITH_ATTN_LOGIT_SOFTCAPPING_SCALE(__nv_bfloat16, kSizePerHead)
#endif

} // namespace mmha

} // namespace kernels
} // namespace tensorrt_llm
