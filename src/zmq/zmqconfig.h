// Copyright (c) 2014-2017 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BETCHIP_ZMQ_ZMQCONFIG_H
#define BETCHIP_ZMQ_ZMQCONFIG_H

#if defined(HAVE_CONFIG_H)
#include <config/betchip-config.h>
#endif

#include <stdarg.h>
#include <string>

#if ENABLE_ZMQ
#include <zmq.h>
#endif

#include <primitives/block.h>
#include <primitives/transaction.h>

void zmqError(const char *str);

#endif // BETCHIP_ZMQ_ZMQCONFIG_H