# The KITE Model Suite: A Quantitative Framework for International Trade Analysis

Julian Hinz*, Hendrik Mahlkow†, Joschka Wanner‡ 

March 2025 

# Contents

1 Introduction 1 

2 Theoretical Framework 1 

2.1 Core Eaton-Kortum (2002) Principles . . 2 

2.2 Caliendo & Parro (2015): Input-Output Linkages 2 

2.2.1 Model Setup . . . 2 

2.2.2 Households . . . . 3 

2.2.3 Production and Costs . . . . 3 

2.2.4 Trade Costs and Prices . . . 4 

2.2.5 Trade Shares and Equilibrium . . . . 4 

2.2.6 Solving for Counterfactual Equilibria in Changes . . . . 5 

2.3 Chowdhry et al. (2024) Extension: Sanctions and Burden-Sharing . . . . . 6 

2.4 Mahlkow and Wanner (2023): Carbon Emissions 7 

2.5 Trade Balance Specifications . . . 9 

2.5.1 Fixed Trade Balances . . . . 9 

2.5.2 Multiplicative Trade Imbalances . . . . 9 

2.5.3 Balanced Trade . . . . 9 

3 Data and Calibration 10 

3.1 Data Sources 10 

3.2 Calibration Procedure 10 

4 Experimental Extensions 11 

