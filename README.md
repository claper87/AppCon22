# FDServices - The Hands Ons

### Want to get hands-on practice? You're in the right place `welcome`

This repository cover a series of hands-on exercices that will help you master the FDService namespace and harness the power of its services and methods. Through the exercises you will gain expertise on the following topics:

* SearchRequest
* OrderService
* OrderPaymentService


#### How to use all of this.
1. Start on the Search Request folder.
2. Within each folder you will find a "Demo Script" subfolder.
3. Read through each script and follow alogn in your developer org.
4. At the end of each demo script, there will be a challenge for you

`Enjoy! we will be building great things together in no time.`

### What is FDService?
FDService is a namespace included within the core packages of Fonteva. It has serveral classes that act as wrappers and/or services. Some of the classes have been annotated as Global, making them accesible to you for use. IF you have access to a Fonteva Instance running version 20Spring  or higher you will be able to follow alogn and practice all the concepts shared here.

## SearchRequest
The SearchRequest class controls every aspect of querying, including fields to select, number of records to return, filtering and sort order. Here are some key concepts for you:

* This feature uses SOQL under the hood.
* By default the results will be capped at 2,000. However, you can call the `soqlLimit(integer x)` function to change this.
* The FDService namespace's Governor Limits will be used first up.

## OrderService



