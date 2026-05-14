# SUMMARY

This paper examines the impact of coalitions on the economic costs of the 2012 Iran and 2014 Russia sanctions. By estimating and simulating a quantitative general equilibrium trade model under different coalition setups, we (1) dissect welfare losses for sanctions senders and target; (2) compare prospective coalition partners; (3) investigate ‘ optimal’ coalitions that maximize payoff from sanctions; (4) provide bounds for sanctions potential, that is, the maximum welfare change attainable when sanctions are scaled vertically up to an embargo, and horizontally up to a global regime. Relative to unilateral action, we find that coalitions magnify welfare losses imposed while their impact on domestic welfare loss incurred depends on the design and sectoral dimension of sanctions. Hypothetical cooperation of large developing economies such as China additionally raises the deterrent force of coalitions. Additionally, we quantify transfers that equalize welfare losses across coalition members to further demonstrate asymmetries in the relative economic burden of sanctions. In all scenarios, we implement a novel Bayesian bootstrap procedure that generates confidence bands for simulation outcomes. 

JEL codes: F13, F14, F17, F51 

—Sonali Chowdhry, Julian Hinz, Katrin Kamin and Joschka Wanner 

# Brothers in arms: the value of coalitions in sanctions regimes

Sonali Chowdhry , Julian Hinz , Katrin Kamin and Joschka Wanner * 

DIW Berlin & Kiel Institute for the World Economy, Berlin, Germany; Bielefeld University & Kiel Institute for the World Economy, Bielefeld, Germany; Kiel Institute for the World Economy, Kiel, Germany; Julius-Maximilians-Universitat € Wurzburg € (JMU), Kiel Institute for the World Economy & CESifo, Wurzburg, € Germany 

# 1. INTRODUCTION

The use of sanctions for the pursuit of geopolitical objectives has been rapidly rising since the 1970s, but most strikingly in the last decade. Sanctions as a form of economic statecraft are often considered to be strategic substitutes for military intervention and thereby a form of engaging in ‘war by other means’ (Blackwill and Harris, 2016). The 

米 We thank Carsten Eckel, Gabriel Felbermayr, Lisandra Flach, Mahdi Ghodsi, Bernard Hoekman,two anonymous referees, the discussant Monika Mr�azov�a and the editor Isabelle M�ejean for helpfulcomments, as well as Hendrik Mahlkow and Anna Jacobs for their valuable input with code and data.We also thank participants at the 77th Economic Policy Panel, ETSG 2022, CEPR-NYU Abu DhabiWorkshop 2022, EIIFT-New Delhi Conference 2022, International Trade and IPR BolognaWorkshop 2022, Italian Trade Study Group Workshop 2022, Gottinger € Workshop ‘InternationalEconomics’ 2022, FIW Research Conference ‘International Economics’ 2023, Baltic EconomicConference 2023 and attendees of seminars in Antwerpen, Bielefeld, DIW Berlin, German Council ofEconomic Experts and WIIW for their feedback.

The Managing Editor in charge of this paper was Isabelle Mejean. 

economic cost and coercive force – and thus the geopolitical leverage – of this instrument, however, relies upon countries’ positions in global trade networks (Farrell and Newman, 2019). In this paper, we shed light on the above by not only quantifying the economic costs and deterrent potential of sanctions, but also by providing novel quantitative evidence on the impact of coalitions, that is, alliances of countries that jointly implement sanctions. 

Substantial diplomatic capital is spent towards enlarging or preserving these coalitions as they increase the ‘moral suasion’ of sanctions regimes (Hufbauer et al., 1990). However, coalitions may also shift the magnitude and distribution of economic costs from sanctions, for instance, by reducing opportunities for circumventing restrictions. Here, we investigate the extent to which these cost changes occur by simulating sanctions under different hypothetical coalition setups using a quantitative general equilibrium trade model. While the model features many outcomes of potential interest such as prices and wages, we centre our analysis on changes in aggregate welfare that are interpreted as the economic cost of sanctions. 

We focus on sanctions enacted against Iran in 2012 and Russia in 2014 as both episodes involved multiple sanctions-sending countries that adopted restrictive measures which were unprecedented in terms of their depth at the time of implementation. Although these sanctions cases were similar in this regard, there were notable differences between their political objectives, scope and targeted sectors. Looking at objectives, Iran sanctions were intended to compel its governing regime to engage in negotiations over the country’s nuclear programme and to induce compliance with international obligations on nuclear activities. In the case of Russia, sanctions were imposed in 2014 following its annexation of Crimea. They were intended to restrict Russia’s ability to finance further military operations, to demonstrate solidarity with Ukraine and support its territorial integrity. They aimed to combine economic pressure and diplomatic isolation of Russia to compel the regime towards a de-escalation of the conflict. In terms of scope, sanctions against Russia were focused on restrictions in specific sectors, while an all-encompassing broad sanctions regime including full embargoes in some sectors was imposed against Iran.1 

In analysing these sanctions regimes, the paper makes several contributions to the literature. First, our simulations provide different benchmarks against which the punitive force of current and hypothetical sanctions coalitions can be understood. These benchmarks correspond to scenarios wherein sanctions escalate either horizontally through inclusion of all countries (i.e., a global coalition) or vertically through a deepening of measures (i.e., a complete embargo). Here, we find that the coalition against Iran (Russia) enforced 38.9% (57.8%) of the welfare loss which can be realized by a horizontal expansion of sanctions and 47% (16.3%) of the welfare loss under a vertical expansion. 

Second, we provide a detailed assessment of contributions that individual members make to the sanctions coalition in terms of welfare loss incurred domestically and those imposed on Iran and Russia. The ‘value’ of coalitions then emerges from comparisons of these contributions between two scenarios where sanctions are implemented either unilaterally or multilaterally. One of our key findings is that multilateral enforcement amplifies the deterrent force of sanctions as welfare loss increases by 20.2% for Iran and 12% for Russia relative to unilateral action. By reducing opportunities for sanctionsbusting, coordination is thus shown to increase the efficacy of these sanctions regimes. Another recent contribution to the literature supports our finding on the increased effectiveness of multilaterally enforced sanctions. Hausmann et al. (2022) analyse export restrictions imposed by the EU and the United States following Russia’s invasion of Ukraine in 2022 and show that coordinating export bans in broad coalitions can increase the cost imposed on Russia while keeping the additional cost for coalition members low. 

In terms of domestic welfare loss, our findings additionally highlight important differences between the two sanctions regimes. While multilateral action in the case of Russia lowers domestic welfare losses for coalition members, the same does not hold for Iran where a full-blown multilateral embargo on oil and gas increases domestic welfare loss borne by sanctioning states. This difference stems primarily from the composition of sectors targeted and the degree to which coalition members produce these goods domestically or can easily substitute them with other low-cost global suppliers. Thus, our findings emphasize the sectoral dimension of sanctions measures and its role in determining the economic cost of sanctions. This sectoral dimension and the importance of substitute markets have been emphasized by recent contributions from Imbs and Pauwels (2023) and Bachmann et al. (2022). While the former highlight heterogeneity in costs incurred by coalition members for the embargoes on Russian (energy) exports to the EU, the latter analyse the German economy’s dependence on Russian natural gas prior to 2022, and the effect of reallocating energy inputs. 

In a further contribution to the literature, our simulations investigate which third party countries would further magnify the deterrent force of sanctions were they to join the existing coalition. Here, we find that China’s cooperation has a powerful effect. It increases Iran’s welfare loss by nearly 75% and Russia’s by approximately 22%. Other large developing economies such as India, South Africa, Vietnam and Brazil are also seen to exert significant punitive force in these counterfactuals. 

In a related exercise, we examine the size and composition of an ‘optimal’ sanctioning coalition against Iran and Russia that maximizes the coalition’s ‘payoff’, that is, the ratio of cost imposed on the target to the cost incurred domestically. Interestingly, these simulations reveal that several countries that belong to the actual coalition would also be members of such an optimal coalition. 

Turning towards methodology, our simulations rely upon a quantitative trade model featuring sector-level trade flows and input-output linkages, specifically a Caliendo and Parro (2015)-type model of the world economy. The framework by Caliendo and Parro (2015) belongs to the class of so-called structural gravity models (see e.g. Head and Mayer, 2014) and we exploit gravity’s ‘dual use’ potential that allows (1) a theoryconsistent estimation of trade cost effects of observed sanctions and; (2) a general equilibrium simulation of the changes in trade flows and welfare in sanctioned and sanctioning states as well as third-parties under different actual and hypothetical setups of sanctions coalitions. 

Here, the paper makes two additional contributions. First, we extend the Caliendo and Parro (2015) model by incorporating a transfers mechanism that equalizes aggregate welfare losses from sanctions across coalition members. This extension allows for comparisons of welfare losses across countries (in terms of transfers sent or received) and for calculating the size of a sanctions adjustment fund that would eliminate disparities in welfare losses within the coalition. Our results show that USD 2.9 billion and USD 4.9 billion would need to be mobilized for members to equalize their welfare loss from the 2012 Iran and 2014 Russia sanctions, respectively. In the case of Iran, the top transfer recipient states (in shares of GDP) are Greece, South Korea, Turkey, Spain and Japan. For the case of Russia, transfers are directed towards smaller economies in Russia’s neighbourhood that experience relatively high domestic welfare losses such as Lithuania, Estonia and Latvia, but also Ukraine and Georgia. Considering both the Iran and Russia sanctions regimes, we find that the top contributor to such adjustment funds would be the United States whose combined transfers would amount to approximately USD 4.4 billion. 

Our second methodological contribution is to introduce a Bayesian bootstrap procedure to provide confidence intervals for both the gravity estimations and the general equilibrium simulation results. In doing so, we capture the uncertainty in the impact of sanctions on trade costs and aggregate welfare. Our choice of the Bayesian bootstrap is motivated by the fact that it retains the same trade network across all model runs, unlike the traditional bootstrap procedure. To our knowledge, this is the first paper that exploits the Bayesian bootstrap in the context of structural gravity models. 

The remainder of the paper is structured as follows: In Section 2, we provide an overview of the growing literature on the economic impact of sanctions. We extend the model by Caliendo and Parro (2015) with a transfer channel to evaluate the effect of coalitions in sanctions regimes in Section 3. Section 4 describes in turn the econometrics and the various data sources used for estimating the gravity model and counterfactual scenarios. In Section 5, we discuss the impact of sanctions on sectoral trade costs. Counterfactual scenarios and the simulation results are described in Section 6. Finally, Section 7 concludes with policy recommendations. 

# 2. RELATED LITERATURE

Within the context of rekindled great power rivalry (Brunnermeier et al., 2018), the study of sanctions and strategic alliances has gained significant attention in research in both economics and political science. This paper makes several contributions to the evolving literature at the intersection of these disciplines. 

First, we contribute to the latest research on the economic costs of sanctions (Felbermayr et al., 2020; Dai et al., 2021; Kwon et al., 2022). Here, our findings build upon recent papers in numerous respects. For instance, by examining a wide range of coalition scenarios for both Iran and Russia sanctions, we reaffirm the results of Langot et al. (2022) who identify higher economic costs for Russia when the EU coordinates its sanctions with other partners. Our findings regarding China’s potential cooperation in the sanctions regime against Russia also relate to Mahlstein et al. (2022). Based on simulations using the GTAP 8 model, they report the additional economic harm from China’s involvement to be marginal for Russia and significantly higher for both China and allied states. In contrast, this paper uses a Caliendo and Parro (2015)-type general equilibrium quantitative trade model and finds that China’s cooperation substantially increases welfare loss for Russia whilst imposing minimal additional welfare cost on China itself. Moreover, the remaining coalition members experience a small reduction in their welfare losses from China’s involvement. 

