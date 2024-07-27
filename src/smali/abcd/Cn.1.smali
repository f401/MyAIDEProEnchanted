.class public final Labcd/Cn;
.super Labcd/Bn;

# interfaces
.implements Labcd/un;


# instance fields
.field private final v5:Labcd/Os;


# direct methods
.method public constructor <init>(Labcd/Ks;ILabcd/Hs;Labcd/pn;)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/Bn;-><init>(Labcd/Ks;ILabcd/Hs;Labcd/pn;)V

    invoke-virtual {p0}, Labcd/Bn;->Hw()Labcd/Js;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v1

    invoke-static {p2}, Labcd/Mr;->gn(I)Z

    move-result v2

    invoke-virtual {p3}, Labcd/Hs;->lg()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Labcd/Os;->j6(Ljava/lang/String;Labcd/Qs;ZZ)Labcd/Os;

    move-result-object v0

    iput-object v0, p0, Labcd/Cn;->v5:Labcd/Os;

    return-void
.end method


# virtual methods
.method public v5()Labcd/Os;
    .registers 2

    iget-object v0, p0, Labcd/Cn;->v5:Labcd/Os;

    return-object v0
.end method
