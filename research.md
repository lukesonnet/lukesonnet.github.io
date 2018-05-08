---
layout: page
title: Research
---

<script src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
<script>

function showDiv(divName) {
    var x = document.getElementById(divName);
    if (x.style.display == "none" || x.style.display == "") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
</script>

### Governance and Accountability

* **Improving political communication: a field experiment in Pakistan** - With Miriam Golden (UCLA) and Saad Gulzar (Stanford) <a onclick='showDiv("ivr")'>(+)</a>

<div id="ivr" class="toshow">

<ul><ul class="hidden">
<li> - Funded by the International Growth Center, Empirical Studies of Conflict, and the Abdul Latif Jameel Poverty Action Lab.</li>
<li> - <a href="https://www.theigc.org/wp-content/uploads/2017/08/Golden-et-al-2017-Final-report_v2.pdf">Pilot report for IGC</a></li>
<li>&nbsp;</li>
<li> Elections are a blunt tool for accountability. Can enhanced politician-voter communication in the periods between elections improve democratic outcomes? We partner with 20 provincial assembly members in Pakistan and design an experiment with Interactive Voice Response (IVR) – a technology that enables politicians to robocall a large number of voters in their own voice to ask them questions and receive feedback. We randomize whether respondents receive a call soliciting preferences about upcoming decisions the politician must make. A follow-up call randomizes how responsive the politician is to voters’ preferences. We study the effect of this communication on voters’ evaluations of the incumbent, their views on government performance, and the prospects for electoral accountability. We also study how politicians allocate effort and make decisions in response to increased information from certain areas of their constituency.</li>

</ul></ul>

</div>

* **Social spillovers and female political participation in khyber pakhtunkhwa** - With Saad Gulzar (Stanford) and Muhammad Yasir Khan (UC Berkeley) <a onclick='showDiv("pkreg")'>(+)</a>

<div id="pkreg" class="toshow">

<ul><ul class="hidden">
<li> - Funded by the International Growth Center</li>
<li>&nbsp;</li>
<li> There exists a large political participation gap between the genders in Pakistan, including at the preliminary level of voter registration. There are at least 10 million fewer registered women than men in Pakistan, and this project seeks to explain this gap by studying how social networks condition the political participation of males and females in Khyber Pakhtunkhwa.</li>

</ul></ul>

</div>

### Machine Learning

* **Kernel Regularized Logistic Regression: avoiding misspecification bias while maintaining interpretability for binary outcome regressions** - With Chad Hazlett (UCLA) <a onclick='showDiv("krlogit")'>(+)</a>

<div id="krlogit" class="toshow">

<ul><ul class="hidden">
<li> - <a href="https://github.com/lukesonnet/KRLS">Extension of KRLS R package</a></li>
<li> - <a href="/software/">Also see the software page</a></li>
<li> - Draft forthcoming</li>
<li>&nbsp;</li>
<li> When faced with a binary outcome, investigators face two specification challenges: a "structural component" (e.g. XB) that makes use of covariate data, and a link function connecting the probability of observing a "1" to this structural component. Investigators typically have little or no theoretical guidance on either point. Though the choice of link function will often have little substantive impact, the choice of structural component can easily lead to severe misspecification bias. Machine learning methods can more flexibly model Pr(Y=1\|X), mitigating both the structural and link function specification concerns. However, social scientists often find machine learning tools inappropriate as they rarely enable estimate the usual quantities of interest, such as marginal effects and their standard errors. We describe Kernel Regularized Logistic Regression (KRLogit), a kernel logistic ridge regression approach that seeks to avoid costly misspecification errors through a flexible modeling approach that nevertheless allows for interpretation and inference similar to traditional generalized linear models. We automatically produce estimates that are as or more intuitive than standard interpretations for conventional logit or probit model coefficients. The method is an extension of Kernel Regularized Least Squares (Hainmueller & Hazlett 2014), but performance is improved both in theory and practice for binary outcomes. We provide the KRLogit method as an option in the existing KRLS package, also adding cluster- and hetreoskedasticity-robust standard error options, weights, and a new approximation technique that greatly improves speed for both binary and continuous outcomes. </li>

</ul></ul>

</div>

* **Simplifying complex functional forms for theoretical interpretability: estimating non-linear relationships in multiple stages** <a onclick='showDiv("func")'>(+)</a>

<div id="func" class="toshow">

<ul><ul class="hidden">
<li> - Draft available on request</li>
<li>&nbsp;</li>
<li> A number of machine learning techniques have improved prediction and analysis in the social sciences. While tools such as kernel regression, generalized additive models, or Kernel Regularized Least Squares do provide smooth conditional expectation functions (CEFs), they are often difficult to interpret with respect to the predictors of interest. This paper presents an approach that uses the partial derivatives of smooth CEFs at each observation as estimates of pointwise marginal effects. I then suggest predicting the variation in these pointwise marginal effects using the original predictors, providing a lower-order, more easily interpretable CEF. This provides a framework for flexible, interpretable, data-driven model fitting. I demonstrate that this method can perform as well as or better than several existing approaches and apply it to research on the onset of civil war.</li>

</ul></ul>

</div>


### Estimating Ideology

* Jeffrey B. Lewis, Adam Boche, Aaron Rudkin, and Luke Sonnet. Forthcoming. [**"The new Voteview.com: preserving and continuing Keith Poole’s infrastructure for scholars, students, and observers of Congress"**](https://doi.org/10.1007/s11127-018-0546-0). *Public Choice*. [[gated]](https://doi.org/10.1007/s11127-018-0546-0) <a href="/assets/preprints/BocheEtAl_Voteview.pdf">[pre-print]</a> <a onclick='showDiv("vv")'>(+)</a>

<div id="vv" class="toshow">

<ul><ul class="hidden">
<li> - <a href="https://voteview.com">Voteview.com</a></li>
<li> - <a href="/software/">Also see the software page</a></li>

</ul></ul>

</div>

* **Estimating NOMINATE scores over time using penalized splines** - With Jeffrey B. Lewis (UCLA) <a onclick='showDiv("dyn")'>(+)</a>

<div id="dyn" class="toshow">

<ul><ul class="hidden">
<li>First presented in 1997 and derived from members' complete roll-call voting records, DW-NOMINATE scores have become the most widely-used measure of the positions of members of Congress in an abstract "ideology" space. By assuming that individual legislators' positions cannot move freely over their careers, the DW-NOMINATE model produces estimates that can be compared across time. This feature has made DW-NOMINATE scores the basis of a great deal of research on political polarization (Binder, 2014; McCarty et al., 2006, for example). However, recent studies have raised concerns about the plausibility of the strong constraints on member's ideological trajectories that DW-NOMINATE imposes and about the effect that those constraints may have on the inferences that we make about how polarization has waxed and waned over the course of US history (Bateman and Lapinski, 2016, for example). In this paper, we develop a new and more flexible approach to estimating the trajectories of legislators' ideal points over time within the NOMINATE modeling framework. We use penalized spline functions (Wood, 2016) to model each legislator's ideal points over her career.  This approach allows us to consider a continuum of possible degrees of constraint and, in particular, to explore how the constraint that is placed on members' movements affects inferences about political polarization and our understanding of legislative behavior more generally. </li>

</ul></ul>

</div>
