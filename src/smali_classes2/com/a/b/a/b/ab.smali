.class public final Lcom/a/b/a/b/ab;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/a/b/o;

.field private final b:Lcom/a/b/a/b/g;

.field private final c:I

.field private final d:I

.field private final e:Lcom/a/b/a/b/ak;

.field private final f:Lcom/a/b/a/b/am;

.field private final g:[Lcom/a/b/a/b/q;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/ArrayList;

.field private final j:[Lcom/a/b/a/b/ae;

.field private k:Z

.field private final l:[Lcom/a/b/a/b/ai;

.field private m:Z

.field private final n:Lcom/a/b/a/b/ag;


# direct methods
.method private constructor <init>(Lcom/a/b/a/b/o;Lcom/a/b/e/b/ah;Lcom/a/b/a/e/h;Lcom/a/b/c/a;)V
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-static {p1}, Lcom/a/b/a/b/b;->a(Lcom/a/b/a/b/o;)Lcom/a/b/a/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/b/ab;->b:Lcom/a/b/a/b/g;

    iget-object v0, p0, Lcom/a/b/a/b/ab;->b:Lcom/a/b/a/b/g;

    invoke-virtual {v0}, Lcom/a/b/a/b/g;->j()I

    move-result v0

    iput v0, p0, Lcom/a/b/a/b/ab;->d:I

    invoke-virtual {p1}, Lcom/a/b/a/b/o;->l()I

    move-result v0

    iput v0, p0, Lcom/a/b/a/b/ab;->c:I

    new-instance v0, Lcom/a/b/a/b/ak;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/a/b/a/b/ak;-><init>(Lcom/a/b/a/b/ab;Lcom/a/b/a/b/o;Lcom/a/b/e/b/ah;Lcom/a/b/a/e/h;)V

    iput-object v0, p0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    new-instance v0, Lcom/a/b/a/b/am;

    iget-object v1, p0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-direct {v0, v1, p1, p4}, Lcom/a/b/a/b/am;-><init>(Lcom/a/b/a/b/x;Lcom/a/b/a/b/o;Lcom/a/b/c/a;)V

    iput-object v0, p0, Lcom/a/b/a/b/ab;->f:Lcom/a/b/a/b/am;

    iget v0, p0, Lcom/a/b/a/b/ab;->d:I

    new-array v0, v0, [Lcom/a/b/a/b/q;

    iput-object v0, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    iget v0, p0, Lcom/a/b/a/b/ab;->d:I

    new-array v0, v0, [Lcom/a/b/a/b/ai;

    iput-object v0, p0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/b/a/b/ab;->b:Lcom/a/b/a/b/g;

    invoke-virtual {v1}, Lcom/a/b/a/b/g;->d_()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/b/a/b/ab;->b:Lcom/a/b/a/b/g;

    invoke-virtual {v1}, Lcom/a/b/a/b/g;->d_()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/ab;->i:Ljava/util/ArrayList;

    iget v0, p0, Lcom/a/b/a/b/ab;->d:I

    new-array v0, v0, [Lcom/a/b/a/b/ae;

    iput-object v0, p0, Lcom/a/b/a/b/ab;->j:[Lcom/a/b/a/b/ae;

    iput-boolean v4, p0, Lcom/a/b/a/b/ab;->k:Z

    iget-object v0, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    new-instance v1, Lcom/a/b/a/b/q;

    iget v2, p0, Lcom/a/b/a/b/ab;->c:I

    invoke-virtual {p1}, Lcom/a/b/a/b/o;->k()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/a/b/a/b/q;-><init>(II)V

    aput-object v1, v0, v4

    new-instance v0, Lcom/a/b/a/b/ag;

    invoke-direct {v0, p0}, Lcom/a/b/a/b/ag;-><init>(Lcom/a/b/a/b/ab;)V

    iput-object v0, p0, Lcom/a/b/a/b/ab;->n:Lcom/a/b/a/b/ag;

    return-void
.end method

.method private a(I)I
    .registers 4

    iget v0, p0, Lcom/a/b/a/b/ab;->d:I

    iget-object v1, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v1}, Lcom/a/b/a/b/o;->n()Lcom/a/b/a/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/a/b/h;->d_()I

    move-result v1

    add-int/2addr v0, v1

    xor-int/lit8 v1, p1, -0x1

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/a/b/a/b/ab;)Lcom/a/b/a/b/ag;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ab;->n:Lcom/a/b/a/b/ag;

    return-object v0
.end method

.method public static a(Lcom/a/b/a/b/o;Lcom/a/b/e/b/ah;Lcom/a/b/a/e/h;Lcom/a/b/c/a;)Lcom/a/b/e/b/ab;
    .registers 7

    :try_start_0
    new-instance v0, Lcom/a/b/a/b/ab;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/a/b/a/b/ab;-><init>(Lcom/a/b/a/b/o;Lcom/a/b/e/b/ah;Lcom/a/b/a/e/h;Lcom/a/b/c/a;)V

    invoke-direct {v0}, Lcom/a/b/a/b/ab;->i()V

    invoke-direct {v0}, Lcom/a/b/a/b/ab;->h()Lcom/a/b/e/b/ab;
    :try_end_0
    .catch Lcom/a/b/a/b/al; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while working on method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/a/b/a/b/o;->d()Lcom/a/b/e/c/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/c/aa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/a/b/a/b/ab;I)Lcom/a/b/e/b/b;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/a/b/ab;->c(I)Lcom/a/b/e/b/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/m;)Lcom/a/b/e/b/m;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/m;)Lcom/a/b/e/b/m;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/a/b/e/b/m;)Lcom/a/b/e/b/m;
    .registers 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/m;->d_()I

    move-result v5

    move v1, v4

    move v2, v4

    :goto_0
    if-lt v2, v5, :cond_0

    if-ne v1, v5, :cond_1

    :goto_1
    return-object p1

    :cond_0
    invoke-virtual {p1, v2}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v0

    sget-object v3, Lcom/a/b/e/b/ac;->g:Lcom/a/b/e/b/aa;

    if-eq v0, v3, :cond_4

    add-int/lit8 v0, v1, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/b/e/b/m;

    invoke-direct {v0, v1}, Lcom/a/b/e/b/m;-><init>(I)V

    move v3, v4

    move v2, v4

    :goto_3
    if-lt v3, v5, :cond_2

    invoke-virtual {v0}, Lcom/a/b/e/b/m;->c_()V

    move-object p1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Lcom/a/b/e/b/m;->a(I)Lcom/a/b/e/b/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v1

    sget-object v6, Lcom/a/b/e/b/ac;->g:Lcom/a/b/e/b/aa;

    if-eq v1, v6, :cond_3

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private a(IILcom/a/b/a/b/ai;Lcom/a/b/a/b/q;[I)V
    .registers 8

    iget-object v0, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    aget-object v1, v0, p1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/a/b/a/b/ai;->a()I

    move-result v0

    invoke-virtual {v1, p4, v0, p2}, Lcom/a/b/a/b/q;->a(Lcom/a/b/a/b/q;II)Lcom/a/b/a/b/q;

    move-result-object v0

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    aput-object v0, v1, p1

    invoke-static {p5, p1}, Lcom/a/b/g/d;->b([II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1, p4}, Lcom/a/b/a/b/q;->a(Lcom/a/b/a/b/q;)Lcom/a/b/a/b/q;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    invoke-virtual {p4, p1, p2}, Lcom/a/b/a/b/q;->b(II)Lcom/a/b/a/b/q;

    move-result-object v1

    aput-object v1, v0, p1

    :goto_2
    invoke-static {p5, p1}, Lcom/a/b/g/d;->b([II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    aput-object p4, v0, p1

    goto :goto_2
.end method

.method private a(ILcom/a/b/e/b/c;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/a/b/a/b/ab;->c(I)Lcom/a/b/e/b/b;

    move-result-object v0

    new-instance v1, Ljava/util/BitSet;

    iget v2, p0, Lcom/a/b/a/b/ab;->d:I

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, v0, p2, v1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/c;Ljava/util/BitSet;)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/a/b/ab;IILcom/a/b/a/b/ai;Lcom/a/b/a/b/q;[I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/a/b/a/b/ab;->a(IILcom/a/b/a/b/ai;Lcom/a/b/a/b/q;[I)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/a/b/ab;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/a/b/a/b/ab;->m:Z

    return-void
.end method

.method private a(Lcom/a/b/a/b/f;Lcom/a/b/a/b/q;[I)V
    .registers 25

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/f;->e()Lcom/a/b/a/b/h;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual/range {v18 .. v18}, Lcom/a/b/a/b/h;->a_()Lcom/a/b/e/d/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/a/b/ak;->a(Lcom/a/b/e/d/e;)V

    invoke-virtual/range {p2 .. p2}, Lcom/a/b/a/b/q;->a()Lcom/a/b/a/b/q;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->f:Lcom/a/b/a/b/am;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v5}, Lcom/a/b/a/b/am;->a(Lcom/a/b/a/b/f;Lcom/a/b/a/b/q;)V

    invoke-virtual {v5}, Lcom/a/b/a/b/q;->b()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->s()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->m()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Lcom/a/b/a/b/h;->d_()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/f;->d()Lcom/a/b/g/n;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v4, v4, v3

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    new-instance v6, Lcom/a/b/a/b/ai;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lcom/a/b/a/b/ai;-><init>(Lcom/a/b/a/b/ab;I)V

    aput-object v6, v4, v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v4, v4, v3

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/f;->a()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/a/b/a/b/ai;->b(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v4, v4, v3

    move-object v7, v2

    :goto_0
    invoke-virtual {v7}, Lcom/a/b/g/n;->b()I

    move-result v8

    move v9, v1

    :goto_1
    if-lt v9, v8, :cond_9

    if-nez v8, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->q()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v3

    const/4 v1, 0x1

    move v6, v1

    :goto_2
    if-nez v6, :cond_a

    const/4 v1, -0x1

    move v2, v1

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/a/b/a/b/ab;->d()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->t()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    move/from16 v17, v1

    :goto_4
    if-nez v17, :cond_1

    if-eqz v12, :cond_18

    :cond_1
    new-instance v4, Lcom/a/b/g/n;

    invoke-direct {v4, v6}, Lcom/a/b/g/n;-><init>(I)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    move v15, v1

    move/from16 v16, v3

    :goto_5
    if-lt v15, v12, :cond_c

    if-eqz v17, :cond_2

    if-nez v16, :cond_2

    const/4 v1, -0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/a/b/g/n;->c(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/a/b/a/b/ab;->k:Z

    sub-int v1, v14, v13

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_6
    if-lt v3, v14, :cond_f

    :cond_2
    if-ltz v2, :cond_3

    invoke-virtual {v4, v2}, Lcom/a/b/g/n;->c(I)V

    :cond_3
    invoke-virtual {v4}, Lcom/a/b/g/n;->c_()V

    move-object v1, v4

    :goto_7
    invoke-virtual {v1, v2}, Lcom/a/b/g/n;->f(I)I

    move-result v9

    move v6, v13

    move v7, v2

    move v4, v14

    move-object v3, v1

    :goto_8
    if-gtz v6, :cond_11

    if-nez v4, :cond_14

    const/4 v1, 0x0

    :goto_9
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1b

    :cond_4
    if-nez v1, :cond_15

    sget-object v1, Lcom/a/b/e/b/ad;->a:Lcom/a/b/e/b/ad;

    :goto_a
    new-instance v2, Lcom/a/b/e/b/s;

    sget-object v6, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    const/4 v8, 0x0

    sget-object v9, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v2, v6, v1, v8, v9}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v2, v1

    :goto_b
    new-instance v6, Lcom/a/b/e/b/m;

    invoke-direct {v6, v2}, Lcom/a/b/e/b/m;-><init>(I)V

    const/4 v1, 0x0

    move v4, v1

    :goto_c
    if-lt v4, v2, :cond_16

    invoke-virtual {v6}, Lcom/a/b/e/b/m;->c_()V

    new-instance v1, Lcom/a/b/e/b/b;

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/f;->a()I

    move-result v2

    invoke-direct {v1, v2, v6, v3, v7}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    invoke-virtual {v5}, Lcom/a/b/a/b/q;->e()Lcom/a/b/g/n;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/a/b/a/b/ab;->b(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)Z

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->v()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->w()Lcom/a/b/a/b/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/a/b/aa;->g()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v2, v2, v1

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    new-instance v3, Lcom/a/b/a/b/ai;

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/f;->a()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v1, v6}, Lcom/a/b/a/b/ai;-><init>(Lcom/a/b/a/b/ab;II)V

    aput-object v3, v2, v1

    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/a/b/a/b/ai;->b()Lcom/a/b/g/n;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v1, v3, v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v5, v0}, Lcom/a/b/a/b/ai;->a(Lcom/a/b/a/b/q;[I)V

    invoke-virtual {v2}, Lcom/a/b/g/n;->b()I

    move-result v1

    move-object v7, v2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v2, v2, v1

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/f;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/a/b/a/b/ai;->a(I)V

    goto :goto_d

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->p()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v12

    move-object v7, v2

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    move-object v7, v2

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v7, v9}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/f;->a()I

    move-result v3

    move-object/from16 v1, p0

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/a/b/a/b/ab;->a(IILcom/a/b/a/b/ai;Lcom/a/b/a/b/q;[I)V
    :try_end_0
    .catch Lcom/a/b/a/b/al; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...while merging to block "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    throw v1

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v1}, Lcom/a/b/a/b/ak;->r()I

    move-result v1

    if-ltz v1, :cond_19

    invoke-virtual {v3, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    move v2, v1

    goto/16 :goto_3

    :cond_b
    const/4 v1, 0x0

    move/from16 v17, v1

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/a/b/a/b/h;->a(I)Lcom/a/b/a/b/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/a/b/i;->d()Lcom/a/b/e/c/ae;

    move-result-object v20

    invoke-virtual {v1}, Lcom/a/b/a/b/i;->c()I

    move-result v7

    sget-object v1, Lcom/a/b/e/c/ae;->a:Lcom/a/b/e/c/ae;

    move-object/from16 v0, v20

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/a/b/a/b/q;->a(Lcom/a/b/e/c/ae;)Lcom/a/b/a/b/q;

    move-result-object v10

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/f;->a()I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v6, p0

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/a/b/a/b/ab;->a(IILcom/a/b/a/b/ai;Lcom/a/b/a/b/q;[I)V
    :try_end_1
    .catch Lcom/a/b/a/b/al; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ab;->j:[Lcom/a/b/a/b/ae;

    aget-object v3, v3, v7

    if-nez v3, :cond_d

    new-instance v3, Lcom/a/b/a/b/ae;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/a/b/a/b/ae;-><init>(Lcom/a/b/a/b/ab;Lcom/a/b/a/b/ae;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/b/a/b/ab;->j:[Lcom/a/b/a/b/ae;

    aput-object v3, v6, v7

    :cond_d
    invoke-virtual/range {v20 .. v20}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/a/b/a/b/ae;->a(Lcom/a/b/e/d/c;)Lcom/a/b/a/b/af;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/a/b/af;->b()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/a/b/g/n;->c(I)V

    add-int/lit8 v3, v15, 0x1

    or-int v1, v1, v16

    move v15, v3

    move/from16 v16, v1

    goto/16 :goto_5

    :cond_e
    const/4 v1, 0x0

    goto :goto_e

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while merging exception to block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    throw v1

    :cond_f
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/j;

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->k()Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-virtual {v1, v6}, Lcom/a/b/e/b/j;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/b/j;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_6

    :cond_11
    add-int/lit8 v8, v4, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/j;

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->f()Lcom/a/b/e/b/aa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->d()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_12

    const/4 v2, 0x1

    move v4, v2

    :goto_f
    if-eqz v4, :cond_13

    const/4 v2, 0x2

    :goto_10
    new-instance v10, Lcom/a/b/e/b/m;

    invoke-direct {v10, v2}, Lcom/a/b/e/b/m;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v1}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    if-eqz v4, :cond_17

    const/4 v2, 0x1

    new-instance v4, Lcom/a/b/e/b/s;

    sget-object v11, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    invoke-virtual {v1}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v1

    const/4 v12, 0x0

    sget-object v13, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v4, v11, v1, v12, v13}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v10, v2, v4}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-static {v7}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v1

    :goto_11
    invoke-virtual {v10}, Lcom/a/b/e/b/m;->c_()V

    invoke-direct/range {p0 .. p0}, Lcom/a/b/a/b/ab;->c()I

    move-result v2

    new-instance v4, Lcom/a/b/e/b/b;

    invoke-direct {v4, v2, v10, v1, v7}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    invoke-virtual {v5}, Lcom/a/b/a/b/q;->e()Lcom/a/b/g/n;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    invoke-virtual {v3}, Lcom/a/b/g/n;->f()Lcom/a/b/g/n;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Lcom/a/b/g/n;->b(II)V

    invoke-virtual {v3}, Lcom/a/b/g/n;->c_()V

    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move v7, v2

    move v4, v8

    goto/16 :goto_8

    :cond_12
    const/4 v2, 0x0

    move v4, v2

    goto :goto_f

    :cond_13
    const/4 v2, 0x1

    goto :goto_10

    :cond_14
    add-int/lit8 v1, v4, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/j;

    goto/16 :goto_9

    :cond_15
    invoke-virtual {v1}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v1

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/b/j;

    invoke-virtual {v6, v4, v1}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_c

    :cond_17
    move-object v1, v3

    goto :goto_11

    :cond_18
    move-object v1, v3

    goto/16 :goto_7

    :cond_19
    move v2, v1

    goto/16 :goto_3

    :cond_1a
    move v6, v8

    move-object v3, v7

    goto/16 :goto_2

    :cond_1b
    move v2, v4

    goto/16 :goto_b
.end method

.method private a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/c;Ljava/util/BitSet;)V
    .registers 9

    invoke-interface {p2, p1}, Lcom/a/b/e/b/c;->a(Lcom/a/b/e/b/b;)V

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/g/n;->b()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-gtz v1, :cond_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/a/b/a/b/ab;->b(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    invoke-direct {p0, v0, p2, p3}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/e/b/c;Ljava/util/BitSet;)V

    goto :goto_1
.end method

.method private a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V
    .registers 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/a/b/g/n;->m()V

    iget-object v0, p0, Lcom/a/b/a/b/ab;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/b;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/b;Lcom/a/b/g/n;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/a/b/a/b/ab;->c(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/a/b/e/b/b;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/g/n;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/a/b/g/n;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v2, v3, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b()I
    .registers 3

    iget v0, p0, Lcom/a/b/a/b/ab;->d:I

    iget-object v1, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v1}, Lcom/a/b/a/b/o;->n()Lcom/a/b/a/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/a/b/h;->d_()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private b(I)I
    .registers 5

    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    if-ne v0, p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/a/b/a/b/ab;)I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/ab;->d:I

    return v0
.end method

.method static synthetic b(Lcom/a/b/a/b/ab;I)Lcom/a/b/a/b/ai;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/b/a/b/ab;->e(I)Lcom/a/b/a/b/ai;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/a/b/a/b/ab;Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    return-void
.end method

.method private b(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)Z
    .registers 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/ab;->b(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/a/b/g/n;->m()V

    iget-object v1, p0, Lcom/a/b/a/b/ab;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/a/b/a/b/ab;->d(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()I
    .registers 4

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->b()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/a/b/a/b/ab;)Lcom/a/b/a/b/o;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    return-object v0
.end method

.method private c(I)Lcom/a/b/e/b/b;
    .registers 5

    invoke-direct {p0, p1}, Lcom/a/b/a/b/ab;->b(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    return-object v0
.end method

.method private c(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)Z
    .registers 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "block == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/ab;->b(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/a/b/g/n;->m()V

    iget-object v1, p0, Lcom/a/b/a/b/ab;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/a/b/a/b/ab;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(I)V
    .registers 8

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->b()I

    move-result v1

    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->c()Lcom/a/b/g/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/g/n;->b()I

    move-result v3

    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/a/b/ab;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v0}, Lcom/a/b/g/n;->b(I)I

    move-result v4

    if-lt v4, v1, :cond_2

    invoke-direct {p0, v4}, Lcom/a/b/a/b/ab;->b(I)I

    move-result v5

    if-gez v5, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid label "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, v5}, Lcom/a/b/a/b/ab;->d(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0}, Lcom/a/b/a/b/o;->g()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)Lcom/a/b/a/b/ai;
    .registers 5

    iget-object v0, p0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/b/a/b/ab;->l:[Lcom/a/b/a/b/ai;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/a/b/a/b/ai;->b(Lcom/a/b/a/b/ai;)Ljava/util/BitSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private e()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0}, Lcom/a/b/a/b/o;->g()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()I
    .registers 3

    iget v0, p0, Lcom/a/b/a/b/ab;->c:I

    iget-object v1, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v1}, Lcom/a/b/a/b/o;->k()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private g()Lcom/a/b/e/b/u;
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->f()I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    sget-object v1, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-static {v0, v1}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v0

    return-object v0
.end method

.method private h()Lcom/a/b/e/b/ab;
    .registers 5

    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Lcom/a/b/e/b/d;

    invoke-direct {v3, v2}, Lcom/a/b/e/b/d;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    invoke-virtual {v3}, Lcom/a/b/e/b/d;->c_()V

    new-instance v0, Lcom/a/b/e/b/ab;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/a/b/e/b/ab;-><init>(Lcom/a/b/e/b/d;I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    invoke-virtual {v3, v1, v0}, Lcom/a/b/e/b/d;->a(ILcom/a/b/e/b/b;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private i()V
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Lcom/a/b/a/b/ab;->d:I

    invoke-static {v0}, Lcom/a/b/g/d;->a(I)[I

    move-result-object v0

    invoke-static {v0, v4}, Lcom/a/b/g/d;->b([II)V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->k()V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->j()V

    :goto_0
    invoke-static {v0, v4}, Lcom/a/b/g/d;->d([II)I

    move-result v1

    if-gez v1, :cond_1

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->l()V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->m()V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->n()V

    iget-boolean v0, p0, Lcom/a/b/a/b/ab;->m:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->o()V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0, v1}, Lcom/a/b/g/d;->c([II)V

    iget-object v2, p0, Lcom/a/b/a/b/ab;->b:Lcom/a/b/a/b/g;

    invoke-virtual {v2, v1}, Lcom/a/b/a/b/g;->b(I)Lcom/a/b/a/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    aget-object v3, v3, v1

    :try_start_0
    invoke-direct {p0, v2, v3, v0}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/a/b/f;Lcom/a/b/a/b/q;[I)V
    :try_end_0
    .catch Lcom/a/b/a/b/al; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "...while working on block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/al;->a(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0}, Lcom/a/b/a/b/o;->j()Lcom/a/b/e/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/b/a/b/q;->a(Lcom/a/b/e/d/b;)V

    iget-object v0, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->b()V

    return-void
.end method

.method private k()V
    .registers 14

    iget-object v0, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0}, Lcom/a/b/a/b/o;->o()Lcom/a/b/a/b/t;

    move-result-object v8

    iget-object v0, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/a/b/a/b/o;->a(I)Lcom/a/b/e/b/ad;

    move-result-object v2

    iget-object v0, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0}, Lcom/a/b/a/b/o;->j()Lcom/a/b/e/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/d/a;->c()Lcom/a/b/e/d/b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/a/b/e/d/b;->d_()I

    move-result v10

    new-instance v11, Lcom/a/b/e/b/m;

    add-int/lit8 v0, v10, 0x1

    invoke-direct {v11, v0}, Lcom/a/b/e/b/m;-><init>(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v6, v0

    move v7, v1

    :goto_0
    if-lt v6, v10, :cond_2

    new-instance v0, Lcom/a/b/e/b/s;

    sget-object v1, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    const/4 v3, 0x0

    sget-object v4, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v11, v10, v0}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-virtual {v11}, Lcom/a/b/e/b/m;->c_()V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v0

    move v6, v0

    :goto_1
    new-instance v0, Lcom/a/b/e/b/b;

    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v3

    invoke-static {v6}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v4

    invoke-direct {v0, v3, v11, v4, v6}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    sget-object v3, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, v0, v3}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->g()Lcom/a/b/e/b/u;

    move-result-object v8

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/a/b/e/b/af;

    sget-object v1, Lcom/a/b/e/b/ac;->q:Lcom/a/b/e/b/aa;

    sget-object v3, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    sget-object v4, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    iget-object v5, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v5}, Lcom/a/b/a/b/o;->i()Lcom/a/b/e/c/ae;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    new-instance v1, Lcom/a/b/e/b/m;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/a/b/e/b/m;-><init>(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    move-object v0, v1

    :goto_2
    const/4 v1, -0x5

    invoke-direct {p0, v1}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/a/b/e/b/m;->c_()V

    new-instance v3, Lcom/a/b/e/b/b;

    invoke-static {v1}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v4

    invoke-direct {v3, v6, v0, v4, v1}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    sget-object v0, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, v3, v0}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    :goto_3
    new-instance v3, Lcom/a/b/e/b/m;

    invoke-direct {v3, v0}, Lcom/a/b/e/b/m;-><init>(I)V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-instance v4, Lcom/a/b/e/b/s;

    invoke-static {v8}, Lcom/a/b/e/b/ac;->e(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v5

    sget-object v6, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v4, v5, v2, v8, v6}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v3, v0, v4}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    :cond_0
    new-instance v4, Lcom/a/b/e/b/ag;

    sget-object v0, Lcom/a/b/e/b/ac;->bE:Lcom/a/b/e/b/aa;

    invoke-static {v8}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v5

    sget-object v6, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    invoke-direct {v4, v0, v2, v5, v6}, Lcom/a/b/e/b/ag;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v3, v0, v4}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-virtual {v3}, Lcom/a/b/e/b/m;->c_()V

    new-instance v0, Lcom/a/b/e/b/b;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    sget-object v1, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, v0, v1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v9, v6}, Lcom/a/b/e/d/b;->b(I)Lcom/a/b/e/d/c;

    move-result-object v12

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v7}, Lcom/a/b/a/b/t;->a(II)Lcom/a/b/a/b/u;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v7, v12}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v3

    :goto_5
    new-instance v0, Lcom/a/b/e/b/r;

    invoke-static {v12}, Lcom/a/b/e/b/ac;->b(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v1

    sget-object v4, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-static {v7}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/r;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    invoke-virtual {v11, v6, v0}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-virtual {v12}, Lcom/a/b/e/d/c;->j()I

    move-result v1

    add-int/lit8 v0, v6, 0x1

    add-int/2addr v1, v7

    move v6, v0

    move v7, v1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/a/b/a/b/u;->a()Lcom/a/b/e/b/o;

    move-result-object v0

    invoke-static {v7, v12, v0}, Lcom/a/b/e/b/u;->b(ILcom/a/b/e/d/d;Lcom/a/b/e/b/o;)Lcom/a/b/e/b/u;

    move-result-object v3

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_1

    :cond_5
    new-instance v7, Lcom/a/b/e/b/m;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Lcom/a/b/e/b/m;-><init>(I)V

    const/4 v9, 0x0

    new-instance v0, Lcom/a/b/e/b/r;

    sget-object v1, Lcom/a/b/e/b/ac;->l:Lcom/a/b/e/b/aa;

    sget-object v4, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    sget-object v5, Lcom/a/b/e/c/p;->b:Lcom/a/b/e/c/p;

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/r;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    invoke-virtual {v7, v9, v0}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    const/4 v0, 0x1

    new-instance v1, Lcom/a/b/e/b/s;

    sget-object v3, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    const/4 v4, 0x0

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v7, v0, v1}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    move-object v0, v7

    goto/16 :goto_2

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private l()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v0}, Lcom/a/b/a/b/ak;->n()Lcom/a/b/e/b/aa;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/ab;->e:Lcom/a/b/a/b/ak;

    invoke-virtual {v0}, Lcom/a/b/a/b/ak;->o()Lcom/a/b/e/b/ad;

    move-result-object v3

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v1

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v4, Lcom/a/b/e/b/m;

    invoke-direct {v4, v9}, Lcom/a/b/e/b/m;-><init>(I)V

    new-instance v0, Lcom/a/b/e/b/ag;

    sget-object v5, Lcom/a/b/e/b/ac;->bF:Lcom/a/b/e/b/aa;

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->g()Lcom/a/b/e/b/u;

    move-result-object v6

    invoke-static {v6}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v6

    sget-object v7, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    invoke-direct {v0, v5, v3, v6, v7}, Lcom/a/b/e/b/ag;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V

    invoke-virtual {v4, v8, v0}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-virtual {v4}, Lcom/a/b/e/b/m;->c_()V

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v0

    new-instance v5, Lcom/a/b/e/b/b;

    invoke-static {v0}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v6

    invoke-direct {v5, v1, v4, v6, v0}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    sget-object v1, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, v5, v1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    :goto_1
    new-instance v4, Lcom/a/b/e/b/m;

    invoke-direct {v4, v9}, Lcom/a/b/e/b/m;-><init>(I)V

    invoke-virtual {v2}, Lcom/a/b/e/b/aa;->c()Lcom/a/b/e/d/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/b/e/d/e;->d_()I

    move-result v5

    if-nez v5, :cond_1

    sget-object v1, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    :goto_2
    new-instance v5, Lcom/a/b/e/b/s;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6, v1}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v4, v8, v5}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-virtual {v4}, Lcom/a/b/e/b/m;->c_()V

    new-instance v1, Lcom/a/b/e/b/b;

    sget-object v2, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    const/4 v3, -0x1

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    sget-object v0, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, v1, v0}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1, v8}, Lcom/a/b/e/d/e;->a(I)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-static {v1}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private m()V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/a/b/a/b/ab;->k:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/ab;->a:Lcom/a/b/a/b/o;

    invoke-virtual {v0, v7}, Lcom/a/b/a/b/o;->a(I)Lcom/a/b/e/b/ad;

    move-result-object v0

    sget-object v1, Lcom/a/b/e/d/c;->u:Lcom/a/b/e/d/c;

    invoke-static {v7, v1}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v1

    new-instance v2, Lcom/a/b/e/b/m;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/a/b/e/b/m;-><init>(I)V

    new-instance v3, Lcom/a/b/e/b/s;

    sget-object v4, Lcom/a/b/e/d/c;->u:Lcom/a/b/e/d/c;

    invoke-static {v4}, Lcom/a/b/e/b/ac;->c(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v4

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v2, v7, v3}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    new-instance v3, Lcom/a/b/e/b/ag;

    sget-object v4, Lcom/a/b/e/b/ac;->bF:Lcom/a/b/e/b/aa;

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->g()Lcom/a/b/e/b/u;

    move-result-object v5

    invoke-static {v5}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v5

    sget-object v6, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/a/b/e/b/ag;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V

    invoke-virtual {v2, v8, v3}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-virtual {v2}, Lcom/a/b/e/b/m;->c_()V

    const/4 v3, -0x7

    invoke-direct {p0, v3}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v3

    new-instance v4, Lcom/a/b/e/b/b;

    const/4 v5, -0x6

    invoke-direct {p0, v5}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v5

    invoke-static {v3}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v6

    invoke-direct {v4, v5, v2, v6, v3}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    sget-object v2, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, v4, v2}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    new-instance v2, Lcom/a/b/e/b/m;

    invoke-direct {v2, v8}, Lcom/a/b/e/b/m;-><init>(I)V

    new-instance v4, Lcom/a/b/e/b/ag;

    sget-object v5, Lcom/a/b/e/b/ac;->bD:Lcom/a/b/e/b/aa;

    invoke-static {v1}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v1

    sget-object v6, Lcom/a/b/e/d/b;->a:Lcom/a/b/e/d/b;

    invoke-direct {v4, v5, v0, v1, v6}, Lcom/a/b/e/b/ag;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V

    invoke-virtual {v2, v7, v4}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-virtual {v2}, Lcom/a/b/e/b/m;->c_()V

    new-instance v0, Lcom/a/b/e/b/b;

    sget-object v1, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    sget-object v1, Lcom/a/b/g/n;->a:Lcom/a/b/g/n;

    invoke-direct {p0, v0, v1}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    goto :goto_0
