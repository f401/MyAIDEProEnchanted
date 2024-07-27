.class public final Lcom/a/b/c/c/n;
.super Lcom/a/b/c/c/at;


# instance fields
.field private final a:Lcom/a/b/e/c/z;

.field private final b:Lcom/a/b/c/b/j;

.field private c:Lcom/a/b/c/c/j;

.field private final d:Z

.field private final e:Lcom/a/b/e/d/e;

.field private f:Lcom/a/b/c/c/s;


# direct methods
.method public constructor <init>(Lcom/a/b/e/c/z;Lcom/a/b/c/b/j;ZLcom/a/b/e/d/e;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x4

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/at;-><init>(II)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "code == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "throwsList == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/a/b/c/c/n;->a:Lcom/a/b/e/c/z;

    iput-object p2, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    iput-boolean p3, p0, Lcom/a/b/c/c/n;->d:Z

    iput-object p4, p0, Lcom/a/b/c/c/n;->e:Lcom/a/b/e/d/e;

    iput-object v2, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    iput-object v2, p0, Lcom/a/b/c/c/n;->f:Lcom/a/b/c/c/s;

    return-void
.end method

.method private b(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 6

    iget-object v0, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p2}, Lcom/a/b/c/b/m;->a(Lcom/a/b/g/a;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while writing instructions for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/c/c/n;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v2}, Lcom/a/b/e/c/z;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/a/a/a/b;

    move-result-object v0

    throw v0
.end method

.method private c()I
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/c/n;->a:Lcom/a/b/e/c/z;

    iget-boolean v1, p0, Lcom/a/b/c/c/n;->d:Z

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/z;->b(Z)I

    move-result v0

    return v0
.end method

.method private d()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/m;->g()I

    move-result v0

    return v0
.end method

.method private h()I
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/m;->f()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()Lcom/a/b/c/c/ah;
    .registers 2

    sget-object v0, Lcom/a/b/c/c/ah;->o:Lcom/a/b/c/c/ah;

    return-object v0
.end method

.method protected a(Lcom/a/b/c/c/ax;I)V
    .registers 6

    invoke-virtual {p1}, Lcom/a/b/c/c/ax;->f()Lcom/a/b/c/c/t;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    new-instance v2, Lcom/a/b/c/c/o;

    invoke-direct {v2, p0, v0}, Lcom/a/b/c/c/o;-><init>(Lcom/a/b/c/c/n;Lcom/a/b/c/c/t;)V

    invoke-virtual {v1, v2}, Lcom/a/b/c/b/j;->a(Lcom/a/b/c/b/k;)V

    iget-object v1, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    invoke-virtual {v1, v0}, Lcom/a/b/c/c/j;->a(Lcom/a/b/c/c/t;)V

    iget-object v0, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    invoke-virtual {v0}, Lcom/a/b/c/c/j;->b()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v1}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/c/b/m;->e()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/a/b/c/c/n;->a(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/a/b/c/c/t;)V
    .registers 8

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->p()Lcom/a/b/c/c/aq;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v2}, Lcom/a/b/c/b/j;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v2}, Lcom/a/b/c/b/j;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Lcom/a/b/c/c/s;

    iget-object v3, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    iget-boolean v4, p0, Lcom/a/b/c/c/n;->d:Z

    iget-object v5, p0, Lcom/a/b/c/c/n;->a:Lcom/a/b/e/c/z;

    invoke-direct {v2, v3, v4, v5}, Lcom/a/b/c/c/s;-><init>(Lcom/a/b/c/b/j;ZLcom/a/b/e/c/z;)V

    iput-object v2, p0, Lcom/a/b/c/c/n;->f:Lcom/a/b/c/c/s;

    iget-object v2, p0, Lcom/a/b/c/c/n;->f:Lcom/a/b/c/c/s;

    invoke-virtual {v0, v2}, Lcom/a/b/c/c/aq;->a(Lcom/a/b/c/c/at;)V

    :cond_1
    iget-object v0, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->d()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/a/b/c/c/j;

    iget-object v1, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-direct {v0, v1}, Lcom/a/b/c/c/j;-><init>(Lcom/a/b/c/b/j;)V

    iput-object v0, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    :cond_2
    iget-object v0, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->e()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/d/c;

    invoke-virtual {v1, v0}, Lcom/a/b/c/c/be;->a(Lcom/a/b/e/d/c;)Lcom/a/b/c/c/bd;

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/a;

    invoke-virtual {p1, v0}, Lcom/a/b/c/c/t;->a(Lcom/a/b/e/c/a;)V

    goto :goto_1
