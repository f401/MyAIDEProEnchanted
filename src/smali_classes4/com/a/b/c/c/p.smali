.class public final Lcom/a/b/c/c/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/c/b/ac;

.field private final b:Lcom/a/b/c/b/s;

.field private final c:Lcom/a/b/g/h;

.field private final d:Lcom/a/b/c/c/t;

.field private final e:I

.field private final f:I

.field private final g:Lcom/a/b/e/d/a;

.field private final h:Z

.field private i:I

.field private j:I

.field private k:Lcom/a/b/g/a;

.field private l:Ljava/io/PrintWriter;

.field private m:Ljava/lang/String;

.field private n:Z

.field private final o:[Lcom/a/b/c/b/u;


# direct methods
.method public constructor <init>(Lcom/a/b/c/b/ac;Lcom/a/b/c/b/s;Lcom/a/b/c/c/t;IIZLcom/a/b/e/c/z;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/b/c/c/p;->i:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/b/c/c/p;->j:I

    iput-object p1, p0, Lcom/a/b/c/c/p;->a:Lcom/a/b/c/b/ac;

    iput-object p2, p0, Lcom/a/b/c/c/p;->b:Lcom/a/b/c/b/s;

    iput-object p3, p0, Lcom/a/b/c/c/p;->d:Lcom/a/b/c/c/t;

    invoke-virtual {p7}, Lcom/a/b/e/c/z;->i()Lcom/a/b/e/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/c/c/p;->g:Lcom/a/b/e/d/a;

    iput-boolean p6, p0, Lcom/a/b/c/c/p;->h:Z

    iput p4, p0, Lcom/a/b/c/c/p;->e:I

    iput p5, p0, Lcom/a/b/c/c/p;->f:I

    new-instance v0, Lcom/a/b/g/h;

    invoke-direct {v0}, Lcom/a/b/g/h;-><init>()V

    iput-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    new-array v0, p5, [Lcom/a/b/c/b/u;

    iput-object v0, p0, Lcom/a/b/c/c/p;->o:[Lcom/a/b/c/b/u;

    return-void
.end method

.method private a(I)I
    .registers 8

    iget-object v0, p0, Lcom/a/b/c/c/p;->b:Lcom/a/b/c/b/s;

    invoke-virtual {v0}, Lcom/a/b/c/b/s;->d_()I

    move-result v1

    :goto_6
    if-ge p1, v1, :cond_16

    iget-object v0, p0, Lcom/a/b/c/c/p;->b:Lcom/a/b/c/b/s;

    invoke-virtual {v0, p1}, Lcom/a/b/c/b/s;->a(I)Lcom/a/b/c/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->a()I

    move-result v0

    iget v2, p0, Lcom/a/b/c/c/p;->i:I

    if-eq v0, v2, :cond_17

    :cond_16
    return p1

    :cond_17
    iget-object v2, p0, Lcom/a/b/c/c/p;->b:Lcom/a/b/c/b/s;

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {v2, p1}, Lcom/a/b/c/b/s;->a(I)Lcom/a/b/c/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/c/b/u;->g()I

    move-result v3

    iget-object v4, p0, Lcom/a/b/c/c/p;->o:[Lcom/a/b/c/b/u;

    aget-object v4, v4, v3

    if-ne v2, v4, :cond_2b

    move p1, v0

    goto :goto_6

    :cond_2b
    iget-object v5, p0, Lcom/a/b/c/c/p;->o:[Lcom/a/b/c/b/u;

    aput-object v2, v5, v3

    invoke-virtual {v2}, Lcom/a/b/c/b/u;->c()Z

    move-result v3

    if-eqz v3, :cond_55

    if-eqz v4, :cond_50

    invoke-virtual {v2, v4}, Lcom/a/b/c/b/u;->b(Lcom/a/b/c/b/u;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v4}, Lcom/a/b/c/b/u;->c()Z

    move-result v3

    if-eqz v3, :cond_4b

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    invoke-direct {p0, v2}, Lcom/a/b/c/c/p;->b(Lcom/a/b/c/b/u;)V

    move p1, v0

    goto :goto_6

    :cond_50
    invoke-direct {p0, v2}, Lcom/a/b/c/c/p;->c(Lcom/a/b/c/b/u;)V

    move p1, v0

    goto :goto_6

    :cond_55
    invoke-virtual {v2}, Lcom/a/b/c/b/u;->b()Lcom/a/b/c/b/t;

    move-result-object v3

    sget-object v4, Lcom/a/b/c/b/t;->c:Lcom/a/b/c/b/t;

    if-eq v3, v4, :cond_60

    invoke-direct {p0, v2}, Lcom/a/b/c/c/p;->e(Lcom/a/b/c/b/u;)V

    :cond_60
    move p1, v0

    goto :goto_6
.end method

.method private static a(II)I
    .registers 4

    const/4 v0, -0x4

    if-lt p0, v0, :cond_7

    const/16 v0, 0xa

    if-le p0, v0, :cond_f

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Parameter out of range"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    add-int/lit8 v0, p0, 0x4

    mul-int/lit8 v1, p1, 0xf

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private a(ILjava/util/ArrayList;)I
    .registers 6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_4
    if-ge p1, v1, :cond_14

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/ad;

    invoke-virtual {v0}, Lcom/a/b/c/b/ad;->a()I

    move-result v0

    iget v2, p0, Lcom/a/b/c/c/p;->i:I

    if-eq v0, v2, :cond_15

    :cond_14
    return p1

    :cond_15
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/ad;

    invoke-direct {p0, v0}, Lcom/a/b/c/c/p;->a(Lcom/a/b/c/b/ad;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4
.end method

.method private a(Lcom/a/b/c/b/u;)Ljava/lang/String;
    .registers 5

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->d()Lcom/a/b/e/c/ad;

    move-result-object v1

    if-nez v1, :cond_44

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->f()Lcom/a/b/e/c/ae;

    move-result-object v1

    if-nez v1, :cond_4c

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2f
    invoke-virtual {p1}, Lcom/a/b/c/b/u;->e()Lcom/a/b/e/c/ad;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_44
    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_4c
    invoke-virtual {v1}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f
.end method

.method private a(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/a/b/c/c/p;->m:Ljava/lang/String;

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/b/c/c/p;->m:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_17
    iget-object v0, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    iget-boolean v1, p0, Lcom/a/b/c/c/p;->n:Z

    if-eqz v1, :cond_2e

    :goto_21
    invoke-interface {v0, p1, p2}, Lcom/a/b/g/a;->a(ILjava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2d
    return-void

    :cond_2e
    const/4 p1, 0x0

    goto :goto_21
.end method

.method private a(Lcom/a/b/c/b/ad;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/a/b/c/b/ad;->b()Lcom/a/b/e/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/ad;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/a/b/c/b/ad;->a()I

    move-result v2

    iget v3, p0, Lcom/a/b/c/c/p;->j:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/a/b/c/c/p;->i:I

    sub-int v4, v2, v3

    if-gez v4, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position entries must be in ascending address order"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/4 v2, -0x4

    if-lt v0, v2, :cond_26

    const/16 v2, 0xa

    if-le v0, v2, :cond_2a

    :cond_26
    invoke-direct {p0, v0}, Lcom/a/b/c/c/p;->b(I)V

    move v0, v1

    :cond_2a
    invoke-static {v0, v4}, Lcom/a/b/c/c/p;->a(II)I

    move-result v2

    and-int/lit16 v3, v2, -0x100

    if-lez v3, :cond_7e

    invoke-direct {p0, v4}, Lcom/a/b/c/c/p;->c(I)V

    invoke-static {v0, v1}, Lcom/a/b/c/c/p;->a(II)I

    move-result v2

    and-int/lit16 v3, v2, -0x100

    if-lez v3, :cond_7b

    invoke-direct {p0, v0}, Lcom/a/b/c/c/p;->b(I)V

    invoke-static {v1, v1}, Lcom/a/b/c/c/p;->a(II)I

    move-result v0

    move v2, v0

    move v3, v1

    move v4, v1

    :goto_47
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0, v2}, Lcom/a/b/g/h;->a(I)V

    iget v0, p0, Lcom/a/b/c/c/p;->j:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/a/b/c/c/p;->j:I

    iget v0, p0, Lcom/a/b/c/c/p;->i:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/a/b/c/c/p;->i:I

    iget-object v0, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_7a

    :cond_5e
    const-string v0, "%04x: line %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/a/b/c/c/p;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget v1, p0, Lcom/a/b/c/c/p;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_7a
    return-void

    :cond_7b
    move v3, v0

    move v4, v1

    goto :goto_47

    :cond_7e
    move v3, v0

    goto :goto_47
.end method

.method private a(Lcom/a/b/e/c/ad;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/a/b/c/c/p;->d:Lcom/a/b/c/c/t;

    if-nez v0, :cond_d

    :cond_6
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/g/h;->e(I)I

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    iget-object v1, p0, Lcom/a/b/c/c/p;->d:Lcom/a/b/c/c/t;

    invoke-virtual {v1}, Lcom/a/b/c/c/t;->g()Lcom/a/b/c/c/bc;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/a/b/c/c/bc;->b(Lcom/a/b/e/c/ad;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/h;->e(I)I

    goto :goto_c
.end method

.method private a(Lcom/a/b/e/c/ae;)V
    .registers 4

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/a/b/c/c/p;->d:Lcom/a/b/c/c/t;

    if-nez v0, :cond_d

    :cond_6
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/g/h;->e(I)I

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    iget-object v1, p0, Lcom/a/b/c/c/p;->d:Lcom/a/b/c/c/t;

    invoke-virtual {v1}, Lcom/a/b/c/c/t;->j()Lcom/a/b/c/c/be;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/a/b/c/c/be;->b(Lcom/a/b/e/c/ae;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/h;->e(I)I

    goto :goto_c
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v0, :cond_9a

    iget-object v0, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-nez v0, :cond_9a

    move v1, v2

    :goto_c
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/ad;

    invoke-virtual {v0}, Lcom/a/b/c/b/ad;->b()Lcom/a/b/e/b/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/ad;->a()I

    move-result v0

    iput v0, p0, Lcom/a/b/c/c/p;->j:I

    :cond_28
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    iget v6, p0, Lcom/a/b/c/c/p;->j:I

    invoke-virtual {v0, v6}, Lcom/a/b/g/h;->e(I)I

    if-eqz v1, :cond_4c

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v0

    sub-int/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "line_start: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/a/b/c/c/p;->j:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_4c
    invoke-direct {p0}, Lcom/a/b/c/c/p;->d()I

    move-result v4

    iget-object v0, p0, Lcom/a/b/c/c/p;->g:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/a/b/e/d/b;->d_()I

    move-result v7

    iget-boolean v0, p0, Lcom/a/b/c/c/p;->h:Z

    if-nez v0, :cond_144

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_62
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9d

    :goto_68
    add-int/lit8 v0, v4, 0x1

    :goto_6a
    iget-object v4, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v4}, Lcom/a/b/g/h;->g()I

    move-result v4

    iget-object v8, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v8, v7}, Lcom/a/b/g/h;->e(I)I

    if-eqz v1, :cond_90

    iget-object v8, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v8}, Lcom/a/b/g/h;->g()I

    move-result v8

    sub-int v4, v8, v4

    const-string v8, "parameters_size: %04x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_90
    move v3, v0

    move v4, v2

    :goto_92
    if-lt v4, v7, :cond_ae

    iget-object v0, p0, Lcom/a/b/c/c/p;->o:[Lcom/a/b/c/b/u;

    array-length v1, v0

    :goto_97
    if-lt v2, v1, :cond_132

    return-void

    :cond_9a
    move v1, v3

    goto/16 :goto_c

    :cond_9d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/u;

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->g()I

    move-result v9

    if-ne v4, v9, :cond_62

    iget-object v8, p0, Lcom/a/b/c/c/p;->o:[Lcom/a/b/c/b/u;

    aput-object v0, v8, v4

    goto :goto_68

    :cond_ae
    invoke-virtual {v6, v4}, Lcom/a/b/e/d/b;->b(I)Lcom/a/b/e/d/c;

    move-result-object v8

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v9

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_bc
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_107

    move-object v0, v5

    :goto_c3
    if-nez v0, :cond_c8

    invoke-direct {p0, v5}, Lcom/a/b/c/c/p;->a(Lcom/a/b/e/c/ad;)V

    :cond_c8
    if-eqz v1, :cond_fe

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->e()Lcom/a/b/e/c/ad;

    move-result-object v10

    if-eqz v10, :cond_129

    :cond_d2
    const-string v0, "<unnamed>"

    :goto_d4
    iget-object v10, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v10}, Lcom/a/b/g/h;->g()I

    move-result v10

    sub-int v9, v10, v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parameter "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "v"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_fe
    invoke-virtual {v8}, Lcom/a/b/e/d/c;->j()I

    move-result v0

    add-int/2addr v0, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_92

    :cond_107
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/u;

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->g()I

    move-result v11

    if-ne v3, v11, :cond_bc

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->e()Lcom/a/b/e/c/ad;

    move-result-object v10

    if-eqz v10, :cond_121

    invoke-direct {p0, v5}, Lcom/a/b/c/c/p;->a(Lcom/a/b/e/c/ad;)V

    :goto_11c
    iget-object v10, p0, Lcom/a/b/c/c/p;->o:[Lcom/a/b/c/b/u;

    aput-object v0, v10, v3

    goto :goto_c3

    :cond_121
    invoke-virtual {v0}, Lcom/a/b/c/b/u;->d()Lcom/a/b/e/c/ad;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/a/b/c/c/p;->a(Lcom/a/b/e/c/ad;)V

    goto :goto_11c

    :cond_129
    invoke-virtual {v0}, Lcom/a/b/c/b/u;->d()Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_d4

    :cond_132
    aget-object v3, v0, v2

    if-nez v3, :cond_13a

    :cond_136
    :goto_136
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_97

    :cond_13a
    invoke-virtual {v3}, Lcom/a/b/c/b/u;->e()Lcom/a/b/e/c/ad;

    move-result-object v4

    if-eqz v4, :cond_136

    invoke-direct {p0, v3}, Lcom/a/b/c/c/p;->d(Lcom/a/b/c/b/u;)V

    goto :goto_136

    :cond_144
    move v0, v4

    goto/16 :goto_6a
.end method

.method private b(I)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/a/b/g/h;->a(I)V

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1, p1}, Lcom/a/b/g/h;->f(I)I

    iget v1, p0, Lcom/a/b/c/c/p;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/a/b/c/c/p;->j:I

    iget-object v1, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_3b

    :cond_1e
    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1}, Lcom/a/b/g/h;->g()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "line = %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/a/b/c/c/p;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_3b
    return-void
.end method

.method private b(Lcom/a/b/c/b/u;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/a/b/g/h;->a(I)V

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/a/b/c/c/p;->d(I)V

    iget-object v1, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_3f

    :cond_1b
    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1}, Lcom/a/b/g/h;->g()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +local restart %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/a/b/c/c/p;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/c/b/u;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_3f
    return-void
.end method

.method private b()[B
    .registers 11

    const/4 v6, 0x1

    const/4 v1, 0x0

    const v4, 0x7fffffff

    invoke-direct {p0}, Lcom/a/b/c/c/p;->c()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0}, Lcom/a/b/c/c/p;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/a/b/c/c/p;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/a/b/g/h;->a(I)V

    iget-object v0, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_31

    :cond_1e
    const-string v0, "%04x: prologue end"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/a/b/c/c/p;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_31
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v0, p0, Lcom/a/b/c/c/p;->b:Lcom/a/b/c/b/s;

    invoke-virtual {v0}, Lcom/a/b/c/b/s;->d_()I

    move-result v7

    move v0, v1

    move v3, v1

    :goto_3d
    invoke-direct {p0, v3}, Lcom/a/b/c/c/p;->a(I)I

    move-result v3

    invoke-direct {p0, v0, v5}, Lcom/a/b/c/c/p;->a(ILjava/util/ArrayList;)I

    move-result v2

    if-ge v3, v7, :cond_90

    iget-object v0, p0, Lcom/a/b/c/c/p;->b:Lcom/a/b/c/b/s;

    invoke-virtual {v0, v3}, Lcom/a/b/c/b/s;->a(I)Lcom/a/b/c/b/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/c/b/u;->a()I

    move-result v0

    move v1, v0

    :goto_52
    if-ge v2, v6, :cond_8e

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/ad;

    invoke-virtual {v0}, Lcom/a/b/c/b/ad;->a()I

    move-result v0

    :goto_5e
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v8, v4, :cond_6e

    :cond_64
    invoke-direct {p0}, Lcom/a/b/c/c/p;->f()V

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->f()[B

    move-result-object v0

    return-object v0

    :cond_6e
    iget v9, p0, Lcom/a/b/c/c/p;->e:I

    if-ne v8, v9, :cond_76

    if-ne v1, v4, :cond_76

    if-eq v0, v4, :cond_64

    :cond_76
    if-ne v8, v0, :cond_85

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/c/b/ad;

    invoke-direct {p0, v0}, Lcom/a/b/c/c/p;->a(Lcom/a/b/c/b/ad;)V

    move v0, v1

    goto :goto_3d

    :cond_85
    iget v0, p0, Lcom/a/b/c/c/p;->i:I

    sub-int v0, v8, v0

    invoke-direct {p0, v0}, Lcom/a/b/c/c/p;->c(I)V

    move v0, v2

    goto :goto_3d

    :cond_8e
    move v0, v4

    goto :goto_5e

    :cond_90
    move v1, v4

    goto :goto_52
.end method

.method private c()Ljava/util/ArrayList;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/a/b/c/c/p;->a:Lcom/a/b/c/b/ac;

    if-nez v0, :cond_16

    move v0, v1

    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_b
    if-lt v1, v0, :cond_1d

    new-instance v0, Lcom/a/b/c/c/q;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/q;-><init>(Lcom/a/b/c/c/p;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2

    :cond_16
    iget-object v0, p0, Lcom/a/b/c/c/p;->a:Lcom/a/b/c/b/ac;

    invoke-virtual {v0}, Lcom/a/b/c/b/ac;->d_()I

    move-result v0

    goto :goto_6

    :cond_1d
    iget-object v3, p0, Lcom/a/b/c/c/p;->a:Lcom/a/b/c/b/ac;

    invoke-virtual {v3, v1}, Lcom/a/b/c/b/ac;->a(I)Lcom/a/b/c/b/ad;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method private c(I)V
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1, v2}, Lcom/a/b/g/h;->a(I)V

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1, p1}, Lcom/a/b/g/h;->e(I)I

    iget v1, p0, Lcom/a/b/c/c/p;->i:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/a/b/c/c/p;->i:I

    iget-object v1, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_3a

    :cond_1e
    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1}, Lcom/a/b/g/h;->g()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: advance pc"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/a/b/c/c/p;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_3a
    return-void
.end method

.method private c(Lcom/a/b/c/b/u;)V
    .registers 7

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->e()Lcom/a/b/e/c/ad;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/a/b/c/c/p;->d(Lcom/a/b/c/b/u;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/a/b/g/h;->a(I)V

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/a/b/c/c/p;->d(I)V

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->d()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/e/c/ad;)V

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->f()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/e/c/ae;)V

    iget-object v1, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_9

    :cond_33
    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1}, Lcom/a/b/g/h;->g()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/a/b/c/c/p;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/c/b/u;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    goto :goto_9
.end method

.method private d()I
    .registers 4

    iget v1, p0, Lcom/a/b/c/c/p;->f:I

    iget-object v0, p0, Lcom/a/b/c/c/p;->g:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/b;->e()I

    move-result v2

    iget-boolean v0, p0, Lcom/a/b/c/c/p;->h:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    :goto_11
    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private d(I)V
    .registers 5

    if-gez p1, :cond_17

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Signed value where unsigned required: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0, p1}, Lcom/a/b/g/h;->e(I)I

    return-void
.end method

.method private d(Lcom/a/b/c/b/u;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/a/b/g/h;->a(I)V

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->g()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/a/b/c/c/p;->d(I)V

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->d()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/e/c/ad;)V

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->f()Lcom/a/b/e/c/ae;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/e/c/ae;)V

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->e()Lcom/a/b/e/c/ad;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/e/c/ad;)V

    iget-object v1, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v1, :cond_30

    iget-object v1, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_54

    :cond_30
    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1}, Lcom/a/b/g/h;->g()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: +localx %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/a/b/c/c/p;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/c/b/u;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_54
    return-void
.end method

.method private e()Ljava/util/ArrayList;
    .registers 9

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/a/b/c/c/p;->g:Lcom/a/b/e/d/a;

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/b;->d_()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lcom/a/b/c/c/p;->d()I

    move-result v2

    new-instance v3, Ljava/util/BitSet;

    iget v0, p0, Lcom/a/b/c/c/p;->f:I

    sub-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/util/BitSet;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/c/c/p;->b:Lcom/a/b/c/b/s;

    invoke-virtual {v0}, Lcom/a/b/c/b/s;->d_()I

    move-result v4

    const/4 v0, 0x0

    :goto_22
    if-lt v0, v4, :cond_2d

    new-instance v0, Lcom/a/b/c/c/r;

    invoke-direct {v0, p0}, Lcom/a/b/c/c/r;-><init>(Lcom/a/b/c/c/p;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v1

    :cond_2d
    iget-object v5, p0, Lcom/a/b/c/c/p;->b:Lcom/a/b/c/b/s;

    invoke-virtual {v5, v0}, Lcom/a/b/c/b/s;->a(I)Lcom/a/b/c/b/u;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/c/b/u;->g()I

    move-result v6

    if-ge v6, v2, :cond_3c

    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_3c
    sub-int v7, v6, v2

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-nez v7, :cond_39

    sub-int/2addr v6, v2

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39
.end method

.method private e(Lcom/a/b/c/b/u;)V
    .registers 7

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v0}, Lcom/a/b/g/h;->g()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/a/b/g/h;->a(I)V

    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {p1}, Lcom/a/b/c/b/u;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/a/b/g/h;->e(I)I

    iget-object v1, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v1, :cond_41

    :cond_1d
    iget-object v1, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    invoke-virtual {v1}, Lcom/a/b/g/h;->g()I

    move-result v1

    sub-int v0, v1, v0

    const-string v1, "%04x: -local %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/a/b/c/c/p;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/a/b/c/c/p;->a(Lcom/a/b/c/b/u;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_41
    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/a/b/c/c/p;->c:Lcom/a/b/g/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/g/h;->a(I)V

    iget-object v0, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    if-eqz v0, :cond_14

    :cond_e
    const/4 v0, 0x1

    const-string v1, "end sequence"

    invoke-direct {p0, v0, v1}, Lcom/a/b/c/c/p;->a(ILjava/lang/String;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public a()[B
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/a/b/c/c/p;->b()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    const-string v1, "...while encoding debug info"

    invoke-static {v0, v1}, Lcom/a/a/a/b;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/a/a/a/b;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Lcom/a/b/g/a;Z)[B
    .registers 6

    iput-object p1, p0, Lcom/a/b/c/c/p;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/a/b/c/c/p;->l:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/a/b/c/c/p;->k:Lcom/a/b/g/a;

    iput-boolean p4, p0, Lcom/a/b/c/c/p;->n:Z

    invoke-virtual {p0}, Lcom/a/b/c/c/p;->a()[B

    move-result-object v0

    return-object v0
.end method
