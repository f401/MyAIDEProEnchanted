.class public final Lc/bc;
.super Lc/t;
.source "SourceFile"


# instance fields
.field public final q:I

.field public r:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/bc;->q:I

    invoke-direct {p0}, Lc/t;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lc/bc;->r:I

    return-void
.end method

.method public synthetic constructor <init>(Lc/f;I)V
    .registers 3

    .line 2
    iput p2, p0, Lc/bc;->q:I

    invoke-direct {p0, p1}, Lc/t;-><init>(Lc/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lc/bc;->r:I

    return-void
.end method

.method public constructor <init>([Lc/e;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lc/bc;->q:I

    .line 3
    invoke-direct {p0, p1}, Lc/t;-><init>([Lc/e;)V

    const/4 p1, -0x1

    iput p1, p0, Lc/bc;->r:I

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 5

    iget v0, p0, Lc/bc;->q:I

    const/16 v1, 0x30

    if-eqz v0, :cond_29

    .line 2
    invoke-virtual {p1}, Lc/q;->c()Lc/q;

    move-result-object v0

    invoke-virtual {p0}, Lc/bc;->s()I

    move-result v2

    invoke-virtual {p1, v1}, Lc/q;->d(I)V

    invoke-virtual {p1, v2}, Lc/q;->i(I)V

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e;

    invoke-virtual {v0, v1}, Lc/q;->j(Lc/e;)V

    goto :goto_18

    :cond_28
    return-void

    .line 1
    :cond_29
    invoke-virtual {p1}, Lc/q;->b()Lc/q;

    move-result-object v0

    invoke-virtual {p0}, Lc/bc;->s()I

    move-result v2

    invoke-virtual {p1, v1}, Lc/q;->d(I)V

    invoke-virtual {p1, v2}, Lc/q;->i(I)V

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e;

    invoke-virtual {v0, v1}, Lc/q;->j(Lc/e;)V

    goto :goto_3b

    :cond_4b
    return-void
.end method

.method public final f()I
    .registers 3

    iget v0, p0, Lc/bc;->q:I

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lc/bc;->s()I

    move-result v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v1

    goto :goto_15

    .line 1
    :cond_d
    invoke-virtual {p0}, Lc/bc;->s()I

    move-result v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v1

    :goto_15
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public final s()I
    .registers 4

    iget v0, p0, Lc/bc;->q:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 2
    iget v0, p0, Lc/bc;->r:I

    if-gez v0, :cond_29

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e;

    invoke-interface {v2}, Lc/e;->l()Lc/s;

    move-result-object v2

    invoke-virtual {v2}, Lc/s;->j()Lc/s;

    move-result-object v2

    invoke-virtual {v2}, Lc/s;->f()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_d

    :cond_27
    iput v1, p0, Lc/bc;->r:I

    :cond_29
    iget v0, p0, Lc/bc;->r:I

    return v0

    .line 1
    :cond_2c
    iget v0, p0, Lc/bc;->r:I

    if-gez v0, :cond_50

    invoke-virtual {p0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/e;

    invoke-interface {v2}, Lc/e;->l()Lc/s;

    move-result-object v2

    invoke-virtual {v2}, Lc/s;->i()Lc/s;

    move-result-object v2

    invoke-virtual {v2}, Lc/s;->f()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_34

    :cond_4e
    iput v1, p0, Lc/bc;->r:I

    :cond_50
    iget v0, p0, Lc/bc;->r:I

    return v0
.end method
