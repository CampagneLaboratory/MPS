﻿Multiple Targets

================


This sample illustrates how to have a single language generated into multiple different target languages.
The sample language itself has no generator. The two alternative generators are wrapped into two separate languages that both extend the sample language.

Authors of solutions choose the desired target language by adding an empty node from the intended target language - either IncludeBLTarget or IncludeXMLTarget, respectively. This will include the correct generator in the generation plan.

Using the "Languages engaged in generation" property of the MultiTarget language provides an alternative way to select the target language.