Prior literature has also analysed how sanctions affect trade flows between senders and targets (Etkes and Zimring, 2015; Neuenkirch and Neumeier, 2015; Heilmann, 2016; Crozet and Hinz, 2020; Crozet et al., 2021; Hinz and Monastyrenko, 2022). However, the effectiveness of sanctions regimes is also influenced by trade with third parties. Peksen and Peterson (2016) find that sanction senders are more likely to threaten or impose sanctions when the target has limited opportunities to redirect lost trade to third parties. Early (2012) analyses 96 episodes of US sanctions to show that third parties cooperate (sanction-bust) with senders when the costs from sanctions are low (high). Accounting for trade flows with third parties is therefore crucial for measuring the overall welfare loss from sanctions. In thispaper, we incorporate these wideranging third party effects by conducting simulations with a multi-country multi-sector trade model that features rich inter-sectoral linkages. 

Our counterfactuals on optimal coalitions add to the nascent literature on sanctions design as well. For instance, Becko (2022) proposes a two country model to theoretically examine which goods can be optimally targeted by sanctions (designed as trade taxes) so as to maximize the cost imposed on the target for the lowest cost incurred by the sanction sender. In comparison, this paper investigates the size and country composition of a coalition in a multi-country setting that similarly maximizes the sanctions payoff through simulations with a quantitative trade model. Additionally, our examination of burden-sharing among coalition members complements the work of Schropp and Tsigas (2022) who allow for the redistribution of additional tariff rents between countries imposing sanctions on Russia. While they focus on the impact of undertaking such transfers on welfare losses faced by Russia, we concentrate instead on the heterogeneity in the magnitudes of these transfers across coalition members. 

Moreover, our work contributes to the broader political science literature on sanctions. Previous studies have examined the impact of sanctions on governing regime stability (Escrib�a-Folch et al., 2015) and identified limitations in achieving political goals through sanctions (Pape, 1997, 1998; Hufbauer et al., 2007; Grauvogel and Von Soest, 2014). 

These studies emphasize factors such as threat credibility, coalition structure and economic pressure in determining sanctions’ effectiveness. This paper provides novel empirical evidence on effectiveness by explicitly quantifying and comparing the punitive force of sanctions under actual and various hypothetical coalition setups. 

In emphasizing the role of coalitions, we additionally contribute to ongoing research on the relationship between trade flows and strategic alliances. Papers in this field demonstrate that intensively trading country-pairs are less likely to engage in military disputes (Polachek, 1980; Pollins, 1989; Martin et al., 2008), military alliances positively impact bilateral trade flows (Gowa and Mansfield, 1993), and alliances involving major powers exhibit increased trade (Mansfield and Bronson, 1997). Our analysis explores how alliances can enhance the deterrent effect of sanctions on targeted economies, thereby advancing the understanding of the use of economic instruments as foreign policy tools. 

# 3. MODEL

We now construct a model of the world economy in the spirit of Caliendo and Parro (2015) that allows us to evaluate the effect of sanctions coalitions and that includes a novel channel allowing for transfers between countries for burden sharing. 

There are N countries, indexed o and $d ,$ and J sectors, indexed j and k. In each sector $j ,$ there is a continuum of products $\varphi ^ { j } \in [ 0 , 1 ]$ �. Production uses labour as the sole primary production factor, which is in fixed supply and mobile across sectors but not across countries. All markets are perfectly competitive and both labour and goods markets are assumed to clear and international trade is balanced up to an exogenously given national trade surplus or deficit. 

There are $L _ { d }$ representative households in each country which allocate their consumption spending in such a way as to maximize the following utility function: 

$$
u (C _ {d}) = \prod_ {j = 1} ^ {\mathcal {J}} (C _ {d} ^ {j}) ^ {\chi_ {d} ^ {j}} \quad \text { with } \quad \sum_ {j = 1} ^ {\mathcal {J}} \chi_ {d} ^ {j} = 1, \tag {1}
$$

where $\mathcal { C } _ { d } ^ { j }$ is a constant elasticity of substitution (CES) aggregate of the different products in industry j and $\chi _ { d } ^ { j }$ is the constant consumption share on industries j. 

Production of the goods along the sectoral continua uses labor and intermediate goods from all sectors. Let $\gamma _ { d } ^ { j } \in [ 0 , 1 ]$ denote the cost share of labour and $\gamma _ { d } ^ { k , j } \in [ 0 , 1 ]$ � with $\textstyle \sum _ { k } \gamma _ { d } ^ { k , j } = 1 - \gamma _ { d } ^ { j }$ the share of sector k in sector $j \mathrm { \dot { s } }$ intermediates, such that 

$$
q _ {d} ^ {j} \left(\varphi^ {j}\right) = z _ {d} ^ {j} \left(\varphi^ {j}\right) \left[ l _ {d} ^ {j} \left(\varphi^ {j}\right) \right] ^ {\gamma_ {d} ^ {j}} \prod_ {k = 1} ^ {\mathcal {I}} m _ {d} ^ {k, j} \left(\varphi^ {j}\right) ^ {\gamma_ {d} ^ {k, j}} \tag {2}
$$

where $\mathcal { Z } _ { d } ^ { j } ( \varphi ^ { j } )$ is the overall efficiency of a producer, $\dot { l _ { d } ^ { j } } ( \varphi ^ { j } )$ is labour input, and $m _ { d } ^ { k , j } ( \varphi ^ { j } )$ represents a CES composite of goods from sector k used as intermediate goods to produce $\varphi ^ { j }$ . 

The cost at which a country can produce a good depends on the input bundle cost $ { \mathcal { C } } _ { o } ^ { j }$ in the respective sector, which combines the wage $w _ { o }$ and the prices for intermediates $P _ { o } ^ { j } ,$ as well as on the country’s productivity for the good. Additionally, trade in goods is costly, such that the price at which country o can offer $\varphi ^ { j }$ in destination market d is given by 

$$
p _ {o d} ^ {j} (\varphi^ {j}) = \kappa_ {o d} ^ {j} \cdot \frac {\epsilon_ {o} ^ {j}}{z _ {o} ^ {j} (\varphi^ {j})} \tag {3}
$$

where $\kappa _ { o d } ^ { j } = \tau _ { o d } ^ { j } \zeta _ { o d } ^ { j } t _ { o d } ^ { j }$ denotes bilateral sector-specific trade frictions, combining tariffs $\tau _ { o d } ^ { j } \geq 1$ (where the ad-valorem tariff rate is given by $\tau _ { o d } ^ { j } - 1 )$ ), export subsidies $0 < \zeta _ { o d } ^ { j } \le$ 1 (where the ad-valorem subsidy rate is given by $1 - \zeta _ { o d } ^ { j } ) ;$ , and iceberg trade costs $t _ { o d } ^ { j } \geq 1$ . Tariff revenue is collected by the importing country and export subsidies are paid by the exporting country and net revenue is transferred to or payed for by its households in a lump-sum way. 

Ricardian comparative advantage is induced �a la Eaton and Kortum (2002) through a country-specific idiosyncratic productivity draw $\tilde { \mathcal { L } } _ { o } ^ { j } \big ( \varphi ^ { j } \big )$ for each good from a Fr�echet distribution with location parameter ${ \lambda } _ { o } ^ { j }$ that varies by country and sector capturing technological comparative advantage across sectors, and a shape parameter $\theta ^ { j }$ that varies by sector determining the strength of comparative advantage across goods within sectors. 

Total expenditures on goods from sector j in country d is denoted by $X _ { d } ^ { j }$ . The expenditure on those goods originating from country o is the bilateral trade flow $X _ { o d } ^ { j }$ . Producers and final consumers buy any good $\varphi ^ { j }$ from the supplier that can offer the lowest price. The market share of producing country o in destination market d in a sector j coincides with the share of goods uj that d buys from o which in turn coincides with the probability that o is the lowest-cost supplier for a good in this sector. It is given by a sectoral version of Eaton and Kortum (2002)’s gravity-type trade share expression: 

$$
\pi_ {o d} ^ {j} = \frac {\lambda_ {o} ^ {j} (e _ {o} ^ {j} \kappa_ {o d} ^ {j}) ^ {- \theta^ {j}}}{\sum_ {h = 1} ^ {\mathcal {N}} \lambda_ {h} ^ {j} (c _ {h} ^ {j} \kappa_ {h d} ^ {j}) ^ {- \theta^ {j}}}. \tag {4}
$$

Up until here the model is effectively identical to Caliendo and Parro (2015). We use this structure for various counterfactual scenarios, alternatively adjusting the set of countries that imposes sanctions on the target economy and the stringency of measures imposed as captured by bilateral sector-specific trade frictions. All counterfactual scenarios are hence distinguished by different exogenous counterfactual changes of $\kappa _ { o d } ^ { j }$ which then translate into adjustments of the endogenous variables, such as wages, prices and trade shares. Additionally, in order to reflect potential policies for so-called burden sharing of the cost of sanctions in some of our scenarios, we subsequently incorporate a simple transfers mechanism. 

Specifically, let $T _ { d } { \overline { { \overline { { \mathbf { \Lambda } } } } } } _ { } 0$ describe the net transfer received by d out of a pool of countries $s$ who form a sanctions coalition.2 In comparison to Caliendo and Parro (2015), these transfers alter the expression for country d’s final absorption, that is, its level of consumption expenditure across all sectors, which now includes labor income, net tariff revenues/export subsidy payments $R _ { d } .$ , an exogenously given trade imbalance3 term $B _ { d } .$ , plus the transfer: 

$$
I _ {d} = w _ {d} L _ {d} + R _ {d} + B _ {d} + T _ {d}.
$$

Transfers have to adhere to the obvious constraint that, across the coalition, they are balanced, hence 

$$
\sum_ {d \in \mathcal {S}} T _ {d} = 0.
$$

The magnitude of the transfer may be determined by any given metric. In our case, we assume countries in the sanctions coalition agree to face the same aggregate welfare cost, such that 

$$
\frac {\hat {I} _ {d}}{\hat {P} _ {d}} = \frac {\hat {I} _ {d ^ {\prime}}}{\hat {P} _ {d ^ {\prime}}} = \overline {{c}} \quad \forall d, d ^ {\prime} \in \mathcal {S}
$$

Together, these two conditions on the transfers pin down $\begin{array} { r } { \overline { { c } } = \sum _ { d \in \mathcal { S } } ( \hat { w } _ { d } w _ { d } L _ { d } + R _ { d } ^ { ' } + } \end{array}$ $B _ { d } ^ { ' } ) / \sum _ { d \in S } I _ { d } ^ { ' } \hat { P } _ { d }$ and $\begin{array} { r } { T _ { d } ^ { ' } = \hat { c } ( I _ { d } \hat { P } _ { d } ) - ( \hat { w } _ { d } w _ { d } L _ { d } + R _ { d } ^ { ' } + B _ { d } ^ { ' } ) } \end{array}$ . 

