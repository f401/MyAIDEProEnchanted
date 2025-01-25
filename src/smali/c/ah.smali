.class public final Lc/ah;
.super Lc/t;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc/t;-><init>()V

    return-void
.end method

.method public constructor <init>(Lc/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lc/t;-><init>(Lc/f;)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 4

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e;

    invoke-virtual {p1, v1}, Lc/q;->j(Lc/e;)V

    goto :goto_e

    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    return-void
.end method

.method public final f()I
    .registers 4

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e;

    invoke-interface {v2}, Lc/e;->l()Lc/s;

    move-result-object v2

    invoke-virtual {v2}, Lc/s;->f()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_1b
    add-int/lit8 v1, v1, 0x4

    return v1
.end method
