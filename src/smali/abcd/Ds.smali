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

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/Ds;->J8()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Labcd/Ds;->Ws()I

    move-result v1

    int-to-short v2, v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract Ws()I
.end method

.method public abstract lg()J
.end method

.method public we()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Labcd/Ds;->J8()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Labcd/Ds;->Ws()I

    move-result v1

    int-to-byte v2, v1

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