We solve for counterfactual general equilibria for alternative trade costs in the form of $\hat { \kappa } _ { o d } ^ { j } = \kappa _ { o d } ^ { j ^ { \prime } } / \kappa _ { o d } ^ { j }$ (^x denoting the relative change from a previous value x to a new one $x ^ { ' } )$ using the exact hat algebra methodology introduced to this type of quantitative trade models by Dekle et al. (2008). 4 Solving the model in changes has the big advantage that we do not require knowledge on the level of the technology parameters ${ \lambda } _ { o } ^ { j }$ and the iceberg trade costs $t _ { o d } ^ { j }$ . It also enables us to use a fast solution algorithm that builds on the algorithm by Caliendo and Parro (2015) and keeps the computational burden of the very large number of simulations manageable.5 

# 4. ESTIMATION

# 4.1. Gravity model

Conveniently, the model sketched above yields a sectoral gravity equation that – including a time dimension – can be estimated as follows: 

$$
X _ {o d t} ^ {j} = \exp \left(\left[ \text { SANCTIONS } _ {o d t} \right] ^ {\prime} \boldsymbol {\delta} ^ {j} + \left[ \mathbf {x} _ {o d t} \right] ^ {\prime} \boldsymbol {\beta} ^ {j} + \xi_ {o t} ^ {j} + \nu_ {d t} ^ {j} + \mu_ {o d} ^ {j}\right) + \varepsilon_ {o d t} ^ {j}. \tag {5}
$$

The dependent variable is the value of trade flows from origin (o) to destination (d) in sector (j) in a given year (t). Equation (5) includes fixed effects $\xi _ { o t } ^ { j } , \nu _ { d t } ^ { j } ,$ and $\mu _ { o d } ^ { j }$ to purge all origin � sector � time and destination � sector � time specific factors, as well as unobserved time-invariant and sector-specific bilateral characteristics. The first two sets of fixed effects are required from a theoretical point of view as they capture unobserved model components.6 Specifically, they account for country-sector-level technology, costs of production inputs, as well as countries’ embeddedness into the global trade network – a feature one could think of as a country’s general ‘remoteness’ that has been formalized as ‘multilateral resistance’ by Anderson and van Wincoop (2003). The third set of fixed effects is not dictated by economic theory, but motivated by econometric endogeneity concerns about unobservable trade cost determinants being correlated with trade policy variables of interest. For aggregate bilateral trade flows, Baier and Bergstrand (2007) suggest to tackle this endogeneity using country-pair fixed effects and we follow this by now standard approach, additionally allowing country-pair unobservables to be sector-specific in our more disaggregated consideration of bilateral trade. 

The vector SANCTIONS consists of four dummy variables corresponding to sanctions (irrespective of type) affecting exports to and imports from Iran since 2012; and those affecting exports to and imports from Russia since 2014. We therefore take an agnostic approach to the specific sanctions measures adopted, focusing instead on their combined effect on bilateral trade flows. For Russia, the coefficients in SANCTIONSodt encapsulate both the impact of the coalition’s imposed sanctions as well as Russia’s retaliatory measures. Yet, the dominant effect stems from the imposed sanctions, as Russia’s countermeasures were primarily confined to sectors like agri-food products. 

The specification additionally features $\mathbf { x } _ { o d t } .$ , which is a vector of time-varying bilateral trade cost variables. These include customary important policy variables like joint membership in the WTO, a FTA or a currency union. Correspondingly, $\pmb { \beta } ^ { j }$ is the vector of the respective sector-specific coefficients. To account for heteroskedasticity and zero trade flows, the equation is estimated with a Poisson pseudo-maximum likelihood (PPML) procedure as suggested by Santos Silva and Tenreyro (2006). Throughout the paper, we will assume that sanctions never lower trade costs between a sanctioning and a sanctioned country and therefore put any estimated $\hat { \delta } > 0 \mathrm { t o } \hat { \delta } = 0$ . 

# 4.2. Bayesian bootstrap

To obtain confidence intervals for both our econometric point estimates and our general equilibrium simulation results, we rely on a bootstrap procedure.7 Specifically, we introduce the Bayesian bootstrap by Rubin (1981) to the gravity context, which – akin to the traditional bootstrap – re-samples a number of times and performs the same estimation and hence yields a distribution of estimates rather than just a point estimate, but does so – different from the traditional bootstrap – by assigning non-zero non-integer weights to all observations, hence leaving the overall structure of the sample and all corresponding sets of fixed effects unaffected.8 

For the econometric estimates, the need to deviate from standard robust inference results from an incidental parameter problem for the PPML standard errors (SEs) in the presence of fixed effects. Pfaffermayr (2019) and Pfaffermayr (2021) describe the problem in a cross-sectional gravity setting for heteroskedasticity-robust SEs and propose jackknife and bootstrap solutions, respectively. Weidner and Zylkin (2021) show that SEs clustered at the country pair level in a panel gravity setting are downward biased and propose an analytical bias correction.9 Our bootstrapping procedure is an alternative solution to the downward bias of the SEs.10 As Weidner and Zylkin (2021), we allow errors to be serially correlated by drawing the sampling weights not for each observations separately, but by cluster, that is, by country pair. 

For the general equilibrium simulation results of structural gravity models, typically only a single set of results is shown. Three exceptions are Anderson and Yotov (2010), who bootstrap PPML estimates and separately calculate multilateral resistance indices for each draw, Larch and Wanner (2017), who do standard inference for their point estimates, but bootstrap from the distribution of gravity coefficients to account for trade cost uncertainty in their simulations, and Felbermayr et al. (2022), who bootstrap in the estimation and use the resulting distribution of trade cost shocks and trade elasticities rather than a single set of values as inputs to their counterfactual analysis. In considering a range of potential trade cost shocks based on bootstrapped estimates as inputs to our GE analysis, our approach to obtain confidence intervals for the simulations is similar to the one by Felbermayr et al. (2022), but based on a Bayesian rather than a traditional bootstrap in the estimation stage. 

In each iteration of the bootstrap, we use the same weights across the different sectorwise estimations, hence allowing error terms to be correlated not only for a given country pair-sector combination over time, but also for trade flows of the same country pair across all sectors. As the estimation of the sectoral coefficients is perfectly separable given our very strict set of fixed effects, this does not affect individual SEs obtained with the bootstrap in the estimation stage. It does, however, allow for correlation of the estimates for different sectors across the bootstrap iterations and therefore leads to more conservative inference in the general equilibrium stage. A similar accounting for sectoral correlation would not be possible in a procedure which uses Weidner and Zylkin’s (2021) SE correction in the estimation stage, as this can only be applied sector by sector in an isolated manner. Hence, while our procedure yields a joint distribution of the estimated trade cost changes across all sectors that can be fed into into the general equilibrium simulations, the alternative procedure would lead to separate, independent distributions for all sectors, from which one would then draw the shocks to feed into the simulations. 

# 4.3. Data

For estimating the structural gravity model, we rely on several data sources. Data on trade flows in goods (excluding energy products) is taken from BACI (Gaulier and Zignago, 2010) that reports information for 200 countries over 2000–19. Data on trade in services for 40 reporting countries with more than 200 partner countries over 2005– 19 is drawn from the OECD-WTO Balanced Trade in Services dataset. We use data on oil trade from the IEA’s Oil Information Statistics that reports annual imports of oil products (crude oil and refined oil products) by country of origin for 38 OECD and 14 European non-OECD countries (including Iran and Russia) for 2000–19. Data on natural gas trade is drawn from IEA Natural Gas Information Statistics with data on annual imports of natural gas (in million cubic metres) by country of origin for 152 economies over 2000–19. The CEPII Gravity dataset (Head and Mayer, 2014) provides information pertaining to control variables such as joint membership of countries in the WTO, a free trade area or currency union. 

The general equilibrium model is calibrated using standard data sources. The main input for simulations for the model are derived from the GTAP 10 database (Aguiar et al., 2019). This data supply the model with information on consumption shares, input coefficients and bilateral tariffs. Bilateral trade shares and trade balances for goods trade are constructed using the BACI database. Those for services, oil and gas trade are taken from the GTAP 10 database.11 The data are concorded to 65 GTAP sectors and 141 countries or regions. Trade elasticities are taken from Fontagn�e et al. (2022) for traded good sectors and from GTAP 10 otherwise.12 

For both sanctions episodes, general equilibrium simulations are performed from a base period one year before the introduction of the sanctions. In the Iranian case, this implies that we can directly use the 2011 base year data of the GTAP 10 database. For Russia, we use the same GTAP 2011 data but additionally project value added for all countries to 2013 values using observed GDP growth rates taken from the World Bank database. In Section 6.4, in order to translate percentage welfare effects into US Dollar amounts, we additionally use PPP-adjusted real GDP data from the World Bank database. 

# 5. PARTIAL EQUILIBRIUM ESTIMATION RESULTS

As a first step, we examine the partial equilibrium impact of the Iran and Russia sanctions on aggregate bilateral trade flows between sanctioning and sanctioned countries. Results from this exercise are reported in Table 1. In the case of goods, we find that sanctions reduced overall exports to Iran by $( \exp ( - 0 . 3 4 ) - 1 ) \times 1 0 0 = - 4 0 . 5 \%$ . The effect on imports is even stronger, with trade flows dropping by approximately 84%. In the case of Russian sanctions, exports decline by 33.6% from sanctions whereas there is no statistically significant reduction in imports from Russia. 

In addition to the decline in goods trade, columns (2)–(4) reveal that 2012 sanctions against Iran strongly reduced exports of services to the country by 54% and effectively embargoed all bilateral trade in oil.13 Gas imports from Iran contracted by more than 80% as well. In contrast, the 2014 wave of sanctions against Russia did not translate into significant reductions in oil or gas trade although trade in services fell by 13.8% for exports and 20.1% for imports.14 

11 Note that the data used for the estimation of the trade costs shock for oil and gas, namely IEA’s Oil and Gas Information Statistics, are available for many years but for few countries and hence cannot be used in the simulation exercises. In comparison, GTAP data on these sectors are reported only for a number of base years but for all GTAP countries/regions. It provides the full matrix of trade flows and is therefore used in the simulation exercises reported in Section 6. Checks confirm a relatively strong relationship between import shares for oil and gas reported in both data sources. 

12 Table A.1 reports these sectoral elasticities. 

13 This empirical result is in line with the policy implemented, which was indeed an oil embargo. Note that the fact that we can identify a huge negative effect rather than having to drop the sanctions variables in this sector due to separation indicates that some very small trade value in oil between sanctioning countries and Iran remains. For all practical purposes, the ‘almost embargo’ identified in the regression is equivalent to enforcing a strict ‘actual embargo’ in the simulations in the rest of the article. 

14 The estimated coefficients on the standard gravity control variables such as WTO, common currency, and FTA are mostly in line with customary results. The negative WTO effect for the oil sector is driven by a jump in the reported oil exports by Ukraine to non-WTO countries, that is concurrent with the country’s entry into the WTO in 2008. Note, however, that these estimates on gravity 


Table 1. Impact of 2012 Iran and 2014 Russia sanctions on aggregate goods, services, oil and gas trade


<table><tr><td></td><td>Goods(1)</td><td>Services(2)</td><td>Oil(3)</td><td>Gas(4)</td></tr><tr><td>Sanctions on flows to Iran</td><td>-0.34*(0.18)</td><td>-0.79***(0.19)</td><td>-11.76***(0.97)</td><td></td></tr><tr><td>Sanctions on flows from Iran</td><td>-0.61**(0.29)</td><td>0.14(0.19)</td><td>-15.93***(0.76)</td><td>-1.71***(0.63)</td></tr><tr><td>Sanctions on flows to Russia</td><td>-0.29***(0.06)</td><td>-0.13*(0.07)</td><td>0.16(0.47)</td><td></td></tr><tr><td>Sanctions on flows from Russia</td><td>-0.01(0.11)</td><td>-0.19*(0.10)</td><td>-0.27(0.46)</td><td>0.25(0.44)</td></tr><tr><td>WTO</td><td>0.07(0.05)</td><td>0.01(0.10)</td><td>-3.10***(0.84)</td><td>3.60***(1.04)</td></tr><tr><td>Common currency</td><td>0.09***(0.03)</td><td>0.12(0.13)</td><td>0.22(0.16)</td><td>0.71(0.81)</td></tr><tr><td>FTA</td><td>0.07***(0.02)</td><td>0.01(0.03)</td><td>0.09(0.10)</td><td>0.68**(0.30)</td></tr><tr><td>origin × year FE</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td></tr><tr><td>destination × year FE</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td></tr><tr><td>origin × destination FE</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td></tr><tr><td>Observations</td><td>381,380</td><td>48,528</td><td>56,297</td><td>7,949</td></tr><tr><td>Pseudo R<eq>^{2}</eq></td><td>0.99333</td><td>0.99368</td><td>0.95563</td><td>0.96404</td></tr></table>


Note: The table above reports estimates from structural gravity estimations for aggregate bilateral trade in goods (excluding energy products), services, oil and natural gas between sanctioning and sanctioned states (Iran and Russia). Bootstrapped standard errors (based on 1000 runs) are clustered by origin and destination and reported in parentheses. Significance codes: ***:0.01, **:0.05,*:0.1. 


Next to these aggregate results, we report findings from sectoral gravity estimations for goods in Figures A.1 and A.2. These figures report the implied trade cost changes from sanctions that are computed with the following expression: $[ \exp ( - \hat { \delta } ^ { j } / \theta ^ { j } ) - 1 ] \times$ 100% where $\delta ^ { j }$ corresponds to the sectoral sanctions coefficient and $\theta ^ { j }$ captures the sectoral trade elasticity based on Fontagn�e et al. (2022).15 In the case of services, oil and natural gas, the figures report trade costs calculated directly from estimates reported in Table 1. Overall, these implied estimated relative changes in sectoral trade costs due to sanctions will be used to inform our simulations in Section 6.16 $6 .$ 

control variables do not impact our counterfactual simulations that only draw upon sanctions coefficients. 

15 Consider an example where we assume the trade elasticity to be −5. Then the estimated coefficient on Russia’s aggregate goods imports translates into a tariff equivalent trade cost change of 6%. 

16 Note that, as customary in the related literature, we rule out by assumption that sanctions lower bilateral trade costs between sanctioning and sanctioned countries and therefore truncate the distribution of estimated trade cost changes at zero. We later on also feed this truncated distribution into the general equilibrium model for the counterfactual analyses. Note that if a bootstrap draw leads to an estimate of lower trade costs in a sector, our procedure still takes into account the information from the estimate that sanctions were not effective in putting burden on the targeted country in this sector—it only rules out that it makes the targeted country better off. 

Looking at these sectoral estimates (Figures A.1 and A.2), we find that trade costs for exporting to Iran escalated for oil and several agri-food sectors such as beverages and tobacco products, cattle, animal products, rice and lumber. Besides these industries, services, other manufacturing, fabricated metals and motor vehicles were also adversely affected by sanctions. In the case of exports to Russia, goods such as cane, beet, vegetables, fruit, milk and meat experienced the greatest rise in trade costs (up to 311%, SE ¼ 142) – reflecting Russia’s embargo on food and agricultural products. Electronics, other manufacturing, machinery and equipment were affected as well. 

For imports, we observe that the embargo on Iran’s oil sector raised its trade costs by 89% (SE ¼ 5:4). Trade costs also escalated for cane and beet, iron and steel and other transport equipment. In the case of Russia, the steepest increase in trade costs was faced by sanctioning countries’ imports of wearing apparel (87%, SE ¼ 35), wool, cattle meat, wheat and oil seeds. 

Together these estimations reveal that sanctions against Iran and Russia caused trade costs to surge in multiple, but different, industries. 

# 6. GENERAL EQUILIBRIUM SIMULATION RESULTS

While structural gravity estimations reported in Section 5 revealed the trade cost increasing impact of sanctions at the aggregate or sectoral level, they do not account for the full economic adjustments associated with sanctions arising from changes in relative prices and costs across inter-linked industries and countries. To do so requires running simulations in a general equilibrium model. 

Aside from quantifying the welfare costs from the implemented sanctions policies against Iran and Russia, we use the model to perform a number of counterfactual experiments. What would happen if all countries globally implemented the measures currently enforced by the coalition, that is, a horizontal expansion of sanctions? What would happen if the existing coalition were to implement an embargo against Iran or Russia, respectively, that is, a vertical expansion of sanctions? The model also allows us to explore the individual contributions of all actual – and hypothetical third – member countries to the Iran and Russia sanctions regimes. 

Therefore, we now proceed to computing a series of counterfactual scenarios that evaluate different setups of sanctions coalitions and policies with the help of the model sketched in Section 3 and drawing upon sectoral trade cost estimates reported in Section 5. 

# 6.1. Benchmarks

For our first set of simulations, we examine the welfare loss imposed by the actual sanctions coalitions on Iran and Russia. Furthermore, this welfare loss is evaluated against several benchmarks that reflect the coercive ‘potential’ of sanctions. Such measurement of sanctions potentials is similar to the idea of Heid and Larch (2014), who investigate the economic vulnerability of countries due to their integration into the global economy. In contrast, we compute the potential of sanctions to reduce welfare in target regimes in three distinct ways. 

First, we examine the ‘vertical’ potential of sanctions by computing changes in welfare if the actual coalition were to enforce a complete embargo on trade with Iran and Russia. Next, we compute the ‘horizontal’ sanctions potential by evaluating a scenario wherein these sanctions are implemented by a global coalition that maintains the severity of actual measures, that is, imposes trade costs that match those estimated in Section 5. The final benchmark corresponds to the autarky case which corresponds to the maximum welfare loss that can potentially be imposed on Iran and Russia through the toughest possible sanctions. 

In summary, the model computes changes in welfare when moving from the baseline case where no country imposes sanctions on Iran or Russia to four counterfactuals that include the actual coalitions setup and the three benchmark scenarios described above. Note that in these scenarios, we assume a baseline of balanced trade, as is common in the literature.17 

The results are displayed in Table 2a and b. In the case of Iran sanctions, the actual coalition imposes a welfare loss of 1.9% (SE ¼ 0:16) on Iran with its existing set of measures. If this coalition were to enforce a complete embargo on trade with Iran, welfare loss imposed would rise to 4.04%. Comparing these outcomes, we note that the actual coalition setup thus achieves approximately 47% of the punitive force that can be realized under an embargo scenario. If, however, the actual coalition were to expand its membership to include all countries while retaining the stringency of its existing measures, the welfare loss imposed increases to 4.88% (SE ¼ 0:45). This suggests that even with a limited set of partners, the actual coalition is able to reach more than a third of the sanctions potential of a hypothetical global coalition. 

Our final benchmark relates to the welfare loss that can be imposed on Iran when it’s placed under autarky by a global coalition implementing a complete embargo. This extreme case enables us to understand the upper bound of sanctions-induced welfare costs. Under this scenario, welfare loss imposed on Iran climbs to 13.2% – approximately 11 pp. higher than the loss which is enforced by the existing coalition setup. 

The patterns are similar for Russia sanctions. In this case, the welfare loss imposed on Russia by the actual coalition setup (−1.44%, SE ¼ 0:29) rises by more than six-fold if the coalition moves to an embargo (−8.81%). This gap between the actual welfare loss imposed by the coalition and their vertical sanctions potential stems from multiple factors. First, Russia’s natural gas industry was largely spared from direct sanctions in 2014. In the case of oil, sanctions were also narrowly imposed with the intent to affect Russia’s future production capacity and therefore targeted oil exploration rather than conventional oil projects. Moreover, several sectors were deliberately carved out from punitive action for humanitarian reasons. These sectors included consumer goods such as pharmaceuticals, household electronics, apparel and textiles. Overall, these exemptions contribute to the substantial ‘water’ in the sanctions regime from 2014. 


Table 2. Benchmark impact for actual and hypothetical coalitions and measures


<table><tr><td colspan="3">(a) Iran sanctions</td></tr><tr><td></td><td>Actualcoalition</td><td>Globalimplementation</td></tr><tr><td>Actual measures</td><td>-1.9%(0.16)</td><td>-4.88%(0.45)</td></tr><tr><td>Complete embargo</td><td>-4.04%</td><td>-13.2%</td></tr><tr><td colspan="3">(b) Russia sanctions</td></tr><tr><td></td><td>Actualcoalition</td><td>Globalimplementation</td></tr><tr><td>Actual measures</td><td>-1.44%(0.29)</td><td>-2.49%(0.41)</td></tr><tr><td>Complete embargo</td><td>-8.81%</td><td>-15.24%</td></tr></table>


Note: The table above displays welfare losses imposed on Iran and Russia under four different scenarios, namely, (1) the status-quo with actual coalition composition and actual measures; (2) a ‘horizontal sanctions potential’ as sanctions are expanded to a global coalition enforcing the actual set of measures; (3) a ‘vertical sanctions potential’ as sanctions are expanded by the actual coalition to a complete embargo and; (4) the autarky scenario where a global coalition places a complete embargo on trade with Iran or Russia. Note that bootstrapped standard errors based on 1000 replications can only be computed for (1) and (2) as there is no uncertainty in trade costs for (3) and (4). 


Moving to the next scenario, we observe that the additional welfare loss imposed on Russia from a global coalition that enforces the actual set of sanctions measures amounts to 1.05 pp. (2.49–1.44 ¼ 1.05). Interpreted differently, the actual coalition setup attains more than half of the coercive power of a global coalition that employs similar measures. The final benchmark reveals the maximum possible welfare loss that can be imposed on Russia when it is embargoed by a global coalition. Here, welfare loss jumps to 15.24%, more than 1.5 times than what could be achieved by the actual coalition imposing a complete embargo on trade with Russia. Taken together, these benchmarks suggest that there remains significant ‘water’ in the sanctions policy of the actual coalition. However, the extent to which welfare losses against the target regime can be increased is capped by the autarky scenario. 

Comparing sanctions regimes, we find that the actual coalition is closer towards fulfilling its vertical sanctions potential in the case of Iran (47%) relative to Russia (16.3%). This aligns with our priors, given the differences in the scope of measures that were imposed under these two regimes. Sanctions against Iran were relatively tougher, spanning an embargo on oil exports, bans on transactions with the Central Bank of Iran, exclusion from the SWIFT banking network, restrictions on maritime shipping and the aviation industry in addition to curbs on exports of technologies and industrial equipment. In comparison, measures against Russia were less severe. For example, financial sanctions targeted specific institutions and individuals that were closely involved in Russia’s aggression towards Ukraine and did not entail a blockade of Russia from the SWIFT network. 

# 6.2. Individual contributions of countries

In the next set of scenarios, we examine the contributions that coalition members make towards maintaining the sanctions regimes against Iran and Russia. These contributions are assessed by examining (1) the domestic welfare loss experienced from implementing sanctions; and (2) the welfare loss which is imposed on the target regime from these sanctions.18 The value of coordinating sanctions packages through coalitions is ascertained by comparing these contributions under different scenarios where sanctions are either applied unilaterally or multilaterally. 

In the unilateral case, we examine welfare losses when moving from a baseline (with no sanctions) to a series of counterfactuals where each member of the actual coalition independently imposes sanctions on Iran or Russia. These scenarios correspond to a complete break-down of coalitions as each sanctioning state acts in isolation. In the multilateral case, we examine changes in welfare for the j-th country when it is the last member to be included in the sanctions coalition. Therefore, the baseline here corresponds to a scenario where all coalition members except j sanction Iran or Russia. 

Results from these counterfactuals are reported in Table 3. For both Iran and Russia, we observe that sanctions carry additional punitive force under the multilateral scenario compared to the unilateral case. Coordinating sanctions through a coalition increases welfare losses by approximately 20.2% for Iran and 12% for Russia on average. This higher welfare loss is the result of reduced opportunities for trade diversion as multiple countries enforce sanctions.19 

In two additional scenarios, we focus specifically on EU countries which formally cooperate on their sanctions strategy through the Common Foreign and Security Policy. In these scenarios, EU member states form the coalition jointly as a bloc. The exercise reveals the EU to be pivotal member of both sanctions regimes that wields significant coercive power. Compared to the observed coalition setup, the EU bloc enforces 44% and 78% of welfare losses imposed on Iran and Russia, respectively. 


Table 3. Average losses incurred and imposed


<table><tr><td colspan="3">(a) Iran sanctions</td></tr><tr><td></td><td>Loss incurred</td><td>Loss imposed</td></tr><tr><td>unilateral</td><td>-0.0197%</td><td>-0.0486%</td></tr><tr><td>multilateral</td><td>-0.0226%</td><td>-0.0584%</td></tr><tr><td colspan="3">(b) Russia sanctions</td></tr><tr><td></td><td>Loss incurred</td><td>Loss imposed</td></tr><tr><td>unilateral</td><td>-0.1254%</td><td>-0.0359%</td></tr><tr><td>multilateral</td><td>-0.1198%</td><td>-0.0402%</td></tr></table>


Note: The table above displays the average welfare loss incurred and imposed by coalition members in sanctions against Iran or Russia. In the unilateral scenario each country imposes sanctions in isolation whereas in the multilateral scenario, members jointly implement sanctions measures. 


The impact of coalition formation is further evidenced by its effect on the domestic costs of sanctions. Here, the outcome is contingent on the stringency of measures enacted and sectors targeted. In the case of Russia, where (partial) sanctions raised trade costs for agri-food and manufacturing industries, we find that the average domestic welfare loss reduces by 4.5% in the multilateral relative to the unilateral scenario. 

The intuition underlying this mechanism can be understood with an illustrative example where sanctions are imposed on Russian manufacturing by a coalition member such as Germany. When Germany unilaterally imposes such sanctions, exports from Russia to Germany drop sharply although Russia is still able to export its products elsewhere. If, on the other hand, German sanctions are implemented in a setting of multilateral action against Russia, the set of alternative markets remaining for Russian exports further reduces. In order to continue selling its products, wages and prices in Russia decline considerably. This decline mitigates the drop in Germany’s imports from Russia as well as Germany’s domestic welfare losses. To some extent, Germany and its coalition partners will still need to find alternative low-cost suppliers for manufacturing goods that were previously sourced from Russia. This can drive up prices and benefit domestic producers as well, such that the welfare loss from sanctions is further reduced. 

The outcome is different under the Iran case where domestically incurred losses are observed to be higher on average when sanctions are imposed multi- rather than unilaterally. This stems from the fact that we observe not just a trade cost increase (as in Russia), but a complete embargo that targets the fossil fuel sector. 

Once again, countries compete for alternative suppliers to substitute their fossil fuel imports under the multilateral scenario. The resulting increase in fossil fuel prices harms domestic consumers and producers. However, in contrast to the Russian case, the absence of any domestic suppliers of fossil fuels prevents coalition members from experiencing any gains from the price hike. Additionally, the embargo blocks any mitigating effect in the imports of coalition members that may arise from Iran lowering its oil price in response to the decline in export opportunities. In combination, the embargo character of the 2012 Iran sanctions and its focus on fossil fuel sectors make multilateral implementation more costly for most countries. A notable exception is Norway. In reaction to the embargo on fossil fuels from Iran, we observe coalition members sourcing from Norway instead, which benefits from the oil price increase and experiences an overall positive welfare change in the multilateral sanctions scenario. 

To summarize, we find that coalitions (1) magnify the welfare loss imposed on sanctioned states and; (2) contingent on the stringency of sanctions and sectors targeted, can also reduce the domestic welfare loss faced by its members. As such, countries are likely to be more ‘effective’ sanction senders under a coalition framework relative to unilateral action. 

We next examine how contributions to sanctions regimes vary across members within the coalition. To analyse this, we plot welfare changes experienced by sanctioning states domestically and that imposed on the sanctioned state for both the unilateral and multilateral implementation scenarios (Figures 1 and 2). 

The simulations produce several interesting outcomes. For both Iran and Russia sanctions, we observe substantial skewness across countries in terms of the domestic welfare loss experienced under the sanctions regimes. The top five contributors in this regard to the Iran sanctions are Greece, South Korea, Turkey, Spain and Japan. In the case of Russia, the leading contributors are Lithuania, Estonia, Ukraine, Latvia and Georgia – nations that are in Russia’s neighbourhood, share historic ties with Russia and home to Russian-speaking populations. For these coalition members, sanctions are significantly more costly. 

Not only is the burden of sanctions therefore unevenly distributed, the capacity to impose welfare loss on the sanctioned state also differs across coalition members. For Iran, the coalition members which exert the highest coercive force (welfare loss on Iran) are South Korea, Japan, Turkey, Italy and Greece. Looking at Russia, the punitive impact is highest for coalition members such as Germany, USA, Netherlands, Poland and Italy. For the majority of countries, welfare loss imposed is higher under the multilateral than the unilateral case. 

Our bootstrapped confidence intervals reveal another policy-relevant difference between these two sanctions regimes. The uncertainty of economic costs (incurred and imposed) for most countries is observed to be lower under Iran sanctions relative to Russia sanctions. This reduced uncertainty in the case of Iran arises from the oil embargo that unequivocally escalated trade costs and blocked bilateral flows in that sector. 

Finally, we note that the United States is the most effective in imposing the Iran and Russia sanctions in terms of percentage welfare cost borne at home vis-�a-vis welfare loss imposed on the target. Closely following the United States are other large economies such as Japan and Germany. In comparison, smaller nations such as Estonia and Latvia incur relatively high costs of sanctions that translate only into marginal welfare loss for 


(a) Welfare loss incurred


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/79a4f0242765a26fcffefb69c6349f9a826b68c16ddbf3d705f74143db8e8672.jpg)



(b） Welfare loss imposed


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/6884e1c170b8e103637f1d70c27be9f09550f923bdc885a72f9ca7daaeea2e85.jpg)



Figure 1. Individual contributions – Iran sanctions


Note: Figures above display each country in the actual sanctions coalition against Iran and the welfare change it experiences domestically and that which it imposes on the sanctioned state. The 95% confidence intervals on welfare losses are constructed from 1000 bootstrap replications of the simulations. (a) Welfare loss incurred. (b) Welfare loss imposed. 

Russia. Therefore, coalition members differ substantially not only in their contributions towards the sanctions regime but also in their effectiveness. 

# 6.3. Prospective coalition partners

The previous simulations revealed that sanctions coalitions deepen welfare losses enforced on Iran and Russia. In this scenario, we examine the extent to which this punitive effect is further magnified when third party economies cooperate with the existing coalition. To do so, we construct a series of counterfactuals. In each counterfactual, we 


(a)Welfare loss incurred


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/7a6b0b96aac6f2b54878b566b22776bf199ff68b8ceafb26f608ea6e6f4bfb4e.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/c50c6aee933d454ab3e76740e9820808c1c43fb471c1d3f0f4da6e1e137fa71f.jpg)



