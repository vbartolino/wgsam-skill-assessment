; Likelihood file - created in Rgadget
; WGTS/likelihood.ldist.cod.com - 2023-04-15
[component]
name		alk.cod.surQ1
weight		0.201369311316955
type		catchdistribution
datafile		Data/catchdistribution.alk.cod.surQ1.sumofsquares
function		sumofsquares
aggregationlevel		0
overconsumption		0
epsilon		10
areaaggfile		Aggfiles/catchdistribution.alk.cod.surQ1.area.agg
ageaggfile		Aggfiles/catchdistribution.alk.cod.surQ1.age.agg
lenaggfile		Aggfiles/catchdistribution.alk.cod.surQ1.len.agg
fleetnames		survQ1cod
stocknames		cod
;
[component]
name		ldist.cod.com
weight		2201.18864186661
type		catchdistribution
datafile		Data/catchdistribution.ldist.cod.com.sumofsquares
function		sumofsquares
aggregationlevel		1
overconsumption		0
epsilon		10
areaaggfile		Aggfiles/catchdistribution.ldist.cod.com.area.agg
ageaggfile		Aggfiles/catchdistribution.ldist.cod.com.age.agg
lenaggfile		Aggfiles/catchdistribution.ldist.cod.com.len.agg
fleetnames		comcod
stocknames		cod
;
[component]
name		ldist.cod.surQ1
weight		0.113404400090724
type		catchdistribution
datafile		Data/catchdistribution.ldist.cod.surQ1.sumofsquares
function		sumofsquares
aggregationlevel		0
overconsumption		0
epsilon		10
areaaggfile		Aggfiles/catchdistribution.ldist.cod.surQ1.area.agg
ageaggfile		Aggfiles/catchdistribution.ldist.cod.surQ1.age.agg
lenaggfile		Aggfiles/catchdistribution.ldist.cod.surQ1.len.agg
fleetnames		survQ1cod
stocknames		cod
;
[component]
name		ldist.cod.surQ3
weight		0.118948495301534
type		catchdistribution
datafile		Data/catchdistribution.ldist.cod.surQ3.sumofsquares
function		sumofsquares
aggregationlevel		0
overconsumption		0
epsilon		10
areaaggfile		Aggfiles/catchdistribution.ldist.cod.surQ3.area.agg
ageaggfile		Aggfiles/catchdistribution.ldist.cod.surQ3.age.agg
lenaggfile		Aggfiles/catchdistribution.ldist.cod.surQ3.len.agg
fleetnames		survQ3cod
stocknames		cod
;
[component]
name		siQ1.cod
weight		0.819672131147541
type		surveyindices
datafile		Data/surveyindices.siQ1.cod.lengths
sitype		lengths
biomass		1
areaaggfile		Aggfiles/surveyindices.siQ1.cod.area.agg
lenaggfile		Aggfiles/surveyindices.siQ1.cod.len.agg
stocknames		cod
fittype		loglinearfit
;
[component]
name		siQ3.cod
weight		1.07307651035519
type		surveyindices
datafile		Data/surveyindices.siQ3.cod.lengths
sitype		lengths
biomass		1
areaaggfile		Aggfiles/surveyindices.siQ3.cod.area.agg
lenaggfile		Aggfiles/surveyindices.siQ3.cod.len.agg
stocknames		cod
fittype		loglinearfit
;
[component]
name		understocking
weight		10
type		understocking
;
[component]
name		bounds
weight		10
type		penalty
datafile		Data/bounds.penaltyfile
;
