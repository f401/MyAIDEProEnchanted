.class public final Labcd/zn;
.super Labcd/Bn;

# interfaces
.implements Labcd/rn;


# direct methods
.method public constructor <init>(Labcd/Ks;ILabcd/Hs;Labcd/pn;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Labcd/Bn;-><init>(Labcd/Ks;ILabcd/Hs;Labcd/pn;)V

    return-void
.end method


# virtual methods
.method public Zo()Labcd/Ms;
    .registers 3

    invoke-virtual {p0}, Labcd/Bn;->getAttributes()Labcd/pn;

    move-result-object v0

    const-string v1, "ConstantValue"

    invoke-interface {v0, v1}, Labcd/pn;->j6(Ljava/lang/String;)Labcd/on;

    move-result-object v0

    check-cast v0, Labcd/km;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Labcd/km;->j6()Labcd/Ms;

    move-result-object v0

    goto :goto_0
.end method
