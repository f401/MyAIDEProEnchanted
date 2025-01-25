.class public final Lc/bd;
.super Lc/v;
.source "SourceFile"


# instance fields
.field public final r:I

.field public s:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    iput p1, p0, Lc/bd;->r:I

    invoke-direct {p0}, Lc/v;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lc/bd;->s:I

    return-void
.end method

.method public constructor <init>(Lc/e;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lc/bd;->r:I

    .line 2
    invoke-direct {p0, p1}, Lc/v;-><init>(Lc/e;)V

    const/4 p1, -0x1

    iput p1, p0, Lc/bd;->s:I

    return-void
.end method

.method public constructor <init>(Lc/f;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lc/bd;->r:I

    .line 3
    invoke-direct {p0, p1}, Lc/v;-><init>(Lc/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lc/bd;->s:I

    return-void
.end method

.method public constructor <init>(Lc/f;Z)V
    .registers 3

    const/4 p2, 0x0

    iput p2, p0, Lc/bd;->r:I

    .line 4
    invoke-direct {p0, p1}, Lc/v;-><init>(Lc/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lc/bd;->s:I

    return-void
.end method

.method public constructor <init>([Lc/e;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lc/bd;->r:I

    .line 5
    invoke-direct {p0, p1}, Lc/v;-><init>([Lc/e;)V

    const/4 p1, -0x1

    iput p1, p0, Lc/bd;->s:I

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 5

    iget v0, p0, Lc/bd;->r:I

    const/16 v1, 0x31

    if-eqz v0, :cond_29

    .line 2
    invoke-virtual {p1}, Lc/q;->c()Lc/q;

    move-result-object v0

    invoke-virtual {p0}, Lc/bd;->u()I

    move-result v2

    invoke-virtual {p1, v1}, Lc/q;->d(I)V

    invoke-virtual {p1, v2}, Lc/q;->i(I)V

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

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

    invoke-virtual {p0}, Lc/bd;->u()I

    move-result v2

    invoke-virtual {p1, v1}, Lc/q;->d(I)V

    invoke-virtual {p1, v2}, Lc/q;->i(I)V

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

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

    iget v0, p0, Lc/bd;->r:I

    if-eqz v0, :cond_d

    .line 2
    invoke-virtual {p0}, Lc/bd;->u()I

    move-result v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v1

    goto :goto_15

    .line 1
    :cond_d
    invoke-virtual {p0}, Lc/bd;->u()I

    move-result v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v1

    :goto_15
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public final u()I
    .registers 4

    iget v0, p0, Lc/bd;->r:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 2
    iget v0, p0, Lc/bd;->s:I

    if-gez v0, :cond_29

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

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
    iput v1, p0, Lc/bd;->s:I

    :cond_29
    iget v0, p0, Lc/bd;->s:I

    return v0

    .line 1
    :cond_2c
    iget v0, p0, Lc/bd;->s:I

    if-gez v0, :cond_50

    invoke-virtual {p0}, Lc/v;->o()Ljava/util/Enumeration;

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
    iput v1, p0, Lc/bd;->s:I

    :cond_50
    iget v0, p0, Lc/bd;->s:I

    return v0
.end method