.end method

.method protected a_(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V
    .registers 16

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v1, 0x0

    invoke-interface {p2}, Lcom/a/b/g/a;->a()Z

    move-result v4

    invoke-direct {p0}, Lcom/a/b/c/c/n;->h()I

    move-result v5

    invoke-direct {p0}, Lcom/a/b/c/c/n;->d()I

    move-result v6

    invoke-direct {p0}, Lcom/a/b/c/c/n;->c()I

    move-result v7

    iget-object v0, p0, Lcom/a/b/c/c/n;->b:Lcom/a/b/c/b/j;

    invoke-virtual {v0}, Lcom/a/b/c/b/j;->f()Lcom/a/b/c/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/m;->e()I

    move-result v8

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    if-nez v2, :cond_6

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/a/b/c/c/n;->f:Lcom/a/b/c/c/s;

    if-nez v3, :cond_7

    move v3, v1

    :goto_2
    if-eqz v4, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/a/b/c/c/n;->g()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/a/b/c/c/n;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v10}, Lcom/a/b/e/c/z;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v1, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  registers_size: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  ins_size:       "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  outs_size:      "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  tries_size:     "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v11, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  debug_off:      "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v12, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  insns_size:     "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v12, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/a/b/c/c/n;->e:Lcom/a/b/e/d/e;

    invoke-interface {v9}, Lcom/a/b/e/d/e;->d_()I

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "  throws "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/a/b/c/c/n;->e:Lcom/a/b/e/d/e;

    invoke-static {v10}, Lcom/a/b/e/d/b;->a(Lcom/a/b/e/d/e;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v1, v9}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v5}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v7}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v6}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v2}, Lcom/a/b/g/a;->c(I)V

    invoke-interface {p2, v3}, Lcom/a/b/g/a;->d(I)V

    invoke-interface {p2, v8}, Lcom/a/b/g/a;->d(I)V

    invoke-direct {p0, p1, p2}, Lcom/a/b/c/c/n;->b(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    iget-object v2, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    if-eqz v4, :cond_1

    const-string v0, "  padding: 0"

    invoke-interface {p2, v11, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_1
    invoke-interface {p2, v1}, Lcom/a/b/g/a;->c(I)V

    :cond_2
    iget-object v0, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    invoke-virtual {v0, p1, p2}, Lcom/a/b/c/c/j;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;)V

    :cond_3
    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/a/b/c/c/n;->f:Lcom/a/b/c/c/s;

    if-eqz v0, :cond_4

    const-string v0, "  debug info"

    invoke-interface {p2, v1, v0}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/c/c/n;->f:Lcom/a/b/c/c/s;

    const-string v1, "    "

    invoke-virtual {v0, p1, p2, v1}, Lcom/a/b/c/c/s;->a(Lcom/a/b/c/c/t;Lcom/a/b/g/a;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/a/b/c/c/n;->c:Lcom/a/b/c/c/j;

    invoke-virtual {v2}, Lcom/a/b/c/c/j;->a()I

    move-result v2

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/a/b/c/c/n;->f:Lcom/a/b/c/c/s;

    invoke-virtual {v3}, Lcom/a/b/c/c/s;->e()I

    move-result v3

    goto/16 :goto_2
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/a/b/c/c/n;->a:Lcom/a/b/e/c/z;

    invoke-virtual {v0}, Lcom/a/b/e/c/z;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CodeItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/c/c/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
