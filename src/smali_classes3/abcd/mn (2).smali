.class final Labcd/mn;
.super Labcd/ln;


# instance fields
.field private final VH:Labcd/Dn;


# direct methods
.method public constructor <init>(Labcd/jn;Labcd/Ks;ILabcd/gn;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/ln;-><init>(Labcd/jn;Labcd/Ks;ILabcd/gn;)V

    new-instance p1, Labcd/Dn;

    invoke-virtual {p0}, Labcd/ln;->DW()I

    move-result p2

    invoke-direct {p1, p2}, Labcd/Dn;-><init>(I)V

    iput-object p1, p0, Labcd/mn;->VH:Labcd/Dn;

    return-void
.end method


# virtual methods
.method public VH()Labcd/Dn;
    .registers 2

    invoke-virtual {p0}, Labcd/ln;->Zo()V

    iget-object v0, p0, Labcd/mn;->VH:Labcd/Dn;

    return-object v0
.end method

.method protected j6()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method protected j6(IILabcd/Hs;Labcd/pn;)Labcd/tn;
    .registers 7

    new-instance v0, Labcd/Cn;

    invoke-virtual {p0}, Labcd/ln;->FH()Labcd/Ks;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Labcd/Cn;-><init>(Labcd/Ks;ILabcd/Hs;Labcd/pn;)V

    iget-object p2, p0, Labcd/mn;->VH:Labcd/Dn;

    invoke-virtual {p2, p1, v0}, Labcd/Dn;->j6(ILabcd/un;)V

    return-object v0
.end method

.method protected j6(I)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Labcd/Mr;->tp(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected v5()Ljava/lang/String;
    .registers 2

    const-string v0, "method"

    return-object v0
.end method
