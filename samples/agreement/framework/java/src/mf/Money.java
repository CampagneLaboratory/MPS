/*
 * Copyright 2003-2008 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package mf;

import java.math.BigInteger;

// <codeFragment name="rep">
public class Money implements Comparable{
	private BigInteger myAmount;
	private Currency myCurrency;
//</codeFragment>

// <codeFragment name="simpleConstructors">
	public Money (double amount, Currency currency) {
		this.myAmount = BigInteger.valueOf(Math.round (amount * 100));
		this.myCurrency = currency;
	}
	public Money (long amount, Currency currency) {
		this.myAmount = BigInteger.valueOf(amount * 100);
		this.myCurrency = currency;
	}

//</codeFragment>

// <codeFragment name="addition">
	public Money add (Money arg) {
		checkSameCurrencies(arg);
		return new Money (myAmount.add(arg.myAmount), myCurrency);
	}
	public Money subtract (Money arg) {
		return this.add(arg.negate());
	}
	void checkSameCurrencies(Money arg) {
        if (!myCurrency.equals(arg.myCurrency))
            throw new IllegalArgumentException("currency mismatch");
	}
	private Money (BigInteger amountInPennies, Currency currency) {
		assert amountInPennies != null;
        assert currency != null;
		this.myAmount = amountInPennies;
		this.myCurrency = currency;
	}
	public Money negate() {
		return new Money (myAmount.negate(), myCurrency);
	}
//</codeFragment>

// <codeFragment name="getters">
	double amount() {
		return myAmount.doubleValue() / 100;
	}
	public Currency currency() {
		return myCurrency;
	}
//</codeFragment>

// <codeFragment name="compare">
	public int compareTo (Object arg) {
//		Money moneyArg = null;
//		return myAmount.compareTo(moneyArg.myAmount);
                throw new RuntimeException("??");
        }
	public int compareTo(Money arg) {
		checkSameCurrencies(arg);
		return myAmount.compareTo(arg.myAmount);
	}
//</codeFragment>

// <codeFragment name="dollars">
	public static Money dollars(double amount) {
		return new Money (amount, Currency.USD);
	}
//</codeFragment>

// <codeFragment name="equals">
	public boolean equals(Object arg) {
		if (!(arg instanceof Money)) return false;
		Money other = (Money) arg;
		return (myCurrency.equals(other.myCurrency) && (myAmount.equals(other.myAmount)));
	}
//</codeFragment>
	public String formatString() {
		return myCurrency.formatString(amount());
	}

// <codeFragment name="greaterThan">
	public boolean greaterThan(Money arg) {
		return (this.compareTo(arg) == 1);
	}
	public boolean lessThan(Money arg) {
		return (this.compareTo(arg) == -1);
	}
//</codeFragment>

// <codeFragment name="hash">
	public int hashCode() {
		return myAmount.hashCode();
	}
//</codeFragment>
	public boolean isNegative() {
	return (myAmount.compareTo(BigInteger.ZERO) == -1);
	}
	public boolean isPositive() {
	return (myAmount.compareTo(BigInteger.ZERO) == 1);
	}
	public boolean isZero() {
	return myAmount.signum() == 0;
	}
	public String localString() {
	return myCurrency.getFormat().format(amount());
	}

// <codeFragment name="multiply">
	public Money multiply (double arg) {
		return new Money (amount() * arg, myCurrency);
	}
//</codeFragment>
	public String toString() {
		return myCurrency.toString() + " " + amount();
	}
// <codeFragment name="divide">
	public Money[] divide(int denominator) {
		BigInteger bigDenominator = BigInteger.valueOf(denominator);
		Money[] result = new Money[denominator];
		BigInteger simpleResult = myAmount.divide(bigDenominator);
		for (int i = 0; i < denominator ; i++) {
			result[i] = new Money(simpleResult, myCurrency);
		}
		int remainder = myAmount.subtract(simpleResult.multiply(bigDenominator)).intValue();
		for (int i=0; i < remainder; i++) {
			result[i] = result[i].add(new Money(BigInteger.valueOf(1), myCurrency));
		}
		return result;
  	}
//</codeFragment>
}
