.class public abstract Labcd/Ms;
.super Labcd/ms;

# interfaces
.implements Labcd/Rs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Labcd/ms;-><init>()V

    return-void
.end method


# virtual methods
.method public final Mr()I
    .locals 1

    invoke-interface {p0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->Mr()I

    move-result v0

    return v0
.end method

.method public final U2()Labcd/Rs;
    .locals 0

    return-object p0
.end method

.method public final a8()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j3()I
    .locals 1

    invoke-interface {p0}, Labcd/Rs;->getType()Labcd/Qs;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qs;->j3()I

    move-result v0

    return v0
.end method