4.1 Antras & Chor (2018): Global Value Chains ` . . 11 

4.2 Felbermayr et al. (2025): NUTS2 Regional Disaggregation . . . . . 13 

5 Applications and Use Cases 14 

6 Conclusion and Future Directions 15 

# 1 Introduction

The Kiel Institute Trade Policy Evaluation (KITE) model suite represents a collection of state-of-the-art quantitative trade models developed to assess the impact of international trade policies on global economies. Rooted in the New Quantitative Trade Model (NQTM) framework pioneered by Eaton and Kortum (2002), the KITE suite implements on this approach by incorporating sectoral heterogeneity, input-output linkages, and various policy instruments. The model suite is continuously refined to address increasingly complex policy questions, from tariff liberalization to sanctions, and regional economic integration. 

The foundational model builds on the multi-sector extension developed by Caliendo and Parro (2015), which introduced intermediate input linkages into the Ricardian framework of Eaton and Kortum (2002). Recent extensions, such as the one presented in Chowdhry et al. (2024), have incorporated additional mechanisms, including international transfers for burden-sharing in sanctions scenarios, while preserving the tractability and theoretical consistency of the original framework. 

One of the key strengths of the KITE suite is its flexibility in addressing a wide range of policy questions. The models can be calibrated to study various geographical units, from detailed sub-national regions to broader country aggregates, and across different sectoral classifications, depending on the policy question at hand. Furthermore, the suite’s modular structure allows for targeted extensions to incorporate specific economic mechanisms while maintaining computational efficiency. 

The KITE suite belongs to the class of New Quantitative Trade Models (NQTM), combining Ricardian elements with product differentiation while assuming perfect competition across all markets. This model allows for a comprehensive analysis of trade adjustments, capturing the effects of tariffs on trade flows, sectoral value-added, and overall welfare. 

This white paper provides a comprehensive overview of the KITE model suite, including its theoretical foundations, data requirements, solution methods, and recent applications. We begin by outlining the core theoretical framework in Section 2, followed by a description of the data sources and calibration procedure in Section 3. We then discuss several experimental extensions in Section 4, and conclude with an overview of ongoing developments and future directions in Section 6. 

# 2 Theoretical Framework

The KITE model suite builds upon the Ricardian trade theory pioneered by Eaton and Kortum (2002), incorporating extensions to handle multiple sectors, intermediate inputs, and complex trade cost structures, primarily following the framework developed by Caliendo and Parro (2015). 

# 2.1 Core Eaton-Kortum (2002) Principles

The foundational model assumes a world economy with multiple countries trading goods within various sectors. The key elements are: 

• Ricardian Comparative Advantage: Countries differ in their technological efficiency in producing goods. This efficiency, $z _ { o } ^ { j } ( \omega ^ { j } )$ for a specific variety $\omega ^ { j }$ in sector $j$ from origin o, is stochastic. 

• Frechet Distribution:´ Productivity levels $z _ { o } ^ { j }$ are drawn independently for each good and country from a Fr´echet distribution. This distribution is characterized by a country-sector specific location parameter $\lambda _ { o } ^ { j }$ (reflecting the average productivity or absolute advantage) and a sector-specific shape parameter $\theta ^ { j }$ (governing the dispersion of productivities and thus the strength of comparative advantage). $\theta ^ { j }$ also determines the elasticity of trade flows with respect to trade costs. 

• Trade Costs: International trade is subject to costs, which can include tariffs, transport costs (often modelled as ’iceberg’ costs where a fraction melts away en route), and other non-tariff barriers. 

• Perfect Competition: Firms and consumers are price-takers. Consumers in a destination country d source each good $\omega ^ { j }$ from the origin country o that offers the lowest price, inclusive of production and trade costs. 

• Gravity Structure: The probabilistic nature of productivity draws leads to predictable aggregate trade patterns. The share of country d’s expenditure in sector $j$ sourced from country $o ~ ( \pi _ { o d } ^ { j } )$ depends on country o’s competitiveness (relative cost and technology) and the bilateral trade barriers, yielding a gravity-like relationship. 

# 2.2 Caliendo & Parro (2015): Input-Output Linkages

The core model in the KITE suite is a multi-sector version of the Eaton and Kortum (2002) model, as developed in Caliendo and Parro (2015). This framework incorporates inputoutput linkages within a Ricardian model of trade with perfect competition, allowing for a rich characterization of sectoral interdependencies and comparative advantage. 

# 2.2.1 Model Setup

The model features N countries, indexed by o and d, and J sectors, indexed by j and k. Production in each sector uses labor as the sole primary factor, which is mobile across sectors but not across countries. Markets are perfectly competitive, and international trade is balanced up to an exogenously given national trade surplus or deficit. 

# 2.2.2 Households

Representative households in each country have a total labor endowment $L _ { d }$ and maximize the following utility function: 

$$
u (C _ {d}) = \prod_ {j = 1} ^ {J} \left(C _ {d} ^ {j}\right) ^ {\alpha_ {d} ^ {j}} \quad \text { with } \quad \sum_ {j = 1} ^ {J} \alpha_ {d} ^ {j} = 1 \tag {1}
$$

where $\alpha _ { d } ^ { j }$ represents the constant consumption share on industry $j ^ { \prime } s$ goods, and $C _ { d } ^ { j }$ is a CES aggregate of the different varieties in industry $j .$ . Household income $I _ { d }$ comes from supplying labor $L _ { d }$ at wage $w _ { d }$ and receiving lump-sum transfers of tariff revenues. 

# 2.2.3 Production and Costs

Intermediate goods $\omega ^ { j } \in [ 0 , 1 ]$ in each sector j are produced using labor and composite intermediate goods from all sectors. The production function is given by: 

$$
q _ {d} ^ {j} \left(\omega^ {j}\right) = z _ {d} ^ {j} \left(\omega^ {j}\right) \left[ l _ {d} ^ {j} \left(\omega^ {j}\right) \right] ^ {\beta_ {d} ^ {j}} \left[ \prod_ {k = 1} ^ {J} m _ {d} ^ {k, j} \left(\omega^ {j}\right) ^ {\gamma_ {d} ^ {k, j}} \right] ^ {1 - \beta_ {d} ^ {j}} \tag {2}
$$

where $z _ { d } ^ { j } ( \omega ^ { j } )$ is the overall efficiency of the producer, $l _ { d } ^ { j } ( \omega ^ { j } )$ is labor input, and $m _ { d } ^ { k , j } ( \omega ^ { j } )$ （204号represents the composite intermediate goods from sector k used to produce good $\omega ^ { j }$ . Theparameter $\beta _ { d } ^ { j }$ denotes the cost share of labor, and $\gamma _ { d } ^ { k , j }$ represents the share of sector k insector j’s intermediates with $\textstyle \sum _ { k } \gamma _ { d } ^ { k , j } = 1$ .

With constant returns to scale and perfect competition, unit costs are: 

$$
c _ {d} ^ {j} = \frac {\Upsilon_ {d} ^ {j} w _ {d} ^ {\beta_ {d} ^ {j}}}{z _ {d} ^ {j} (\omega^ {j})} \left[ \prod_ {k = 1} ^ {J} (P _ {d} ^ {k}) ^ {\gamma_ {d} ^ {k, j}} \right] ^ {1 - \beta_ {d} ^ {j}} \tag {3}
$$

where $P _ { d } ^ { k }$ is the price of a composite intermediate good from sector $k ,$ and $\Upsilon _ { d } ^ { j } \ =$ $( \beta _ { d } ^ { j } ) ^ { - \beta _ { d } ^ { j } } \prod _ { k = 1 } ^ { J } ( \gamma _ { d } ^ { k , j } ( 1 - \beta _ { d } ^ { j } ) ) ^ { - \gamma _ { d } ^ { k , j } ( 1 - \beta _ { d } ^ { j } ) }$ is a constant derived from the cost shares. 

Producers of composite intermediate goods supply $Q _ { d } ^ { j }$ at minimum cost by purchasing intermediate goods $\omega ^ { j }$ from the lowest-cost supplier across countries: 

$$
Q _ {d} ^ {j} = \left[ \int r _ {d} ^ {j} (\omega^ {j}) ^ {(\sigma^ {j} - 1) / \sigma^ {j}} d \omega^ {j} \right] ^ {\sigma^ {j} / (\sigma^ {j} - 1)} \tag {4}
$$

where $\sigma ^ { j } > 1$ is the elasticity of substitution across intermediate goods within sector $j ,$ and $r _ { d } ^ { j } ( \omega ^ { j } )$ is the demand for intermediate good $\omega ^ { j }$ from the lowest-cost supplier. 

# 2.2.4 Trade Costs and Prices

The price at which country o can supply good $\omega ^ { j }$ to country d is: 

$$
p _ {o d} ^ {j} = \phi_ {o d} ^ {j} \cdot \frac {c _ {o} ^ {j}}{z _ {o} ^ {j} (\omega^ {j})} \tag {5}
$$

where $\phi _ { o d } ^ { j }$ represents bilateral sector-specific trade frictions. These can be decomposed into tariffs, iceberg trade costs, and export taxes or subsidies: 

$$
\phi_ {o d} ^ {j} = \tau_ {o d} ^ {j} \cdot \kappa_ {o d} ^ {j} \cdot \zeta_ {o d} ^ {j} (6)
$$

where $\tau _ { o d } ^ { j } \geq 1$ represents ad-valorem tariffs (tariff rate is $\tau _ { o d } ^ { j } - 1 ) , \kappa _ { o d } ^ { j } \geq 1$ represents iceberg trade costs (where $( \kappa _ { o d } ^ { j } - 1 ) / \kappa _ { o d } ^ { j }$ is the fraction of the good lost in transit), and $\zeta _ { o d } ^ { j }$ represents export taxes $( \zeta _ { o d } ^ { j } > 1 )$ or subsidies $( 0 < \zeta _ { o d } ^ { j } < 1 )$ . 

Consumers and firms in country d purchase each variety $\omega ^ { j }$ from the origin o offering the minimum price: $\begin{array} { r } { p _ { d } ^ { j } ( \omega ^ { j } ) = \operatorname* { m i n } _ { o } \{ p _ { o d } ^ { j } ( \omega ^ { j } ) \} } \end{array}$ . 

# 2.2.5 Trade Shares and Equilibrium

Given the Fr´echet distribution of productivities, the probability that country o is the lowest-cost supplier for a good in sector j in market d equals its expenditure share: 

$$
\pi_ {o d} ^ {j} = \frac {\lambda_ {o} ^ {j} (c _ {o} ^ {j} \phi_ {o d} ^ {j}) ^ {- \theta^ {j}}}{\sum_ {h = 1} ^ {N} \lambda_ {h} ^ {j} (c _ {h} ^ {j} \phi_ {h d} ^ {j}) ^ {- \theta^ {j}}} \tag {7}
$$

where $\lambda _ { o } ^ { j }$ represents the location parameter of the Fr´echet distribution (country o’s absolute advantage in sector $j )$ , and $\theta ^ { j }$ is the shape parameter (determining the within-sector strength of comparative advantage and the trade elasticity). 

The price index for the composite good in sector j in country d is: 

$$
P _ {d} ^ {j} = A ^ {j} \left[ \sum_ {o = 1} ^ {N} \lambda_ {o} ^ {j} (c _ {o} ^ {j} \phi_ {o d} ^ {j}) ^ {- \theta^ {j}} \right] ^ {- 1 / \theta^ {j}} \tag {8}
$$

where $A ^ { j } ~ = ~ A ^ { j } ~ = ~ \Gamma ( \xi ^ { j } ) ^ { 1 / ( 1 - \sigma ^ { j } ) }$ with $\Gamma ( \xi ^ { j } )$ being the Gamma function evaluated at $\xi ^ { j } = 1 + ( 1 - \sigma ^ { j } ) / \theta ^ { j }$ . 

Total expenditure on goods from sector $j$ in country d comprises final consumption demand and intermediate demand from all sectors: 

$$
X _ {d} ^ {j} = \alpha_ {d} ^ {j} I _ {d} + \sum_ {k = 1} ^ {J} (1 - \beta_ {d} ^ {k}) \gamma_ {d} ^ {j, k} Y _ {d} ^ {k} \tag {9}
$$

where $Y _ { d } ^ { k }$ represents the total value of output in sector k of country $d ,$ which equals: 

$$
Y _ {d} ^ {k} = \sum_ {o = 1} ^ {N} \frac {\pi_ {d o} ^ {k}}{\tau_ {d o} ^ {k} \zeta_ {d o} ^ {k}} X _ {o} ^ {k} \tag {10}
$$

Total income in country d is: 

$$
I _ {d} = w _ {d} L _ {d} + R _ {d} + D _ {d} \tag {11}
$$

where $w _ { d } L _ { d }$ is labor income, $R _ { d }$ is net government revenue from tariffs and export taxes/subsidies, and $D _ { d }$ is the aggregate trade balance (surplus or deficit), which is typically treated as exogenous, with $\textstyle \sum _ { d } D _ { d } = 0$ . 

# 2.2.6 Solving for Counterfactual Equilibria in Changes

Following the ”exact hat algebra” method introduced by Dekle et al. (2008), we solve for counterfactual equilibria in terms of relative changes from the initial equilibrium. For any variable x, we denote its relative change as $\hat { x } = x ^ { \prime } / x$ , where $x ^ { \prime }$ is the counterfactual value. 

Using the revenue-based notation, the system of equations in changes is: 

$$
\text { Input   costs } \quad \hat {c} _ {d} ^ {j} = \hat {w} _ {d} ^ {\beta_ {d} ^ {j}} \left(\prod_ {k = 1} ^ {J} [ \hat {P} _ {d} ^ {k} ] ^ {\gamma_ {d} ^ {k, j}}\right) ^ {1 - \beta_ {d} ^ {j}} \tag {12}
$$

$$
\text { Prices } \quad \hat {P} _ {d} ^ {j} = \left(\sum_ {o = 1} ^ {N} \pi_ {o d} ^ {j} [ \hat {\phi} _ {o d} ^ {j} \hat {c} _ {o} ^ {j} ] ^ {- \theta^ {j}}\right) ^ {- 1 / \theta^ {j}} \tag {13}
$$

$$
\text { Trade   shares } \quad \pi_ {o d} ^ {j \prime} = \pi_ {o d} ^ {j} \left(\frac {\hat {C} _ {o} ^ {j} \hat {\phi} _ {o d} ^ {j}}{\hat {P} _ {d} ^ {j}}\right) ^ {- \theta^ {j}} \tag {14}
$$

$$
O u t p u t \quad Y _ {o} ^ {j \prime} = \sum_ {d = 1} ^ {N} \frac {\pi_ {o d} ^ {j \prime}}{\tau_ {o d} ^ {j \prime} \zeta_ {o d} ^ {j \prime}} \underbrace {\left(\alpha_ {d} ^ {j} I _ {d} ^ {\prime} + \sum_ {k = 1} ^ {J} (1 - \beta_ {d} ^ {k}) \gamma_ {d} ^ {j , k} Y _ {d} ^ {k \prime}\right)} _ {\text {Expenditure} (X _ {d} ^ {j \prime})} \tag {15}
$$

$$
I n c o m e \quad I _ {d} ^ {\prime} = \hat {w} _ {d} w _ {d} L _ {d} + R _ {d} ^ {\prime} - D _ {d} ^ {\prime} \tag {16}
$$

$$
\begin{array}{l} \text { where } R _ {d} ^ {\prime} = \sum_ {j = 1} ^ {J} \sum_ {o = 1} ^ {N} (\tau_ {o d} ^ {j \prime} - 1) \left(\frac {\pi_ {o d} ^ {j \prime}}{\tau_ {o d} ^ {j \prime}}\right) \left(\alpha_ {d} ^ {j} I _ {d} ^ {\prime} + \sum_ {k = 1} ^ {J} (1 - \beta_ {d} ^ {k}) \gamma_ {d} ^ {j, k} Y _ {d} ^ {k \prime}\right) \\ + \sum_ {j = 1} ^ {J} \sum_ {o = 1} ^ {N} (\zeta_ {d o} ^ {j \prime} - 1) \left(\frac {\pi_ {d o} ^ {j \prime}}{\tau_ {d o} ^ {j \prime} \zeta_ {d o} ^ {j \prime}}\right) \left(\alpha_ {o} ^ {j} I _ {o} ^ {\prime} + \sum_ {k = 1} ^ {J} (1 - \beta_ {o} ^ {k}) \gamma_ {o} ^ {j, k} Y _ {o} ^ {k \prime}\right) \\ \end{array}
$$

$$
\text { Wage   update } \quad \hat {w} _ {o} = \frac {1}{w _ {o} L _ {o}} \sum_ {j = 1} ^ {J} \left(\beta_ {o} ^ {j} Y _ {o} ^ {j ^ {\prime}}\right) \tag {17}
$$

This system is solved iteratively until convergence (with a dampening factor included in the wage update). 

# 2.3 Chowdhry et al. (2024) Extension: Sanctions and Burden-Sharing

Chowdhry et al. (2024) extend the core model to study sanctions coalitions and burdensharing mechanisms. Their model builds on the Caliendo and Parro (2015) framework but incorporates a novel mechanism for transfers between countries in a sanctions coalition. 

The key extension is the introduction of transfers $T _ { d }$ that alter a country’s final absorption: 

$$
I _ {d} = w _ {d} L _ {d} + R _ {d} + B _ {d} + T _ {d} \tag {18}
$$

where $B _ { d }$ is an exogenous trade imbalance term. Transfers adhere to the constraint that they are balanced across the coalition S: 

$$
\sum_ {d \in \mathcal {S}} T _ {d} = 0 \tag {19}
$$

In their burden-sharing scenarios, countries in the sanctions coalition agree to face the same aggregate welfare cost: 

$$
\frac {\hat {I} _ {d}}{\hat {P} _ {d}} = \frac {\hat {I} _ {d ^ {\prime}}}{\hat {P} _ {d ^ {\prime}}} = \bar {c} \quad \forall d, d ^ {\prime} \in \mathcal {S} \tag {20}
$$

These two conditions determine the equilibrium transfers and shared welfare cost: 

$$
\bar {c} = \sum_ {d \in \mathcal {S}} (\hat {w} _ {d} w _ {d} L _ {d} + R _ {d} ^ {\prime} + B _ {d} ^ {\prime}) / \sum_ {d \in \mathcal {S}} I _ {d} \hat {P} _ {d} \tag {21}
$$

$$
T _ {d} ^ {\prime} = \bar {c} (I _ {d} \hat {P} _ {d}) - (\hat {w} _ {d} w _ {d} L _ {d} + R _ {d} ^ {\prime} + B _ {d} ^ {\prime}) \tag {22}
$$

This extension enables the analysis of burden-sharing mechanisms within sanctions coalitions, which is increasingly relevant for understanding the economic and political economy of international sanctions. 

# 2.4 Mahlkow and Wanner (2023): Carbon Emissions

Mahlkow and Wanner (2023) develop a model extension of Caliendo and Parro (2015) that allows the investigation of the effects of trade shocks on carbon emissions. Specifically, they explicitly model the production of primary fossil fuels (which additionally use a sector-specific primary natural resource factor in production) and of secondary fossil fuels (the use of which causes emissions and which are linked to their “complementary primary fuel” – e.g. petroleum to raw oil)1 with a Leontief rather than Cobb-Douglas production function component. Mahlkow and Wanner (2023) investigate the emission effects of exogenous changes in trade imbalances. We reproduce their system of equations of the equilibrium in changes, adjusting their notation to the one used in this white paper and additionally allowing for iceberg trade cost changes, but following them in abstracting from tariffs and export subsidies. Primary and secondary fossil fuel sectors are indexed by p and s supercripts, respectively, other “ordinary” sectors by an o superscript. $p ^ { s }$ refers to the primary sector p complementary to the secondary sector s. $p ^ { r ^ { p } }$ is the price of the natural resource r used in the production of primary fossil fuel p and $R _ { d } ^ { p }$ denotes the quantity of the respective fossil fuel resource in country d (assumed to be in fixed supply). All production cost shares are now denoted by γ and the respective ones for labor and the natural resources are indicated by L and r superscripts. 

Cost changes of the input bundles: 

$$
\hat {c} _ {d} ^ {o} = \left[ \hat {w} _ {d} \right] ^ {\gamma_ {d} ^ {l, o}} \prod_ {j \in \mathcal {J}} \left[ \hat {P} _ {d} ^ {j} \right] ^ {\gamma_ {d} ^ {j, o}} \quad \forall o \tag {23a}
$$

$$
\hat {c} _ {d} ^ {p} = \left[ \hat {p} _ {d} ^ {r ^ {p}} \right] ^ {\gamma_ {d} ^ {r, p}} [ \hat {w} _ {d} ] ^ {\gamma_ {d} ^ {f}} \prod_ {j \in \mathcal {J}} \left[ \hat {P} _ {d} ^ {j} \right] ^ {\gamma_ {d} ^ {j, p}} \quad \forall p \tag {23b}
$$

$$
\hat {c} _ {d} ^ {s} = \gamma_ {d} ^ {p ^ {s}, s} \hat {P} _ {d} ^ {p ^ {s}} + (1 - \gamma_ {d} ^ {p ^ {s}, s}) [ \hat {w} _ {d} ] ^ {\tilde {\gamma} _ {d} ^ {l, s}} \prod_ {j \in \mathcal {J} \backslash \{p ^ {s} \}} \left[ \hat {P} _ {d} ^ {j} \right] ^ {\tilde {\gamma} _ {d} ^ {j, s}} \forall s \notin \mathcal {P} \tag {23c}
$$

Input cost share changes: 

$$
\hat {\gamma} _ {d} ^ {p ^ {s}, s} = \frac {\hat {P} _ {d} ^ {p ^ {s}}}{\hat {c} _ {d} ^ {s}} \quad \forall s \notin \mathcal {P} \tag {24a}
$$

$$
\hat {\gamma} _ {d} ^ {l, s} = \hat {\gamma} _ {d} ^ {j, s} = (\hat {c} _ {d} ^ {s}) ^ {- 1} [ \hat {w} _ {d} ] ^ {\tilde {\gamma} _ {d} ^ {l, s}} \prod_ {j \in \mathcal {J} \backslash \{p ^ {s} \}} \left[ \hat {P} _ {d} ^ {j} \right] ^ {\tilde {\gamma} _ {d} ^ {j, s}} \quad \forall s \notin \mathcal {P} \wedge j \neq p ^ {s} \tag {24b}
$$

Price index change: 

$$
\hat {P} _ {d} ^ {j} = \left[ \sum_ {i \in \mathcal {N}} \pi_ {o d} ^ {j} \left(\hat {\kappa} _ {o d} ^ {j} \hat {c} _ {o} ^ {j}\right) ^ {- \theta^ {j}} \right] ^ {\frac {- 1}{\theta^ {j}}} \tag {25}
$$

Bilateral trade share change: 

$$
\hat {\pi} _ {o d} ^ {j} = \left[ \frac {\hat {\kappa} _ {o d} ^ {j} \hat {c} _ {o} ^ {j}}{\hat {P} _ {d} ^ {j}} \right] ^ {- \theta^ {j}} \tag {26}
$$

Counterfactual total expenditure by country and sector: 

$$
X _ {d} ^ {j ^ {\prime}} = \sum_ {k \in \mathcal {J} \backslash \{\mathcal {S} \backslash \mathcal {P} \}} \left(\gamma_ {d} ^ {j, k} \sum_ {o \in \mathcal {N}} \hat {\pi} _ {d o} ^ {k} \pi_ {d o} ^ {k} X _ {o} ^ {k ^ {\prime}}\right) + \sum_ {s \in \mathcal {S} \backslash \mathcal {P}} \left(\hat {\gamma} _ {d} ^ {j, s} \gamma_ {d} ^ {j, s} \sum_ {i \in \mathcal {N}} \hat {\pi} _ {d o} ^ {s} \pi_ {d o} ^ {s} X _ {o} ^ {s ^ {\prime}}\right) + \alpha_ {d} ^ {j} I _ {d} ^ {\prime} \tag {27}
$$

Counterfactual final absorption: 

$$
I _ {d} ^ {\prime} = \hat {w} _ {d} w _ {d} L _ {d} + \sum_ {p \in \mathcal {P}} \hat {p} _ {d} ^ {r ^ {p}} p _ {d} ^ {r ^ {p}} R _ {d} ^ {p} + D _ {d} ^ {\prime} \tag {28}
$$

Factor price changes: 

$$
\hat {p} _ {d} ^ {r ^ {p}} = \frac {\gamma_ {d} ^ {r , p} \sum_ {i \in \mathcal {N}} \hat {\pi} _ {d o} ^ {p} \pi_ {d o} ^ {p} X _ {o} ^ {p ^ {\prime}}}{p _ {d} ^ {r ^ {p}} R _ {d} ^ {p}} \tag {29a}
$$

$$
\hat {w} _ {d} = \frac {1}{w _ {d} L _ {d}} \left(\sum_ {j \in \mathcal {J} \backslash \{\mathcal {S} \backslash \mathcal {P} \}} \left(\gamma_ {d} ^ {l, j} \sum_ {o \in \mathcal {N}} X _ {o} ^ {j ^ {\prime}} \hat {\pi} _ {d o} ^ {j} \pi_ {d o} ^ {j}\right) + \sum_ {s \in \mathcal {S} \backslash \mathcal {P}} \left(\hat {\gamma} _ {d} ^ {l, s} \gamma_ {d} ^ {l, s} \sum_ {o \in \mathcal {N}} X _ {o} ^ {s ^ {\prime}} \hat {\pi} _ {d o} ^ {s} \pi_ {d o} ^ {s}\right)\right) \tag {29b}
$$

# 2.5 Trade Balance Specifications

The KITE model suite offers several options for handling trade imbalances in counterfactual analyses: 

# 2.5.1 Fixed Trade Balances

The simplest approach is to keep trade balances fixed at their initial levels: 

$$
D _ {d} ^ {\prime} = D _ {d} \tag {30}
$$

# 2.5.2 Multiplicative Trade Imbalances

Alternatively, trade imbalances can be modeled as a fixed share of either global or national income: 

Fixed global share: 

$$
D _ {d} ^ {\prime} = D _ {d} \frac {\sum_ {o = 1} ^ {N} \hat {w} _ {o} w _ {o} L _ {o}}{\sum_ {o = 1} ^ {N} w _ {o} L _ {o}} \tag {31}
$$

Fixed national share: 

$$
D _ {d} ^ {\prime} = D _ {d} \frac {\hat {w} _ {d} w _ {d} L _ {d}}{w _ {d} L _ {d}} \tag {32}
$$

Following Caliendo and Parro (2015), the trade balance can be defined as a share of global income. If we define $\begin{array} { r } { \iota _ { d } = D _ { d } / \sum _ { o = 1 } ^ { N } w _ { o } L _ { o } , } \end{array}$ , then: 

$$
D _ {d} ^ {\prime} = \iota_ {d} \sum_ {o = 1} ^ {N} \hat {w} _ {o} w _ {o} L _ {o} \tag {33}
$$

# 2.5.3 Balanced Trade

A third approach is to first run a counterfactual scenario eliminating all trade imbalances, and then use the resulting balanced-trade equilibrium as the baseline for subsequent policy experiments. This approach is often preferred when the focus is on the effects of trade policies rather than on macroeconomic adjustments. 

# 3 Data and Calibration

# 3.1 Data Sources

The KITE model suite relies on several key data sources for calibration: 

1. Input-Output Tables: The model can be calibrated using various global input-output databases: 

• GTAP Database: The Global Trade Analysis Project (GTAP) database, currently in version 11 (Aguiar et al., 2023), covers up to 160 countries or regions across 65 sectors. 

• OECD Inter-Country Input-Output (ICIO) Tables: Provides detailed information on inter-industry and final demand linkages between countries. 

• World Input-Output Database (WIOD): Offers a time series of input-output tables covering 43 countries and 56 sectors. 

2. Bilateral Trade Data: BACI from CEPII (Gaulier and Zignago, 2010), which is a harmonized version of UN COMTRADE data, provides detailed product-level bilateral trade flows. 

3. Tariff Data: MacMap from CEPII (Guimbard et al., 2012) provides comprehensive bilateral tariff information at detailed product levels, which can be aggregated to match the sectoral classification of the input-output tables. 

4. Production and Value-Added Data: World Bank indicators and national accounts data are used to update the value-added statistics, typically using GDP growth rates when more recent input-output tables are not available. 

5. Trade Elasticities: Sector-specific trade elasticities (θj) are typically obtained from the literature, with Fontagn´e et al. (2018) being a key source. 

The comprehensive integration of these datasets ensures that the KITE model produces realistic and reliable simulations of trade policy scenarios. The model’s calibration procedure guarantees consistency between the various data sources and the theoretical structure of the model. 

# 3.2 Calibration Procedure

The calibration of the KITE model involves several steps: 

1. Harmonization of Sectoral Classifications: Input-output tables, trade data, and tariff data are harmonized to a common sectoral classification. 

2. Computation of Trade Shares: Bilateral trade shares $( \pi _ { o d } ^ { j } )$ are calculated from the trade data, adjusted for tariffs. 

3. Derivation of Input-Output Coefficients: Cost shares for labor $( \beta _ { d } ^ { j } )$ and intermediate inputs $( \gamma _ { d } ^ { k , j } )$ are computed from the input-output tables. 

4. Calibration of Consumption Shares: Consumption shares $( \alpha _ { d } ^ { j } )$ are derived from final demand data in the input-output tables. 

The exact hat algebra approach used in counterfactual simulations has the advantage of not requiring calibration of all structural parameters. In particular, the technology parameters $\lambda _ { o } ^ { j }$ and iceberg trade costs $\kappa _ { o d } ^ { j }$ do not need to be separately identified, as they enter the model only through the initial trade shares and prices, which are observed in the data. 

# 4 Experimental Extensions

The KITE model suite continues to evolve, with several experimental extensions currently in development. These extensions aim to enhance the model’s capabilities for analyzing more complex economic phenomena and policy questions. 

# 4.1 Antras & Chor (2018): Global Value Chains`

