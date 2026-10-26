.class public final Lc/aj;
.super Lc/v;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lc/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/v;-><init>(Lc/f;)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-virtual {p1, v0}, Lc/q;->j(Lc/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    return-void
.end method

.method public final f()I
    .locals 3

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v1, 0x4

    return v0
.end method
