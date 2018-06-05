using DataDeps


register(DataDep(
    "Open Research Corpus",
"""
Dataset License Agreement

This Dataset License Agreement (“License”) is a legal agreement between you and the Allen Institute for Artificial Intelligence (“AI” or “we”) for Data made available to the individual or entity exercising the licensed rights under this License (“You” or “Your”). “Data” includes all text, data, information, source code, and any related materials, documentation, files, media, and any updates or revisions We may provide.

By exercising any of the licensed rights below, You accept and agree to be bound by the terms and conditions of this License. To the extent this License may be interpreted as a contract, You are granted the licensed rights in consideration of Your acceptance of these terms and conditions, and We grant You such rights in consideration of benefits that We receive from making the Data available under these terms and conditions. If You do not agree to the License, You may not use the Data. Subject to the conditions of this License, AI grants You a worldwide, royalty-free, non-sublicensable, non-exclusive, irrevocable (except as described herein) license under AI’s copyright rights, solely for non-commercial research and non-commercial educational purposes, to copy, reproduce, prepare derivate works of, perform, perform publicly, display, adapt, modify, distribute, and otherwise use this Data.

You grant to AI, without any restrictions or limitations, a non-exclusive, worldwide, perpetual, irrevocable, royalty-free, assignable and sub-licensable copyright license to copy, reproduce, prepare derivate works of, perform, perform publicly, display, adapt, modify, distribute, and otherwise use your modifications to and/or derivative works of the Data, for any purpose.

Any and all commercial use of this Data is strictly prohibited. Prohibited commercial use includes, but is not limited to, selling, leasing, or licensing the Data for monetary or other commercial gain, using the Data in connection with business functions or operations, or embedding or installing the Data into products for your own commercial gain or for the commercial gain of third parties. If you are uncertain as to whether your contemplated use of the Data is permissible, do not use this Data and instead contact AI for further information.

Do not remove any copyright or other notices from the Data.

Any distribution of the Data or any derivative works of the Data must be under the same terms and conditions as in this License, and the disclaimer of warranties in Section 7 of this License must be included in any distribution of the Data to a third party.

If you adapt, modify, or create derivative versions of the Data, indicate that You have modified the original Data and provide the date(s) of such modifications.

You agree and acknowledge that any feedback, suggestions, ideas, comments, improvements or other input (“Feedback”) about the Data provided by You to AI is voluntarily given, and AI shall be free to use the Feedback as it sees fit without obligation or restriction of any kind. THE DATA COMES “AS IS”, WITH NO WARRANTY. AI EXPRESSLY DISCLAIMS ANY EXPRESS, IMPLIED OR STATUTORY WARRANTY, INCLUDING WITHOUT LIMITATION, THE WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE, ANY WARRANTY AGAINST INTERFERENCE WITH YOUR ENJOYMENT OF THE SOFTWARE, AND ANY WARRANTY OF TITLE OR NON-INFRINGEMENT. THE DATA IS NOT WARRANTIED TO FULFILL ANY OF YOUR PARTICULAR PURPOSES OR NEEDS.

NEITHER AI NOR ANY CONTRIBUTOR TO THE DATA SHALL BE LIABLE FOR ANY DAMAGES RELATED TO THE DATA OR THIS LICENSE, INCLUDING DIRECT, INDIRECT, OTHER, PUNITIVE, SPECIAL, CONSEQUENTIAL OR INCIDENTAL DAMAGES, TO THE MAXIMUM EXTENT THE LAW PERMITS, REGARDLESS OF THE LEGAL THEORY SUCH CLAIM OR DAMAGES IS BASED ON, EVEN IF AI HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. AI’S TOTAL AGGREGATE LIABILITY, UNDER ANY THEORY OF LIABILITY, SHALL NOT EXCEED US\$10. YOU MUST PASS ON THIS LIMITATION OF LIABILITY ON WHENEVER YOU DISTRIBUTE THE DATA OR DERIVATIVE WORKS THEREOF.

We have no duty of reasonable care or lack of negligence, and we are not obligated to (and will not) provide technical support for the Data.

If you breach this License or if you sue anyone over any intellectual property regarding the Data, or another party’s use thereof, your license to the Data shall terminate automatically. You will immediately cease all use and distribution of the Data and destroy any copies or portions of the Data in your possession. Other terms of this License that should survive such termination of this License shall survive.

    The Data may be subject to U.S. export jurisdiction at the time it is licensed to you, and it may be subject to additional export or import laws in other places. You agree to comply with all such laws and regulations that may apply to the Data.

    All rights not expressly granted to You herein are reserved. This License does not convey an ownership right to You or any Third Party. The Data is licensed, not sold.

    This License shall be construed and controlled by the laws of the State of Washington, USA, without regard to its conflicts of law doctrine. Venue for any action related to this License or the Data shall limited to the state and federal courts of the USA having jurisdiction over Seattle, WA, and You expressly consent to such venue and jurisdiction and expressly waive any challenge to such venue and jurisdiction. If any provision of this License shall be deemed unenforceable or contrary to law, the rest of this License shall remain in full effect and interpreted in an enforceable manner that most nearly captures the intent of the original language. The U.N. Convention on the International Sale of Goods is expressly excluded and does not apply to this License.

    By downloading this Data you acknowledge that you have read and agreed all the terms in this License, and represent and warranty that You have authority to do so on behalf of any entity exercising the licensed rights under this License.

--------------------------------------------------------

This is a subset of the full Semantic Scholar corpus which represents papers crawled from the Web and subjected to a number of filters.

Website: http://labs.semanticscholar.org/corpus/
Year: 2018
Authors: Waleed Ammar and Dirk Groeneveld and Chandra Bhagavatula and Iz Beltagy and Miles Crawford and Doug Downey  and Jason Dunkelberger and Ahmed Elgohary and Sergey Feldman and Vu Ha and Rodney Kinney
  and Sebastian Kohlmeier and Kyle Lo and Tyler Murray and Hsu-Han Ooi and Matthew Peters and Joanna Power
   and Sam Skjonsberg and Lucy Lu Wang and Chris Wilhelm and Zheng Yuan and Madeleine van Zuylen and Oren Etzion


--------------------------------------------------------
It is requested that that any published research that makes use of this data cites the following paper:
Waleed Ammar et al. 2018. Construction of the Literature Graph in Semantic Scholar. NAACL.
https://www.semanticscholar.org/paper/09e3cf5704bcb16e6657f6ceed70e93373a54618
""",
    ["https://s3-us-west-2.amazonaws.com/ai2-s2-research-public/open-corpus/" .* split(
          """corpus-2018-05-03/s2-corpus-00.gz
          corpus-2018-05-03/s2-corpus-01.gz
          corpus-2018-05-03/s2-corpus-02.gz
          corpus-2018-05-03/s2-corpus-03.gz
          corpus-2018-05-03/s2-corpus-04.gz
          corpus-2018-05-03/s2-corpus-05.gz
          corpus-2018-05-03/s2-corpus-06.gz
          corpus-2018-05-03/s2-corpus-07.gz
          corpus-2018-05-03/s2-corpus-08.gz
          corpus-2018-05-03/s2-corpus-09.gz
          corpus-2018-05-03/s2-corpus-10.gz
          corpus-2018-05-03/s2-corpus-11.gz
          corpus-2018-05-03/s2-corpus-12.gz
          corpus-2018-05-03/s2-corpus-13.gz
          corpus-2018-05-03/s2-corpus-14.gz
          corpus-2018-05-03/s2-corpus-15.gz
          corpus-2018-05-03/s2-corpus-16.gz
          corpus-2018-05-03/s2-corpus-17.gz
          corpus-2018-05-03/s2-corpus-18.gz
          corpus-2018-05-03/s2-corpus-19.gz
          corpus-2018-05-03/s2-corpus-20.gz
          corpus-2018-05-03/s2-corpus-21.gz
          corpus-2018-05-03/s2-corpus-22.gz
          corpus-2018-05-03/s2-corpus-23.gz
          corpus-2018-05-03/s2-corpus-24.gz
          corpus-2018-05-03/s2-corpus-25.gz
          corpus-2018-05-03/s2-corpus-26.gz
          corpus-2018-05-03/s2-corpus-27.gz
          corpus-2018-05-03/s2-corpus-28.gz
          corpus-2018-05-03/s2-corpus-29.gz
          corpus-2018-05-03/s2-corpus-30.gz
          corpus-2018-05-03/s2-corpus-31.gz
          corpus-2018-05-03/s2-corpus-32.gz
          corpus-2018-05-03/s2-corpus-33.gz
          corpus-2018-05-03/s2-corpus-34.gz
          corpus-2018-05-03/s2-corpus-35.gz
          corpus-2018-05-03/s2-corpus-36.gz
          corpus-2018-05-03/s2-corpus-37.gz
          corpus-2018-05-03/s2-corpus-38.gz
          corpus-2018-05-03/s2-corpus-39.gz"""),
    "https://s3-us-west-2.amazonaws.com/ai2-s2-research-public/open-corpus/license.txt"
    ];
))
