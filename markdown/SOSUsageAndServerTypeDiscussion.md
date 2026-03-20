### SOS Usage And [ServerType](ServerType.md) Discussion

Experience with the existing SOS services shows that there is a range of ways to understand the generic SOS terminology. Discussions have taken place in several groups and it appears that all of those led to different ways of SOS implementations. Different SOS implementations cause ambiguous client/server interaction with technically proper but semantically wrong request/response pattern. Interaction is just possible, if client and server have been doing a process of adjustment, development, implementation.

Why is this? Current SOS approach is an intentional approach in order to support a broad range of use cases ranging from fixed in-situ sensors to tracking applications or even complex remote sensing systems. Thus, the flexibility is absolutely necessary to accomplish this. It is up to the certain domain to limit this flexibility to get a reasonable set of options.

This document should therefore serve as a base for discussion and should result in an agreement within the group. The group should propose a certain way of SOS usage (with respect to the [WaterML2](WaterML2.md) proposal). It should be seen as a “SOS Usage Profile for the Hydrology Domain” to which data providers and data consumer in the hydrological world can agree and comply with their software systems. This is necessary because just “SOS compliance” will not mean that the client knows how the specific server understands the main SOS terms (“procedure”, “observed property”, “feature of interest”, “offering”).

If you have comments or improvements just create new versions of the document. I suggest to discuss the document in the next TC or phone meetings (rather than doing this via email).

-- StefanFuest - 16 Sep 2010