multilateral


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/a01b46d6150a0e1192a87d0ce5b378f0e40030a1c5959955c09b1f6962a9a4d8.jpg)



unilateral



(b） Welfare loss imposed


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/7e419234a8edad2ef4c629156b6838365c98c6d903a6ada68fe2f821ada0fe25.jpg)


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/8a346aa47d9606c49099ba8e96220d7d442deaa7a234564e2e937e1434923ee0.jpg)



multilateral


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/83ed033fbb7b2922f08d0f22b8ce3e3f3d3edb5150413e8b376ce12a0d40504d.jpg)



unilateral



Figure 2. Individual contributions – Russia sanctions


Note: Figures above display each country in the actual sanctions coalition against Russia and the welfare change it experiences domestically and which it imposes on the sanctioned state. The 95% confidence intervals on welfare losses are constructed from 1000 bootstrap replications of the simulations. (a) Welfare loss incurred. (b) Welfare loss imposed. 

expand the coalition by including one additional country that did not impose sanctions against Iran in 2012 or Russia in 2014. We presume that the increase in trade costs from these hypothetical new restrictions imposed by third parties are equivalent to those of the actual coalition and its measures. Furthermore, we presume that the inclusion of new members in the sanctions coalition does not cause other members to depart and does not dilute the stringency of measures implemented. 