One important extension incorporates insights from Antras and Chor ` (2018) on global value chains. This extension refines the input-output structure of the model by allowing for different trade patterns for intermediate inputs across sectors and for final consumption. The system of equations in changes for this extension is: 

$$
\text { Input   costs } \quad \hat {c} _ {d} ^ {j} = \hat {w} _ {d} ^ {\beta_ {d} ^ {j}} \left(\prod_ {k = 1} ^ {J} [ \hat {P} _ {d} ^ {k, j} ] \gamma_ {d} ^ {k, j}\right) ^ {1 - \beta_ {d} ^ {j}} \tag {34}
$$

$$
\text { Prices } \quad \hat {P} _ {d} ^ {j, k} = \left(\sum_ {o = 1} ^ {N} \pi_ {o d} ^ {j, k} [ \hat {\phi} _ {o d} ^ {j, k} \hat {c} _ {o} ^ {j} ] ^ {- \theta^ {j}}\right) ^ {- 1 / \theta^ {j}} \tag {35}
$$

$$
\hat {P} _ {d} ^ {j, C} = \left(\sum_ {o = 1} ^ {N} \pi_ {o d} ^ {j, C} [ \hat {\phi} _ {o d} ^ {j, C} \hat {c} _ {o} ^ {j} ] ^ {- \theta^ {j}}\right) ^ {- 1 / \theta^ {j}} \tag {36}
$$

$$
\text { Trade   shares } \quad \pi_ {o d} ^ {j, k \prime} = \pi_ {o d} ^ {j, k} \left(\frac {\hat {c} _ {o} ^ {j} \hat {\phi} _ {o d} ^ {j , k}}{\hat {P} _ {d} ^ {j , k}}\right) ^ {- \theta^ {j}} \tag {37}
$$

$$
\pi_ {o d} ^ {j, C \prime} = \pi_ {o d} ^ {j, C} \left(\frac {\hat {c} _ {o} ^ {j} \hat {\phi} _ {o d} ^ {j , C}}{\hat {P} _ {d} ^ {j , C}}\right) ^ {- \theta^ {j}} \tag {38}
$$

$$
Y _ {o} ^ {j \prime} = \sum_ {d = 1} ^ {N} \left(\frac {\pi_ {o d} ^ {j , C \prime}}{\tau_ {o d} ^ {j , C \prime} \zeta_ {o d} ^ {j , C \prime}} \alpha_ {d} ^ {j} I _ {d} ^ {\prime} + \sum_ {k = 1} ^ {J} \frac {\pi_ {o d} ^ {j , k \prime}}{\tau_ {o d} ^ {j , k \prime} \zeta_ {o d} ^ {j , k \prime}} (1 - \beta_ {d} ^ {k}) \gamma_ {d} ^ {j, k} Y _ {d} ^ {k \prime}\right) \tag {39}
$$

with income: 

$$
I _ {d} ^ {\prime} = \hat {w} _ {d} w _ {d} L _ {d} \tag {41}
$$

$$
+ \sum_ {j = 1} ^ {J} \sum_ {o = 1} ^ {N} \left((\tau_ {o d} ^ {j, C \prime} - 1) \left(\frac {\pi_ {o d} ^ {j , C \prime}}{\tau_ {o d} ^ {j , C \prime}}\right) \alpha_ {d} ^ {j} I _ {d} ^ {\prime} \right.
$$

$$
\left. + \sum_ {k = 1} ^ {J} (\tau_ {o d} ^ {j, k \prime} - 1) \left(\frac {\pi_ {o d} ^ {j , k \prime}}{\tau_ {o d} ^ {j , k \prime}}\right) (1 - \beta_ {d} ^ {k}) \gamma_ {d} ^ {j, k} Y _ {d} ^ {k \prime}\right)
$$

$$
+ \sum_ {j = 1} ^ {J} \sum_ {o = 1} ^ {N} \left((\zeta_ {d o} ^ {j, C \prime} - 1) \left(\frac {\pi_ {d o} ^ {j , C \prime}}{\tau_ {d o} ^ {j , C \prime} \zeta_ {d o} ^ {j , C \prime}}\right) \alpha_ {o} ^ {j} I _ {o} ^ {\prime} \right.
$$

$$
+ \sum_ {k = 1} ^ {J} (\zeta_ {d o} ^ {j, k \prime} - 1) \left(\frac {\pi_ {d o} ^ {j , k \prime}}{\tau_ {d o} ^ {j , k \prime} \zeta_ {d o} ^ {j , k \prime}}\right) (1 - \beta_ {o} ^ {k}) \gamma_ {o} ^ {j, k} Y _ {o} ^ {k \prime}\left. \right)
$$

$$
- D _ {d} ^ {\prime}
$$

and wage updates: 

$$
\hat {w} _ {o} = \frac {1}{w _ {o} L _ {o}} \sum_ {j = 1} ^ {J} \left(\beta_ {o} ^ {j} Y _ {o} ^ {j ^ {\prime}}\right) \tag {42}
$$

The key innovation in this extension is the distinction between destination-specific trade flows for intermediate inputs in different using sectors $( \pi _ { o d } ^ { j , k } )$ and for final consumption $( \pi _ { o d } ^ { j , C } )$ . This allows for a more accurate representation of global value chains, where the pattern of trade in intermediate goods often differs from that in final goods, and even within intermediate goods across different using sectors. 

# 4.2 Felbermayr et al. (2025): NUTS2 Regional Disaggregation

Another data extension involves the regional disaggregation of the model to NUTS2 regions within the European Union following (Felbermayr et al., 2025). This extension is particularly valuable for analyzing the heterogeneous regional impacts of trade policies, which can be obscured when looking only at country-level outcomes. 

The regional disaggregation builds on a workflow for constructing regionalized intercountry input-output (REICIO) tables, as illustrated in Figure 1. This approach combines high-resolution multi-regional input-output (MRIO) data for the European Union at the NUTS2 level (Huang et al., 2023) with global MRIO data from the OECD’s Inter-Country Input-Output (ICIO) database. 

# Workflow for Constructing Regionalized ICIO Tables

# 1. Estimation of Marginal Accounts:

• Use regional accounts and national IO tables to disaggregate national data to regional accounts via the Commodity Balance Approach 

• Inputs: National IO tables, Regional accounts 

# 2. Construction of Single-Region IO Tables:

• Apply the Location Quotient method to adjust national IO coefficients 

• Balance via the Commodity Balance method 

• Additional inputs: National IO coefficients, Employment data 

# 3. Estimation of Inter-Regional Trade:

• Use Cross-Entropy Approach to reconcile SRIO-based marginal trade with freight flow data 

• Additional inputs: Road freight flow data, EU trade data 

# 4. Regionalized ICIO Table Creation:

• Combine MRIO and weighted distance-derived shares to distribute OECD ICIO across EU NUTS2 regions 

• Additional inputs: ICIO (OECD), Population weighted harmonic distances 

Figure 1: Workflow for Constructing Regionalized Inter-Country Input-Output Tables 

The resulting regionalized input-output tables provide a comprehensive picture of the economic linkages between regions within the EU and with the rest of the world. This enables the KITE model to analyze questions such as: 

• How do global trade shocks affect sub-national outcomes? 

• How do regional arrangements like the EU Single Market provide shelter from adverse global shocks? 

• What is the geographic and sectoral heterogeneity in the costs of trade wars across European regions? 

Preliminary simulations using this regional extension indicate that: 

• Trade war scenarios produce pronounced regional disparities, which can be hidden by country-level averages. 

• Regions with diversified industrial structures benefit from European integration, which helps cushion the adverse effects of tariff shocks. 

• The EU Single Market not only reduces the average magnitude of negative effects from global trade disruption but also decreases the regional dispersion of these effects, highlighting its role as an effective insurance mechanism. 

These findings underscore the importance of detailed regional data for accurately assessing the impacts of global trade policies and the protective role of regional integration in mitigating adverse effects. 

# 5 Applications and Use Cases

The KITE model suite has been used in a wide range of applications, demonstrating its flexibility and relevance for policy analysis: 

1. Tariff Liberalization: The model can assess the effects of trade agreements and tariff reductions, both at the multilateral and bilateral levels. It captures not only the direct effects on trade flows but also the indirect effects through global value chains. 

2. Trade Wars and Protectionism: The model has been used to analyze the economic impacts of trade wars, including scenarios involving the United States, China, and the European Union. It can quantify both the aggregate welfare effects and the sectoral reallocation induced by these policies. 

3. Sanctions and Economic Coercion: As demonstrated in Chowdhry et al. (2024), the model can analyze the economic impacts of economic sanctions and the potential for burden-sharing within sanctions coalitions. 

4. Regional Integration: The regional extension of the model enables analysis of the effects of regional integration arrangements, such as the EU Single Market, on regional economic outcomes and inequality. 

5. Global Value Chain Disruptions: The model can assess the resilience of global value chains to various shocks, including trade policy changes, natural disasters, and pandemics. 

6. Technological Change: By adjusting the productivity parameters, the model can analyze the effects of technological change on trade patterns, sectoral composition, and welfare. 

The model’s ability to capture both direct and indirect effects through input-output linkages, combined with its firm theoretical foundations and flexibility, make it a valuable tool for a wide range of policy analyses. 

# 6 Conclusion and Future Directions

The KITE model suite represents a powerful and flexible tool for quantitative trade policy analysis. Building on the foundation of Eaton and Kortum (2002) and Caliendo and Parro (2015), the suite has been continuously refined and extended to address increasingly complex policy questions. 

Key strengths of the KITE model suite include: 

1. Theoretical Consistency: The model is firmly grounded in modern trade theory, combining Ricardian comparative advantage with input-output linkages. 

2. Empirical Tractability: The use of the exact hat algebra approach allows for counterfactual analyses without requiring calibration of all structural parameters. 

3. Flexibility: The model can be adapted to various levels of sectoral and geographical aggregation, depending on the policy question at hand. 

4. Comprehensiveness: The model captures both the direct effects of trade policies on trade flows and the indirect effects through global value chains. 

Ongoing developments in the KITE model suite include: 

1. Further Regional Disaggregation: Extending the regional disaggregation beyond the European Union to other major economies. 

2. Labor Market Frictions: Incorporating labor market frictions and unemployment to better capture the adjustment costs of trade shocks. 

3. Firm Heterogeneity: Introducing firm heterogeneity to analyze the distributional effects of trade policies across firms of different sizes and productivity levels. 

4. Environmental Extensions: Integrating environmental accounts to assess the environmental impacts of trade policies. 

5. Dynamic Extensions: Developing dynamic versions of the model to analyze the temporal patterns of adjustment to trade shocks. 

These ongoing developments will further enhance the capabilities of the KITE model suite, ensuring that it remains at the forefront of quantitative trade policy analysis. 

# References



Aguiar, Angel, Badri Narayanan, and Robert McDougall, Global Trade Analysis Project (GTAP) Database Version 11, Purdue University, 2023. 





Antras, Pol and Davin Chor ` , “On the Measurement of Upstreamness and Downstreamness in Global Value Chains,” 2018. 





