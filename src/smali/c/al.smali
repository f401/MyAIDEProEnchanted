.class public final Lc/al;
.super Lc/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZILc/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lc/z;-><init>(ZILc/e;)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0xa0

    iget v1, p0, Lc/z;->a:I

    invoke-virtual {p1, v0, v1}, Lc/q;->k(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    iget-boolean v0, p0, Lc/z;->b:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/z;->h:Lc/e;

    instance-of v1, v0, Lc/o;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lc/ae;

    if-eqz v1, :cond_0

    check-cast v0, Lc/ae;

    invoke-virtual {v0}, Lc/ae;->p()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e;

    invoke-virtual {p1, v0}, Lc/q;->j(Lc/e;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lc/ae;

    check-cast v0, Lc/o;

    invoke-virtual {v0}, Lc/o;->k()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lc/ae;-><init>([B)V

    invoke-virtual {v1}, Lc/ae;->p()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lc/t;

    if-eqz v1, :cond_2

    check-cast v0, Lc/t;

    invoke-virtual {v0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lc/v;

    if-eqz v1, :cond_3

    check-cast v0, Lc/v;

    invoke-virtual {v0}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_3
    const-string v0, "not implemented: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/z;->h:Lc/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/h;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-virtual {p1, v0}, Lc/q;->j(Lc/e;)V

    :cond_5
    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    invoke-virtual {p1, v2}, Lc/q;->d(I)V

    return-void
.end method

.method public final f()I
    .locals 3

    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    iget-boolean v1, p0, Lc/z;->b:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lc/z;->a:I

    invoke-static {v1}, Lc/bu;->c(I)I

    move-result v1

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lc/z;->a:I

    invoke-static {v1}, Lc/bu;->c(I)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lc/z;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->g()Z

    move-result v0

    goto :goto_0
.end method