Comparing the welfare loss incurred under these various counterfactuals with the welfare loss under the benchmark scenario allows us to compute the additional coercive power of each third party country to the sanctions coalition. Based on this, we create a ranked list of nations to be approached if the existing coalition decides to strengthen the sanctions regimes against Iran and Russia. The results of this exercise are depicted in Figures 3 and 4. In both maps, we plot the additional welfare loss incurred by the targeted nation from each country joining (one at a time, with replacement) the existing sanctions regime against Iran or Russia. 

For the case of Iran, the most important third-party countries which would increase the punitive impact of sanctions are China (−1.43 pp), India (−0.35 pp), UAE (−0.23 pp) and South Africa (−0.14 pp). For the case of Russia, the leading potential coalition partners to increase the welfare loss for Russia are, again, China (−0.32 pp), Vietnam (−0.15 pp), Belarus (−0.09 pp), South Korea (−0.08 pp), Turkey (−0.07 pp) and Brazil (−0.06 pp). Coordinating sanctions with these countries would reduce opportunities for sanctions-busting by targeted nations and increase the deterrent potential of sanctions regimes.20 

The case of China is particularly striking (Table 4). China’s involvement in sanctions regimes greatly deepens their deterrent force with Iran’s welfare loss increasing by nearly 75% and Russia’s by approximately 22%. We can also contrast these welfare changes with the benchmarks described in Section 6.1. An expanded coalition with China would realize close to 70% of the welfare loss on Iran and Russia that a global coalition with the same set of measures would achieve (termed as the ‘horizontal’ sanctions potential in Section 6.1). Thus the addition of China allows for closer fulfilment of the sanctions potential, relative to the actual coalition (39% and 58% for Iran and Russia, respectively). 

At the same time, China itself incurs minimal welfare loss from joining the Iran (−0.03%) or Russia (−0.024%) sanctions coalitions. Moreover, existing coalition members experience small declines in their welfare losses from the sanctions regimes when China joins the Russia coalition. In the case of Iran, China’s involvement increases welfare loss for existing coalition members due to heightened competition across sanction senders for alternative suppliers of fossil fuels. This again mirrors the effects described previously in Section 6.2. 

Overall, these counterfactuals indicate that China can substantially raise the coercive power of sanctions regimes. Interestingly, one dimension of the implicit cost of China’s non-cooperation in the status quo is borne by the rest of the world. In comparison to the status quo, this group experiences an increase in their (average) welfare gains due to trade diversion when China sanctions Iran (53%) and Russia (29%). The higher (unweighted) average welfare gain for the rest of the world in the Iran case is driven primarily by oil-producing nations (e.g. Saudi Arabia, Nigeria) which benefit from China joining the coalition. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/dd8d2b5f571b01fd747c5c2173032606169e68f3593d6e667b5ac0c9aff1dd5f.jpg)



Figure 3. New coalition partners: welfare loss imposed on Iran


Note: The map above displays the additional welfare loss incurred by Iran from each new country joining the actual sanctions coalition. Countries in grey correspond to those which already sanction Iran. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/63ec8c029e20a5f0a605940542a6794fc7ff9b22069ee5d27ec269af2203c5dc.jpg)



Figure 4. New coalition partners: welfare loss imposed on Russia


Note: The map above displays the additional welfare loss incurred by Russia from each new country joining the actual sanctions coalition. Countries which already sanction Russia are depicted in dark grey whereas countries in light grey correspond to those, whose membership in the coalition causes Russian welfare loss to marginally reduce. 


Table 4. Impact of non-cooperating China


<table><tr><td colspan="3">(a) Iran sanctions with China</td></tr><tr><td></td><td>Actual coalition</td><td>Including China</td></tr><tr><td rowspan="2">Iran</td><td>-1.9036%</td><td>-3.3292%</td></tr><tr><td>(0.1648)</td><td>(0.2791)</td></tr><tr><td rowspan="2">China</td><td>0.003%</td><td>-0.0297%</td></tr><tr><td>(0.0007)</td><td>(0.0026)</td></tr><tr><td>Actual coalition</td><td>-0.0223%</td><td>-0.0233%</td></tr><tr><td>Rest of the world</td><td>0.028%</td><td>0.0428%</td></tr><tr><td colspan="3">(b) Russia sanctions with China</td></tr><tr><td></td><td>Actual coalition</td><td>Including China</td></tr><tr><td rowspan="2">Russia</td><td>-1.4406%</td><td>-1.7623%</td></tr><tr><td>(0.2913)</td><td>(0.3337)</td></tr><tr><td rowspan="2">China</td><td>0.0054%</td><td>-0.024%</td></tr><tr><td>(0.0016)</td><td>(0.0047)</td></tr><tr><td>Actual coalition</td><td>-0.1198%</td><td>-0.1165%</td></tr><tr><td>Rest of the world</td><td>0.02%</td><td>0.0258%</td></tr></table>


Note: The tables above display welfare changes from sanctions in the benchmark scenario and a scenario in which China joins the existing sanctions coalitions. Welfare losses for the actual coalition and rest of the world are computed as unweighted averages. Clustered standard errors are based on 1000 bootstrap replications of the simulations. 


# 6.4. Optimal coalitions

In the previous scenario, we investigated the additional deterrent force gained from third parties joining the existing sanctions regime. We now examine a different but related question, namely, which countries would constitute an ‘optimal’ coalition against Iran and Russia? 

Note that optimality can be interpreted in several different ways. However, in keeping with our focus on the economic cost of sanctions, we define it as the set of countries that maximizes the coalitions’ ‘payoff’, that is, the loss imposed on the target (in US Dollars of GDP) for every Dollar of domestic GDP spent.21 Since it is computationally infeasible to simulate all potential country combinations that could form such a coalition, we concentrate instead on establishing a ‘sequentially optimal’ coalition. 

