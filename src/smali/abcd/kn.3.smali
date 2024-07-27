.class final Labcd/kn;
.super Labcd/ln;


# instance fields
.field private final VH:Labcd/An;


# direct methods
.method public constructor <init>(Labcd/jn;Labcd/Ks;ILabcd/gn;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/ln;-><init>(Labcd/jn;Labcd/Ks;ILabcd/gn;)V

    new-instance v0, Labcd/An;

    invoke-virtual {p0}, Labcd/ln;->DW()I

    move-result v1

    invoke-direct {v0, v1}, Labcd/An;-><init>(I)V

    iput-object v0, p0, Labcd/kn;->VH:Labcd/An;

    return-void
.end method


# virtual methods
.method public VH()Labcd/An;
    .registers 2

    invoke-virtual {p0}, Labcd/ln;->Zo()V

    iget-object v0, p0, Labcd/kn;->VH:Labcd/An;

    return-object v0
.end method

.method protected j6()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected j6(IILabcd/Hs;Labcd/pn;)Labcd/tn;
    .registers 7

    new-instance v0, Labcd/zn;

    invoke-virtual {p0}, Labcd/ln;->FH()Labcd/Ks;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Labcd/zn;-><init>(Labcd/Ks;ILabcd/Hs;Labcd/pn;)V

    iget-object v1, p0, Labcd/kn;->VH:Labcd/An;

    invoke-virtual {v1, p1, v0}, Labcd/An;->j6(ILabcd/rn;)V

    return-object v0
.end method

.method protected j6(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Labcd/Mr;->DW(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v5()Ljava/lang/String;
    .registers 2

    const-string v0, "field"

    return-object v0
.end method