.end method

.method private n()V
    .registers 13

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/a/b/ab;->j:[Lcom/a/b/a/b/ae;

    array-length v3, v0

    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/ab;->j:[Lcom/a/b/a/b/ae;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/b/a/b/ae;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/a/b/af;

    invoke-direct {p0, v1}, Lcom/a/b/a/b/ab;->c(I)Lcom/a/b/e/b/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/e/b/b;->f()Lcom/a/b/e/b/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/e/b/j;->g()Lcom/a/b/e/b/ad;

    move-result-object v5

    new-instance v6, Lcom/a/b/e/b/m;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/a/b/e/b/m;-><init>(I)V

    new-instance v7, Lcom/a/b/e/b/s;

    invoke-virtual {v0}, Lcom/a/b/a/b/af;->a()Lcom/a/b/e/d/c;

    move-result-object v8

    invoke-static {v8}, Lcom/a/b/e/b/ac;->c(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v8

    iget v9, p0, Lcom/a/b/a/b/ab;->c:I

    invoke-virtual {v0}, Lcom/a/b/a/b/af;->a()Lcom/a/b/e/d/c;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v9

    sget-object v10, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v7, v8, v5, v9, v10}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v6, v2, v7}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    const/4 v7, 0x1

    new-instance v8, Lcom/a/b/e/b/s;

    sget-object v9, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    const/4 v10, 0x0

    sget-object v11, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v8, v9, v5, v10, v11}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    invoke-virtual {v6, v7, v8}, Lcom/a/b/e/b/m;->a(ILcom/a/b/e/b/j;)V

    invoke-virtual {v6}, Lcom/a/b/e/b/m;->c_()V

    new-instance v5, Lcom/a/b/e/b/b;

    invoke-virtual {v0}, Lcom/a/b/a/b/af;->b()I

    move-result v0

    invoke-static {v1}, Lcom/a/b/g/n;->a(I)Lcom/a/b/g/n;

    move-result-object v7

    invoke-direct {v5, v0, v6, v7, v1}, Lcom/a/b/e/b/b;-><init>(ILcom/a/b/e/b/m;Lcom/a/b/g/n;I)V

    iget-object v0, p0, Lcom/a/b/a/b/ab;->g:[Lcom/a/b/a/b/q;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/a/b/a/b/q;->e()Lcom/a/b/g/n;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/a/b/a/b/ab;->a(Lcom/a/b/e/b/b;Lcom/a/b/g/n;)V

    goto :goto_1
.end method

.method private o()V
    .registers 9

    const/4 v3, 0x0

    new-instance v4, Lcom/a/b/g/n;

    const/4 v0, 0x4

    invoke-direct {v4, v0}, Lcom/a/b/g/n;-><init>(I)V

    new-instance v0, Lcom/a/b/a/b/ac;

    invoke-direct {v0, p0, v4}, Lcom/a/b/a/b/ac;-><init>(Lcom/a/b/a/b/ab;Lcom/a/b/g/n;)V

    invoke-direct {p0, v3, v0}, Lcom/a/b/a/b/ab;->a(ILcom/a/b/e/b/c;)V

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->c()I

    move-result v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v3

    :goto_0
    if-lt v0, v1, :cond_0

    move v2, v3

    :goto_1
    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    invoke-virtual {v4}, Lcom/a/b/g/n;->b()I

    move-result v0

    :goto_2
    if-lt v3, v0, :cond_3

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->p()V

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    if-nez v0, :cond_2

    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/a/b/a/b/ab;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/g/n;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-virtual {v4, v3}, Lcom/a/b/g/n;->b(I)I

    move-result v1

    new-instance v2, Lcom/a/b/a/b/aj;

    new-instance v6, Lcom/a/b/a/b/ah;

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->c()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/a/b/a/b/ah;-><init>(I)V

    invoke-direct {v2, p0, v6, v5}, Lcom/a/b/a/b/aj;-><init>(Lcom/a/b/a/b/ab;Lcom/a/b/a/b/ah;Ljava/util/ArrayList;)V

    invoke-direct {p0, v1}, Lcom/a/b/a/b/ab;->c(I)Lcom/a/b/e/b/b;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/a/b/a/b/aj;->a(Lcom/a/b/e/b/b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private p()V
    .registers 4

    new-instance v2, Lcom/a/b/g/n;

    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/a/b/g/n;-><init>(I)V

    iget-object v0, p0, Lcom/a/b/a/b/ab;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/a/b/a/b/ab;->a(I)I

    move-result v0

    new-instance v1, Lcom/a/b/a/b/ad;

    invoke-direct {v1, p0, v2}, Lcom/a/b/a/b/ad;-><init>(Lcom/a/b/a/b/ab;Lcom/a/b/g/n;)V

    invoke-direct {p0, v0, v1}, Lcom/a/b/a/b/ab;->a(ILcom/a/b/e/b/c;)V

    invoke-virtual {v2}, Lcom/a/b/g/n;->g()V

    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/b/b;

    invoke-virtual {v0}, Lcom/a/b/e/b/b;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/a/b/g/n;->f(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/a/b/a/b/ab;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method a()I
    .registers 3

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->f()I

    move-result v0

    invoke-direct {p0}, Lcom/a/b/a/b/ab;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method