The procedure is as follows: First, we calculate the ratio of cost incurred to cost imposed for each country in the world if it were to unilaterally sanction the target economy. The country with the highest ratio, or the highest payoff for its domestic expenditure on sanctions is then selected to initiate the coalition. Having thus determined the first coalition member, we then simulate the effect of all other remaining countries (separately) joining the coalition and calculate the cost ratios associated with their participation. The country with the most favorable ratio is then added to the coalition as its second member. We continue this sequential process until total costs (in terms of welfare loss) imposed on the target country reach the level observed in the benchmark scenario of the actual sanctioning coalition (Table 2). 

Figures 5 and 6 show the results of this exercise. In each figure, we distinguish between countries that would be part of the optimal coalition (blue), those that are members of the actual but not the optimal coalition (yellow) and those that are members of both the actual and the optimal coalitions (green). 

In the case of Iran (Figure 5), the optimal coalition consists of 10 countries, 7 of which are part of the actual sanctioning coalition. Importantly, though, Russia and China are in the set of the optimal coalition countries, being responsible for a quantitatively large share of imposed welfare costs. Interestingly, of the 10 next best countries to join, 7 are part of the actual coalition (Japan, Greece, Austria, Czechia, Germany, Sweden and Belgium). Figure 6 shows the case of the Russia sanctions. Here, the optimal coalition comprises of 43 countries. Furthermore, 27 of the 37 actually sanctioning countries are also in this set of optimal coalition countries. Moreover, of the 10 next best countries, 5 countries are actual coalition countries (Slovenia, Slovakia, Poland, Lithuania and Romania). 

# 6.5. Burden sharing

The counterfactual results reported in Section 6.2 show that sanctions impose uneven domestic welfare costs on coalition members. Therefore, in the final set of scenarios, we examine the potential for burden sharing within the coalition. Calls for such burden sharing mechanisms have been raised previously by countries at the UN, given the increasing frequency and severity of sanctions.22 In mitigating the adverse impact of sanctions and their asymmetric incidence across countries, burden sharing policies can also stabilize sanctions coalitions and incentivize new countries to join. 

Here, we investigate one potential mechanism by which sanctioning states can reduce inequities in the distribution of economic costs incurred from the Iran and Russia sanctions. This mechanism takes the form of an adjustment fund, executed through transfers between coalition members such that all countries experience identical domestic welfare losses from implementing sanctions. We implement these transfers as described in Section 3. Incidentally, these hypothetical transfers also represent a measure of the relative sanctions costs the coalition countries face. 

Figures 7 and 8 report the absolute and relative magnitude of these transfers by member country, for the current coalition setup. Here, negative values correspond to net transfers made while positive values indicate net transfers received. Looking at absolute values, we find that the United States would need to allocate almost USD 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/fe57ce8c9bfa2e99adff8ca86b55bc0c1f369671754de7da12667bed364acc02.jpg)



Figure 5. Optimal and actual coalition members: Iran sanctions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/acc44740e3494bdf0005d16b8dcb49e1f97d3d52a9229bbd0843abdc1b6707ad.jpg)



Figure 6. Optimal and actual coalition members: Russia sanctions.


1.7 billion (SE ¼ 85 million) for compensating coalition members for the Iran sanctions and USD 2.7 billion (SE ¼ 850 million) for the Russian sanctions regimes. Other top transfer-sending states are the United Kingdom (USD 366 million, SE ¼ 13 million), Canada (USD 222 million, SE ¼ 10 million) and Australia (USD 174 million, SE ¼ 10 million) for the Iran sanctions and Japan (USD 586 million, SE ¼ 198 million), United Kingdom (USD 404 million, SE ¼ 334 million), Canada (USD 331 million, SE ¼ 123 million) for the Russia sanctions. 

We can also examine which countries would receive transfers under such an adjustment mechanism. In the case of Iran sanctions, the top recipients (in terms of shares of 


(a) Absolute transfers


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/7cf537968be83836fbce8fb1f91bf3b2e86cc83d0d45c7e83544db789e73d0b3.jpg)



(b） Relative transfers


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/93bae21440eb15a5ba8bdc6509d824c7eae6e7abb6d4f1bde5a04daad7dc25bb.jpg)



Figure 7. Burden sharing through transfers – Iran sanctions



Note: Figures above display each country in the sanctions coalition against Iran in 2012 and the transfers it sends or receives such that welfare losses are equalized across coalition members. The 95% confidence intervals are constructed from 1000 bootstrap replications of the simulations. (a) Absolute transfers. (b) Relative transfers.


GDP) are Greece (0.15%, $S E = 0 . 0 0 0 7 )$ , South Korea (0.09%, SE ¼ 0:006) and Turkey (0.02%, SE ¼ 0:005). For the Russia sanctions, top transfers are directed towards the Baltic countries Lithuania (0.65%, SE ¼ 0:13), Estonia (0.38%, SE ¼ 0:09) and Latvia (0.31%, SE ¼ 0:14). 

Cumulatively, we find that the existing coalition setup would require an adjustment fund totalling USD 2.9 billion (SE ¼ 117 million) to equalize domestic welfare losses from Iran sanctions and USD 4.9 billion (SE ¼ 1:8 billion) from Russia sanctions. While such direct compensations of sanction-induced economic costs are likely difficult to be institutionalized, the hypothetical relative transfers can be seen as a sanctionsequivalent of NATO spending goals. An actual implementation would promote the 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/bd4fe77a2ead54f96045e267490a7cf22b63a35df4636edf2084d5ac0e8fd52c.jpg)



Figure 8. Burden sharing through transfers – Russia sanctions


Note: Figures above display each country in the sanctions coalition against Russia in 2014 and the transfers it sends or receives such that welfare losses are equalized across coalition members. The 95% confidence intervals are constructed from 1000 bootstrap replications of the simulations. (a) Iran sanctions. (b) Russia sanctions. 

resilience of sanctions coalitions over the long run by reducing disparities in economic burdens between member states. 

# 7. CONCLUSION

This paper provides novel empirical results concerning the impact of coalitions on the economic cost and deterrent power of sanctions. To do so, we examine various hypothetical geometries of sanctions coalitions in the case of Iran in 2012 and Russia in 2014 and compute the resulting changes in welfare loss experienced by sanctioning and sanctioned states. These welfare losses are calculated by running simulations with a Caliendo and Parro (2015)-type new quantitative trade model that uses sector-specific trade cost changes due to implemented sanctions measures, drawn from model-implied structural gravity estimations. 

The simulations provide strong evidence that coalitions serve two important purposes. First, they magnify the coercive force of sanctions regimes by raising the welfare losses incurred by targeted nations. Second, they can potentially reduce the welfare losses borne by individual sanctioning states. Comparisons between 2012 Iran and 2014 Russia sanctions reveal that the latter finding is contingent on the stringency of measures enacted and the nature of sectors targeted. For instance, multilateral action lowers domestic welfare losses when (partial) sanctions are imposed on sectors that are also produced domestically by coalition members (as in the Russia case). In contrast, full-blown multilateral embargoes on products where sanctioning countries lack domestic production capacities (such as Iran’s fossil fuel sector) increases domestic welfare loss for sanctioning states due to heightened competition for alternative suppliers and subsequent price hikes. Our findings therefore additionally emphasize the sectoral dimension of sanctions measures and its role in determining the economic cost of sanctions regimes. 

The simulations also reveal that these twin objectives of raising the punitive force of sanctions whilst lowering domestic welfare losses is affected by the constellation of nations that belong to the coalition. For instance, participation of large developing economies such as China, India and Vietnam in the coalition can substantially raise the welfare loss imposed on Iran and Russia. The cost of not having these members in the coalition is particularly high in the case of China. Counterfactuals show that China’s cooperation in sanctions against Iran and Russia would raise the deterrence capability of sanctions, allowing the coalition to reach nearly 70% of the horizontal sanctions potential, that is, the prospective welfare loss that a global coalition would impose on the sanctioned state. 

Our results also shed light on the structure of ‘optimal’ coalitions against Iran and Russia that would maximize payoff for these sanctions regimes, that is, maximize the loss imposed on the target (in US Dollars of GDP) for every Dollar of domestic GDP spent. Here we find that the size of the optimal coalition differs from the actual for both Iran (10 and 36 members, respectively) and Russia (43 and 37 members, respectively). However, there is substantial overlap in terms of country composition, with most economies that belong to the optimal coalition actually implementing sanctions as well. 

Finally, our results reveal considerable heterogeneity in how welfare losses from sanctions are distributed across coalition members. These welfare costs tend to be disproportionately borne by small states in proximity to the sanctioned economy, for instance by Latvia, Lithuania and Estonia in the case of Russia sanctions. Given this inequity, we compute the size of transfers that would level domestic welfare losses incurred from sanctions across all coalition members. The scale of such an adjustment fund is USD 2.9 billion for the 2012 Iran sanctions and USD 4.9 billion for the 2014 Russia sanctions with United States being the leading transfer-sending member. The hypothetical transfers also provide a measure for the relative burden borne by participating coalition countries. 

In conclusion, the findings of this paper contribute to the growing literature on the economic cost of sanctions and carry relevant insights for broader discussions on the use of geoeconomic instruments for engaging in ‘war by other means’. These issues have gained heightened importance in the aftermath of the 2022 wave of sanctions against Russia which saw unprecedented levels of coordination in sanctions measures across nations. While assessing the overall effectiveness of sanctions in achieving diverse foreign policy objectives remains challenging, their economic impact on the target can be more readily measured. We undertake this exercise for two pivotal historical instances of sanctions and demonstrate how coalitions played a fundamental role in shaping the distribution of welfare costs incurred and imposed from the implementation of punitive measures. Future research could complement this endeavour by investigating other sanction regimes, delving further into the significance of the sectoral dimension of sanctions and examining optimal combinations of sanctioning countries and targeted sectors. 

# APPENDIX A: BRIEF CONTEXT FOR THE 2012 IRAN SANCTIONS AND 2014 RUSSIA SANCTIONS

As mentioned previously, our analysis focuses on the 2012 Iran and 2014 Russia sanctions given their severity. Moreover, these episodes saw several countries adopting restrictive measures against Iran (36) and Russia (37). This joint action on sanctions packages across multiple nations, whether tacit or formalized, allows us to investigate the role of coalitions. In the case of Iran, the 2012 wave of sanctions followed concerns related to the country’s nuclear programme. Among these sanctions, the hardest hitting measures included an embargo against Iranian oil and natural gas and the isolation of Iran from the SWIFT system and global financial markets. These sanctions were eased in 2016 as part of the ‘Joint Comprehensive Plan of Action’ (JCPOA) deal. However, the withdrawal of the United States from the JCPOA in 2018 triggered a reinstatement of sanctions against Iran. 

The 2014 series of sanctions imposed against Russia in 2014 followed its annexation of Crimea. These sanctions were initially limited to targeted travel bans, visa restrictions and asset freezes on Russian and Crimean officials. However, sanctions were toughened following the shooting down of a civilian airplane in the contested Donbass region in July 2014. After this incident, new trade and financial sanctions were imposed. These measures included restrictions on exports of dual-use and sensitive technologies, restrictions on access to loans and capital markets for major Russian banks, energy companies and defence equipment manufacturers and the addition of more Russian entities on the sanctions list. Together, these policies aimed to severely restrict economic activity in Russia. In August 2014, Russia retaliated by banning imports of agri-food products from sanctioning states. These sanctions regimes have continued and escalated even further in 2022 following Russia’s invasion of Ukraine. 

# APPENDIX B: MODEL EQUILIBRIUM IN CHANGES

The equilibrium in changes is given by the following set of equations: 

Input bundle cost change: 

$$
\hat {c} _ {d} ^ {j} = \hat {w} _ {d} ^ {\gamma_ {d} ^ {j}} \prod_ {k = 1} ^ {\mathcal {J}} [ \hat {P} _ {d} ^ {k} ] ^ {\gamma_ {d} ^ {k, j}}
$$

Sectoral price index change: 

