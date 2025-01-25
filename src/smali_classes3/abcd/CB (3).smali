.class public Labcd/CB;
.super Labcd/dB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LdB<",
        "Labcd/BB;",
        ">;"
    }
.end annotation


# instance fields
.field private FH:Labcd/_J;


# direct methods
.method protected constructor <init>(Labcd/UE;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/dB;-><init>(Labcd/UE;)V

    return-void
.end method


# virtual methods
.method public call()Labcd/BB;
    .registers 5

    iget-object v0, p0, Labcd/CB;->FH:Labcd/_J;

    if-nez v0, :cond_d

    new-instance v0, Labcd/WJ;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    invoke-direct {v0, v1}, Labcd/WJ;-><init>(Labcd/UE;)V

    iput-object v0, p0, Labcd/CB;->FH:Labcd/_J;

    :cond_d
    new-instance v0, Labcd/sE;

    iget-object v1, p0, Labcd/dB;->j6:Labcd/UE;

    const-string v2, "HEAD"

    iget-object v3, p0, Labcd/CB;->FH:Labcd/_J;

    invoke-direct {v0, v1, v2, v3}, Labcd/sE;-><init>(Labcd/UE;Ljava/lang/String;Labcd/_J;)V

    invoke-virtual {v0}, Labcd/sE;->j6()Z

    new-instance v1, Labcd/BB;

    invoke-direct {v1, v0}, Labcd/BB;-><init>(Labcd/sE;)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Labcd/CB;->call()Labcd/BB;

    move-result-object v0

    return-object v0
.end method
