.class public final Lc/al;
.super Lc/z;
.source "SourceFile"


# direct methods
.method public constructor <init>(ZILc/e;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lc/z;-><init>(ZILc/e;)V

    return-void
.end method


# virtual methods
.method public final e(Lc/q;)V
    .registers 4

    const/16 v0, 0xa0

    iget v1, p0, Lc/z;->a:I

    invoke-virtual {p1, v0, v1}, Lc/q;->k(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    iget-boolean v0, p0, Lc/z;->b:Z

    if-nez v0, :cond_73

    iget-object v0, p0, Lc/z;->h:Lc/e;

    instance-of v1, v0, Lc/o;

    if-eqz v1, :cond_31

    instance-of v1, v0, Lc/ae;

    if-eqz v1, :cond_21

    check-cast v0, Lc/ae;

    invoke-virtual {v0}, Lc/ae;->p()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_46

    :cond_21
    new-instance v1, Lc/ae;

    check-cast v0, Lc/o;

    invoke-virtual {v0}, Lc/o;->k()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lc/ae;-><init>([B)V

    invoke-virtual {v1}, Lc/ae;->p()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_46

    :cond_31
    instance-of v1, v0, Lc/t;

    if-eqz v1, :cond_3c

    check-cast v0, Lc/t;

    invoke-virtual {v0}, Lc/t;->o()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_46

    :cond_3c
    instance-of v1, v0, Lc/v;

    if-eqz v1, :cond_56

    check-cast v0, Lc/v;

    invoke-virtual {v0}, Lc/v;->o()Ljava/util/Enumeration;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/e;

    invoke-virtual {p1, v1}, Lc/q;->j(Lc/e;)V

    goto :goto_46

    .line 1
    :cond_56
    const-string p1, "not implemented: "

    invoke-static {p1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lc/h;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-virtual {p1, v0}, Lc/q;->j(Lc/e;)V

    :cond_78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    invoke-virtual {p1, v0}, Lc/q;->d(I)V

    return-void
.end method

.method public final f()I
    .registers 4

    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->f()I

    move-result v0

    iget-boolean v1, p0, Lc/z;->b:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lc/z;->a:I

    invoke-static {v1}, Lc/bu;->c(I)I

    move-result v1

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    return v2

    :cond_1b
    iget v1, p0, Lc/z;->a:I

    invoke-static {v1}, Lc/bu;->c(I)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lc/z;->b:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lc/z;->h:Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->i()Lc/s;

    move-result-object v0

    invoke-virtual {v0}, Lc/s;->g()Z

    move-result v0

    return v0
.end method