$$
\hat {P} _ {d} ^ {j} = \left(\sum_ {o = 1} ^ {\mathcal {N}} \pi_ {o d} ^ {j} [ \hat {\kappa} _ {o d} ^ {j} \hat {c} _ {o} ^ {j} ] ^ {- 1 / \theta^ {j}}\right) ^ {- \theta^ {j}}
$$

Trade share change: 

$$
\hat {\pi} _ {o d} ^ {j} = \left(\frac {\hat {c} _ {o} ^ {j} \hat {\kappa} _ {o d} ^ {j}}{\hat {P} _ {d} ^ {j}}\right) ^ {- 1 / \theta^ {j}}
$$

Counterfactual total absorption: 

$$
I _ {d} ^ {'} = \hat {w} _ {d} w _ {d} L _ {d} + \sum_ {k = 1} ^ {\mathcal {J}} \sum_ {o = 1} ^ {\mathcal {N}} (\tau_ {o d} ^ {k ^ {\prime}} - 1) \left(\frac {\hat {\pi} _ {o d} ^ {k} \pi_ {o d} ^ {k}}{\tau_ {o d} ^ {k ^ {\prime}}}\right) X _ {d} ^ {k ^ {\prime}} + \sum_ {k = 1} ^ {\mathcal {J}} \sum_ {o = 1} ^ {\mathcal {N}} (\zeta_ {d o} ^ {k ^ {\prime}} - 1) \left(\frac {\hat {\pi} _ {d o} ^ {k} \pi_ {d o} ^ {k}}{\tau_ {d o} ^ {k ^ {\prime}} \zeta_ {d o} ^ {k ^ {\prime}}}\right) X _ {o} ^ {k ^ {\prime}} - B _ {d} ^ {'} + T _ {d} ^ {'}
$$

Counterfactual sectoral expenditure: 

$$
X _ {d} ^ {j ^ {\prime}} = \sum_ {k = 1} ^ {\mathcal {J}} (1 - \gamma_ {d} ^ {k}) \gamma_ {d} ^ {j, k} \left(\sum_ {o = 1} ^ {\mathcal {N}} \frac {\hat {\pi} _ {d o} ^ {k} \pi_ {d o} ^ {k}}{\tau_ {d o} ^ {k ^ {\prime}} \zeta_ {d o} ^ {k ^ {\prime}}} X _ {o} ^ {k ^ {\prime}}\right) + \chi_ {d} ^ {j} I _ {d} ^ {\prime}
$$

Consumer price index change: 

$$
\hat {P} _ {d} = \prod_ {j = 1} ^ {\mathcal {J}} (\hat {P} _ {d} ^ {j}) ^ {\chi_ {d} ^ {j}}
$$

Common welfare change across coalition members (in scenarios with burden sharing): 

$$
\overline {{c}} = \frac {\sum_ {d \in \mathcal {S}} (\hat {w} _ {d} w _ {d} L _ {d} + R _ {d} ^ {'} + B _ {d} ^ {'})}{\sum_ {d \in \mathcal {S}} I _ {d} \hat {P} _ {d}}
$$

Counterfactual transfer (in scenarios with burden sharing): 

$$
T _ {d} ^ {\prime} = \bar {c} (I _ {d} \hat {P} _ {d}) - (\hat {w} _ {d} w _ {d} L _ {d} + R _ {d} ^ {\prime} + B _ {d} ^ {\prime}) \mathrm{if} d \in \mathcal {S}
$$

Wage change: 

$$
\hat {w} _ {o} = \frac {1}{w _ {o} L _ {o}} \sum_ {k = 1} ^ {\mathcal {J}} \left(\gamma_ {o} ^ {k} \sum_ {d} \frac {\hat {\pi} _ {o d} ^ {k} \pi_ {o d} ^ {k}}{\tau_ {o d} ^ {k ^ {\prime}} \zeta_ {o d} ^ {k ^ {\prime}}} X _ {d} ^ {k ^ {\prime}}\right)
$$

For any counterfactual policy shock, one can simply iterate over these equations until convergence.23 

# APPENDIX C: BAYESIAN BOOTSTRAP PROCEDURE

The original bootstrap was introduced by Efron (1979). Inference for parameters is based on the empirical distribution of repeated estimation of the parameters with varying samples that are obtained from the original sample by randomly drawing with replacement. Some observations i happen never to be drawn, while others are drawn a potentially large number of times, the resulting distribution of numbers of occurrences $x _ { i }$ being multinomial with n ¼ k and $\displaystyle p _ { i } = p = 1 / n \mathrm { ~ } \forall \mathrm { ~ } k$ and probability mass function: 

$$
f (x _ {1}, \ldots , x _ {n}) = \frac {\Gamma (\sum_ {i} x _ {i} + 1)}{\prod_ {i} \Gamma (x _ {i} + 1)} \left(\frac {1}{n}\right) ^ {n},
$$

where C is the gamma function. In any bootstrap iteration, an observation i has a proportion $\rho _ { i } = x _ { i } / n$ with $E [ \rho _ { i } ] = 1 / n$ . In any combination of $x _ { 1 } , \ldots , x _ { n }$ other than $x _ { 1 } = \cdots =$ $x _ { n } = 1$ (which is the original sample) with positive probability mass, some $x _ { i } = 0$ and hence some observations have a zero proportion in the respective bootstrap iteration. 

The Bayesian bootstrap proposed by Rubin (1981) similarly assigns different proportions $\omega _ { i }$ to the original observations in every bootstrap sample. It deviates from the traditional bootstrap in drawing these proportions from a continuous distribution, specifically from the Dirichlet distribution with K ¼ n and $\alpha _ { i } = \alpha \ \forall \ i$ and probability density function: 

$$
g (\omega_ {1}, \dots , \omega_ {n}) = \frac {\Gamma (n \alpha)}{(\Gamma (\alpha)) ^ {n}} \prod_ {i} \omega_ {i} ^ {\alpha - 1}.
$$

The non-integer ‘number of times’ any observation is drawn for a bootstrap sample is given by $\omega _ { i } n .$ Each observation’s proportion is the same in expectation as in the traditional bootstrap, that is, $E [ \omega _ { i } ] = E [ \rho _ { i } ] = 1 / n _ { ; }$ , but the continuous reformulation implies that no observations receive a zero weight in any bootstrap iteration. This in turn implies that – different than in the traditional bootstrap – the collinearity structure of the original sample is retained in every iteration, that is, any parameter that is identified in the original sample is also identified in every bootstrap iteration. 

We follow the common choice for the Dirichlet concentration parameters of $\alpha = 1$ , in which case the drawing of the Dirichlet weights can be implemented in a very straightforward way by taking n−1 draws from the uniform ð0; 1Þ distribution and using the n resulting gaps on the [0, 1] interval as the n proportions $\omega _ { i }$ . 

The Bayesian bootstrap can deal with potential correlation in the error terms across observations in the same way as the traditional bootstrap, namely by incorporating the notion of clustering from standard inference into the bootstrapping procedure. Specifically, just as one draws with replacement from the clusters rather than from the individual observations in the clustered traditional bootstrap, a common Dirichlet weight is drawn for every cluster, that is, in our case for every country pair in order to allow for serial correlation. 

# APPENDIX D: ADDITIONAL DESCRIPTIVE STATISTICS


Table A.1. Trade elasticities by sector from Fontagne � et al. (2022)


<table><tr><td>Sector</td><td>Elasticity</td><td>Description</td></tr><tr><td>BPH</td><td>0.22</td><td>Manufacture of pharmaceuticals, etc.</td></tr><tr><td>B_T</td><td>0.76</td><td>Beverages and tobacco products</td></tr><tr><td>CHM</td><td>0.22</td><td>Manufacture of chemicals and chemical products</td></tr><tr><td>CMT</td><td>0.39</td><td>Cattle meat</td></tr><tr><td>COA</td><td>0.10</td><td>Coal</td></tr><tr><td>CTL</td><td>0.40</td><td>Cattle</td></tr><tr><td>C_B</td><td>0.76</td><td>Cane and beet</td></tr><tr><td>EEQ</td><td>0.30</td><td>Manufacture of electrical equipment</td></tr><tr><td>ELE</td><td>0.50</td><td>Manufacture of computer, electronic and optical products</td></tr><tr><td>FMP</td><td>0.39</td><td>Manufacture of fabricated metal products</td></tr><tr><td>FRS</td><td>0.26</td><td>Forestry</td></tr><tr><td>FSH</td><td>0.27</td><td>Fishing</td></tr><tr><td>GAS</td><td>0.04</td><td>Gas</td></tr><tr><td>GRO</td><td>0.78</td><td>Other grains</td></tr><tr><td>I_S</td><td>0.64</td><td>Iron and steel</td></tr><tr><td>LEA</td><td>0.27</td><td>Manufacture of leather and related products</td></tr><tr><td>LUM</td><td>0.30</td><td>Lumber</td></tr><tr><td>MIL</td><td>0.35</td><td>Milk</td></tr><tr><td>MVH</td><td>0.25</td><td>Manufacture of motor vehicles, trailers and semi-trailers</td></tr><tr><td>NFM</td><td>0.21</td><td>Non-ferrous metals</td></tr><tr><td>NMM</td><td>0.30</td><td>Manufacture of other non-metallic mineral products</td></tr><tr><td>OAP</td><td>0.28</td><td>Other animal products</td></tr><tr><td>OCR</td><td>0.54</td><td>Other crops</td></tr><tr><td>OFD</td><td>0.30</td><td>Other food</td></tr><tr><td>OIL</td><td>0.04</td><td>Oil</td></tr><tr><td>OME</td><td>0.30</td><td>Manufacture of machinery and equipment n.e.c.</td></tr><tr><td>OMF</td><td>0.40</td><td>Other manufacturing</td></tr><tr><td>OMT</td><td>0.39</td><td>Other meat</td></tr><tr><td>OSD</td><td>0.76</td><td>Oil seeds</td></tr><tr><td>OTN</td><td>0.25</td><td>Manufacture of other transport equipment</td></tr><tr><td>OXT</td><td>0.24</td><td>Other mining extraction (formerly omn)</td></tr><tr><td>PCR</td><td>0.10</td><td>Processed rice</td></tr><tr><td>PDR</td><td>0.17</td><td>Rice</td></tr><tr><td>PFB</td><td>0.07</td><td>Fibres crops</td></tr><tr><td>PPP</td><td>0.22</td><td>Paper and paper products</td></tr><tr><td>P_C</td><td>0.12</td><td>Petroleum and coke</td></tr><tr><td>RMK</td><td>0.39</td><td>Raw milk</td></tr><tr><td>RPP</td><td>0.22</td><td>Manufacture of rubber and plastics products</td></tr><tr><td>SERVICES</td><td>0.17</td><td>Services</td></tr><tr><td>SGR</td><td>0.40</td><td>Sugar and molasses</td></tr><tr><td>TEX</td><td>0.19</td><td>Manufacture of textiles</td></tr><tr><td>VOL</td><td>0.26</td><td>Vegetable oils</td></tr><tr><td>V_F</td><td>0.67</td><td>Vegetable and fruit</td></tr><tr><td>WAP</td><td>0.48</td><td>Manufacture of wearing apparel</td></tr><tr><td>WHT</td><td>0.76</td><td>Wheat</td></tr><tr><td>WOL</td><td>0.39</td><td>Wool</td></tr></table>

# APPENDIX E: ADDITIONAL REGRESSION RESULTS


(a) Iran sanctions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/fde4c200d5fb85c20583ac4928e181dfec554efe8e1ab979c58a47bcfb933369.jpg)



(b) Russia sanctions


![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/c186741714f8ce66590b589ed8567504c76636425dd49a3237a1aa21bfc1713f.jpg)



Figure A.1. Sanctions impact on exports to Iran (a) and Russia (b) by sector


Note: The figures above display tariff equivalents implied by coefficients and their 95% CIs based on 1000 bootstrap replications of sectoral gravity estimations. (a) Iran sanctions. (b) Russia sanctions. 

