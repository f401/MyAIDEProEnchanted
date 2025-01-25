.class public abstract Labcd/Ds;
.super Labcd/Ms;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/Ms;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract J8()Z
.end method

.method public VH()Z
    .registers 4

    invoke-virtual {p0}, Labcd/Ds;->J8()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Labcd/Ds;->Ws()I

    move-result v0

    int-to-short v2, v0

    if-ne v2, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public abstract Ws()I
.end method

.method public abstract lg()J
.end method

.method public we()Z
    .registers 4

    invoke-virtual {p0}, Labcd/Ds;->J8()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Labcd/Ds;->Ws()I

    move-result v0

    int-to-byte v2, v0

    if-ne v2, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method