Caliendo, Lorenzo and Fernando Parro, “Estimates of the Trade and Welfare Effects of NAFTA,” Review of Economic Studies, 2015, 82 (1), 1–44. 





Chowdhry, Sonali, Julian Hinz, Katrin Kamin, and Joschka Wanner, “Brothers in Arms: The Value of Coalitions in Sanctions,” Kiel Working Paper, 2024. 





Dekle, Robert, Jonathan Eaton, and Samuel Kortum, “Global Rebalancing with Gravity: Measuring the Burden of Adjustment,” IMF Staff Papers, 2008, 55 (3), 511–540. 





Eaton, Jonathan and Samuel Kortum, “Technology, Geography, and Trade,” Econometrica, 2002, 70 (5), 1741–1779. 





Felbermayr, Gabriel, Julian Hinz, Sebastian Krantz, Hendrik Mahlkow, and Joschka Wanner, “On the Geographical Incidence of Trade Wars: Regional Outcomes across Europe and the Role of the Single Market,” February 2025. Working Paper. 





Fontagne, Lionel, Philippe Martin, and Gianluca Orefice ´ , “The international elasticity puzzle is worse than you think,” Journal of International Economics, 2018, 115, 115–129. 





Gaulier, Guillaume and Soledad Zignago, “BACI: International Trade Database at the Product-Level,” CEPII Working Paper, 2010. 





Guimbard, Houssein, Sebastien Jean, Mondher Mimouni, and Xavier Pichot ´ , “MAcMap-HS6 2007, an exhaustive and consistent measure of applied protection in 2007,” International Economics, 2012, 130, 99–121. 





Huang, Mengyu, Xinyi Li, Manfred Lenzen, and Arne Geschke, “European Multi Regional Input Output (MRIO) Tables, 2013,” Zenodo, 2023. 





Mahlkow, Hendrik and Joschka Wanner, “The Carbon Footprint of Global Trade Imbalances,” CESifo Working Paper, 2023, 10729. 

