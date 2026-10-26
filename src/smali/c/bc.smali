.class public final Lc/bc;
.super Lc/t;
.source "SourceFile"


# instance fields
.field public final q:I

.field public r:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, Lc/bc;->q:I

    invoke-direct {p0}, Lc/t;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/bc;->r:I

    return-void
.end method

.method public synthetic constructor <init>(Lc/f;I)V
    .locals 1

    .line 2
    iput p2, p0, Lc/bc;->q:I

    invoke-direct {p0, p1}, Lc/t;-><init>(Lc/f;)V

    const/4 v0, -0x1

    iput v0, p0, Lc/bc;->r:I

    return-void
.end method

.method public constructor <init>([Lc/e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc/bc;->q:I

    .line 3
    invoke-direct {p0, p1}, Lc/t;-><init>([Lc/e;)V

    const/4 v0, -0x1

    iput v0, p0, Lc/bc;->r:I

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .locals 3

    const/16 v2, 0x30

    iget v0, p0, Lc/bc;->q:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lc/q;->c()Lc/q;

    move-result-object v1

    invoke-virtual {p0}, Lc/bc;->s()I

    move-result v0

    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    invoke-virtual {p1, v0}, Lc/q;->i(I)V

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-virtual {v1, v0}, Lc/q;->j(Lc/e;)V

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lc/q;->b()Lc/q;

    move-result-object v1

    invoke-virtual {p0}, Lc/bc;->s()I

    move-result v0

    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    invoke-virtual {p1, v0}, Lc/q;->i(I)V

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-virtual {v1, v0}, Lc/q;->j(Lc/e;)V

    goto :goto_1

    .line 2
    :cond_1
    return-void
.end method

.method public final f()I
    .locals 2

    iget v0, p0, Lc/bc;->q:I

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lc/bc;->s()I

    move-result v1

    invoke-static {v1}, Lc/bu;->b(I)I

    move-result v0

    .line 1
    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lc/bc;->s()I

    move-result v1

    invoke-static {v1}, Lc/bu;->b(I)I

    move-result v0

    goto :goto_0
.end method

.method public final s()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lc/bc;->q:I

    if-eqz v1, :cond_2

    .line 2
    iget v1, p0, Lc/bc;->r:I

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v2

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

    invoke-virtual {v0}, Lc/s;->j()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iput v1, p0, Lc/bc;->r:I

    :cond_1
    iget v0, p0, Lc/bc;->r:I

    :goto_1
    return v0

    .line 1
    :cond_2
    iget v1, p0, Lc/bc;->r:I

    if-gez v1, :cond_4

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v2

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_2

    :cond_3
    iput v1, p0, Lc/bc;->r:I

    :cond_4
    iget v0, p0, Lc/bc;->r:I

    goto :goto_1
.end method
