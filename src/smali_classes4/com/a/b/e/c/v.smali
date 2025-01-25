.class public abstract Lcom/a/b/e/c/v;
.super Lcom/a/b/e/c/ag;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/b/e/c/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract i()Z
.end method

.method public abstract j()I
.end method

.method public abstract k()J
.end method

.method public l()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/c/v;->i()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/a/b/e/c/v;->j()I

    move-result v1

    int-to-short v2, v1

    if-ne v2, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public m()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/a/b/e/c/v;->i()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/a/b/e/c/v;->j()I

    move-result v1

    int-to-byte v2, v1

    if-ne v2, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method
