// Copyright (c) 2011-2014 The Bitcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef BETCHIP_QT_BETCHIPADDRESSVALIDATOR_H
#define BETCHIP_QT_BETCHIPADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class BetchipAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BetchipAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Betchip address widget validator, checks for a valid betchip address.
 */
class BetchipAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit BetchipAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // BETCHIP_QT_BETCHIPADDRESSVALIDATOR_H
