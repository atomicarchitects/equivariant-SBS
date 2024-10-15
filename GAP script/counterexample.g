Print("\n\n\n######## Checking counterexample in Appendix G ########\n\n");

### creating our groups
g := FreeGroup("r","s","c");
h := g/[g.1^2,g.2^4,(g.1*g.2)^2,g.3^2,g.2*g.3*g.2^3*g.3,(g.1*g.3)^4];
Print("h is SmallGroup: ",IdGroup(h),"\nDefining G = hxh and subgroups K<S<G\n");
G := DirectProduct(h,h);
S := Subgroup(G,[G.1,G.2^2,G.3,G.4,G.5^2,G.6]);
K := Subgroup(G,[G.3*G.6]);
Print("Order(G): ",Size(G),"\nOrder(S): ",Size(S),"\nOrder(K): ",Size(K),"\n\n\n");

### checking G is the normalizer
Print("N_G(S)=G: ",Normalizer(G,S)=G);

### checking G is also generalized normalizer
CLSK := ConjugateSubgroups(S,K);
pass := true;
for g in G do
	if not ConjugateSubgroup(K,g) in CLSK then
		pass := false;
	fi;
od;
Print("\nN_G(S,K)=G: ",pass,"\n");

### checking S has complement in G, so ideal equivariant full SBS exists
H := ComplementClassesRepresentatives(G,S)[1];
trivial_intersect := (Size(Intersection(H,S)) = 1);
generates_G := ClosureGroup(H,S)=G;
Print("S has complement in G: ", trivial_intersect and generates_G,"\n");

### checking no equivariant exact partial SBS has |Stab_G(p)|>|K|
pass := true;
for g in G do
	H := ClosureGroup(K,g);
	if Intersection(H,S)=K and not (g in K) then
		pass := false;
	fi;
od;
Print("No g in G-S such that (ClosureGroup(g,K) ∩ S) = K: ",pass,"\n");