![image](https://cdn-mineru.openxlab.org.cn/result/2026-05-14/d25a120e-b782-4e67-8a89-7bf61381bfc5/73d48bb47e4f2c9a80a2a4caf8f800fba4792a122826fe42c2cd5e7d18ee2b2f.jpg)



Figure A.2. Sanctions impact on imports from Iran (a) and Russia (b) by sector


Note: The figures above display tariff equivalents implied by coefficients and their 95% CIs based on 1000 bootstrap replications of sectoral gravity estimations. 

# APPENDIX F: ADDITIONAL SIMULATION RESULTS


Table A.2. Iran sanctions: top 10 additional coalition partners


<table><tr><td>Country</td><td>Additional welfare change (pp)</td></tr><tr><td>China</td><td>-1.43</td></tr><tr><td>India</td><td>-0.35</td></tr><tr><td>United Arab Emirates</td><td>-0.23</td></tr><tr><td>South Africa</td><td>-0.15</td></tr><tr><td>Sri Lanka</td><td>-0.05</td></tr><tr><td>Singapore</td><td>-0.05</td></tr><tr><td>Brazil</td><td>-0.03</td></tr><tr><td>Indonesia</td><td>-0.03</td></tr><tr><td>Philippines</td><td>-0.03</td></tr><tr><td>Malaysia</td><td>-0.02</td></tr></table>


Note: The table above displays the additional welfare loss that is imposed on Iran when each of the listed countries joins the existing coalition. For further description of these scenarios, see Section 6.3. 



Table A.3. Russia sanctions: top 10 additional coalition partners


<table><tr><td>Country</td><td>Additional welfare change (pp)</td></tr><tr><td>China</td><td>-0.32</td></tr><tr><td>Vietnam</td><td>-0.15</td></tr><tr><td>Belarus</td><td>-0.09</td></tr><tr><td>South Korea</td><td>-0.08</td></tr><tr><td>Turkey</td><td>-0.07</td></tr><tr><td>Brazil</td><td>-0.06</td></tr><tr><td>India</td><td>-0.03</td></tr><tr><td>Israel</td><td>-0.03</td></tr><tr><td>Switzerland</td><td>-0.02</td></tr><tr><td>Ecuador</td><td>-0.02</td></tr></table>


Note: The table above displays the additional welfare loss that is imposed on Russia when each of the listed countries joins the existing coalition. For further description of these scenarios, see Section 6.3. 


# REFERENCES



Aguiar, A., M. Chepeliev, E. L. Corong, R. McDougall and D. van der Mensbrugghe (2019). ‘The GTAP data base: version 10’, Journal of Global Economic Analysis, 4, 1–27. 





Anderson, J. E. and E. van Wincoop (2003). ‘Gravity with gravitas: a solution to the border puzzle’, American Economic Review, 93, 170–92. 





Anderson, J. E. and Y. V. Yotov (2010). ‘The changing incidence of geography’, American Economic Review, 100, 2157–86. 





Bachmann, R., D. Baqaee, C. Bayer, M. Kuhn, A. L€oschel, A. Moll, A. Peichl, K. Pittel and M. Schularick (2022). ‘What if? The economic effects for Germany of a stop of energy imports from Russia’, ECONtribute Policy Brief Nr. 028, https://www.econtribute.de/RePEc/ajk/ ajkpbs/ECONtribute_PB_028_2022.pdf 





Baier, S. L. and J. H. Bergstrand (2007). ‘Do free trade agreements actually increase members’ international trade’, Journal of International Economics, 71, 72–95. 





Becko, J. S. (2022). ‘A theory of economic sanctions as terms-of-trade manipulation’, Working Paper, https://sturm-econ.s3.amazonaws.com/Sturm+sanctions+2022.pdf 





Blackwill, R. and J. Harris (2016). War by Other Means: Geoeconomics and Statecraft, Harvard University Press, Cambridge, MA. 





Brunnermeier, M., R. Doshi and H. James (2018). ‘Beijing’s Bismarckian ghosts: how great powers compete economically’, The Washington Quarterly, 41, 161–76. 





Caliendo, L. and F. Parro (2015). ‘Estimates of the trade and welfare effects of NAFTA’, Review of Economic Studies, 82, 1–44. 





Crozet, M. and J. Hinz (2020). ‘Friendly fire: the trade impact of the Russia sanctions and counter-sanctions’, Economic Policy, 35, 97–146. 





Crozet, M., J. Hinz, A. Stammann and J. Wanner (2021). ‘Worth the pain? Firms’ exporting behaviour to countries under sanctions’, European Economic Review, 134, 103683. 





Dai, M., G. J. Felbermayr, A. Kirilakha, C. Syropoulos, E. Yalcin and Y. V. Yotov (2021). ‘Timing the impact of sanctions on trade’, in P. A. G. van Bergeijk (ed.), Research Handbook on Economic Sanctions, Edward Elgar Publishing, Cheltenham, Chapter 22, pp. 411–37. 





Dekle, R., J. Eaton and S. Kortum (2008). ‘Global Rebalancing with Gravity: measuring the Burden of Adjustment’, IMF Economic Review, 55, 511–40. 





Dingel, J. I. and F. Tintelnot (2021). ‘Spatial economics for granular settings’, Technical Report January, http://www.jdingel.com/research/DingelTintelnotSEGS.pdf. 





Early, B. R. (2012). ‘Alliances and trade with sanctioned states: a study of US economic sanctions, 1950–2000’, Journal of Conflict Resolution, 56, 547–72. 





Eaton, J. and S. Kortum (2002). ‘Technology, geography, and trade’, Econometrica, 70, 1741–79. 





Efron, B. (1979). ‘Bootstrap methods: another look at the jackknife’, Annals of Statistics, 7, 1–26. 





Escrib�a-Folch, A., J. Wright and J. G. Wright (2015). Foreign Pressure and the Politics of Autocratic Survival, Oxford University Press, Oxford. 





Etkes, H. and A. Zimring (2015). ‘When trade stops: lessons from the Gaza blockade 2007–2010’, Journal of International Economics, 95, 16–27. 





Farrell, H. and A. L. Newman (2019). ‘Weaponized interdependence: how global economic networks shape state coercion’, International Security, 44, 42–79. 





Felbermayr, G., A. Kirilakha, C. Syropoulos, E. Yalcin and Y. V. Yotov (2020). ‘The global sanctions data base’, European Economic Review, 129, 103561. 





Felbermayr, G., J. Groeschl and I. Heiland (2022). ‘Complex Europe: quantifying the cost of disintegration’, Journal of International Economics, 138, 103647. 





Fontagn�e, L., H. Guimbard and G. Orefice (2022). ‘Tariff-based product-level trade elasticities’, Journal of International Economics, 137, 103593. 





Gaulier, G. and S. Zignago (2010). ‘BACI: international trade database at the product-level’, The 1994-2007 Version, Working Papers 2010–23, CEPII 10, http://www.cepii.fr/PDF PUB/wp/2010/wp2010-23.pdf 





Gowa, J. and E. D. Mansfield (1993). ‘Power politics and international trade’, American Political Science Review, 87, 408–20. 





Grauvogel, J. and C. Von Soest (2014). ‘Claims to legitimacy count: why sanctions fail to instigate democratisation in authoritarian regimes’, European Journal of Political Research, 53, 635–53. 





Hausmann, R., U. Schetter and M. Yildirim (2022). ‘On the design of effective sanctions: the case of bans on exports to Russia’, CID Faculty Working Paper Series, https://dash.harvard.edu/ handle/1/37373388 





Head, K. and T. Mayer (2014). ‘Gravity equations: workhorse, toolkit, and cookbook’, in G. Gopinath, E. Helpman, and K. Rogoff (eds.), Handbook of International Economics, 4th ed., Vol. 4, North Holland, Amsterdam, the Netherlands, Chapter 3, pp. 131–95. 





Heid, B. and M. Larch (2014). ‘The potential for trade sanctions’, ETSG Conference Presentation, Munich. 





Heilmann, K. (2016). ‘Does political conflict hurt trade? Evidence from consumer boycotts’, Journal of International Economics, 99, 179–91. 





Hinz, J. and E. Monastyrenko (2022). ‘Bearing the cost of politics: consumer prices and welfare in Russia’, Journal of International Economics, 137, 103581. 





Hufbauer, G. C., J. J. Schott, and K. A. Elliott (1990). Economic Sanctions Reconsidered: History and Current Policy, Vol. 1, Peterson Institute, Washington, DC. 





Hufbauer, G., J. Schott, K. Elliott and B. Oegg (2007). Economic Sanctions Reconsidered. Peterson Institute for International Economics, Washington, DC. 





Imbs, J. M. and L. L. Pauwels (2023). ‘An empirical approximation of the effects of trade sanctions with an application to Russia’, CEPR Press Discussion Paper No. 18064, https://cepr. org/publications/dp18064 





Krugman, P. (1995). ‘Increasing returns, imperfect competition and the positive theory of international trade’, in G. M. Grossman and K. Rogoff (eds.), Handbook of International Economics, 3rd ed., Elsevier, Amsterdam, Netherlands, Chapter 24, pp. 1243–77. 





Kwon, O., C. Syropoulos and Y. V. Yotov (2022). ‘Do sanctions affect growth’, CESifo Working Paper No. 9818, https://www.cesifo.org/en/publications/2022/working-paper/ do-sanctions-affect-growth 





Langot, F., F. Malherbet, R. Norbiato and F. Tripler (2022). ‘Strength in unity: the economic cost of trade restrictions on Russia’, VoxEU Column, CEPR, London, UK. 





Larch, M. and J. Wanner (2017). ‘Carbon tariffs: an analysis of the trade, welfare, and emission effects’, Journal of International Economics, 109, 195–213. 





Mahlstein, K., C. McDaniel, S. Schropp and M. Tsigas (2022). ‘Estimating the economic effects of sanctions on Russia: an allied trade embargo’, The World Economy, 45, 3344–83. 





Mansfield, E. D. and R. Bronson (1997). ‘Alliances, preferential trading arrangements, and international trade’, American Political Science Review, 91, 94–107. 





Martin, P., T. Mayer and M. Thoenig (2008). ‘Make trade not war’, The Review of Economic Studies, 75, 865–900. 





Neuenkirch, M. and F. Neumeier. (2015). ‘The impact of UN and US economic sanctions on GDP growth’, European Journal of Political Economy, 40, 110–25. 





Ossa, R. (2016). ‘Chapter 4 - Quantitative models of commercial policy’, in K. Bagwell and R. W. Staiger (eds.), Handbook of Commercial Policy, Vol. 1, North-Holland, Amsterdam, the Netherlands, pp. 207–59. 





Pape, R. A. (1997). ‘Why economic sanctions do not work’, International Security, 22, 90–136. (1998). ‘Why economic sanctions still do not work’, International Security, 23, 66–77. 





Peksen, D., and T. M. Peterson (2016). ‘Sanctions and alternate markets: how trade and alliances affect the onset of economic coercion’, Political Research Quarterly, 69, 4–16. 





Pfaffermayr, M. (2019). ‘Gravity models, PPML estimation and the bias of the robust standard errors’, Applied Economics Letters, 26, 1467–71. 





(2021). ‘Confidence intervals for the trade cost parameters of cross-section gravity models’, Economics Letters, 201, 109787. 





Polachek, S. W. (1980). ‘Conflict and trade’, Journal of Conflict Resolution, 24, 55–78. 





Pollins, B. M. (1989). ‘Conflict, cooperation, and commerce: the effect of international political interactions on bilateral trade flows’, American Journal of Political Science, 33, 737–61. 





Rubin, D. B. (1981). ‘The bayesian bootstrap’, Annals of Statistics, 9, 130–4. 





Santos Silva, J. M. C. and S. Tenreyro (2006). ‘The log of gravity’, Review of Economics and Statistics, 88, 641–58. 





Schropp, S., and M. E. Tsigas. (2022). ‘Designing ’optimal’ sanctions on Russian imports’, Robert Schuman Centre for Advanced Studies Research Paper No. RSC 45, https://papers. ssrn.com/sol3/papers.cfm?abstract_id=4148464 





Weidner, M. and T. Zylkin (2021). ‘Bias and consistency in three-way gravity models’, Journal of International Economics, 132, 103513. 

