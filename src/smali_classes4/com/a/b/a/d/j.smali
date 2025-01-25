.class public Lcom/a/b/a/d/j;
.super Lcom/a/b/a/d/b;


# static fields
.field public static final a:Lcom/a/b/a/d/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/a/b/a/d/j;

    invoke-direct {v0}, Lcom/a/b/a/d/j;-><init>()V

    sput-object v0, Lcom/a/b/a/d/j;->a:Lcom/a/b/a/d/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/b/a/d/b;-><init>()V

    return-void
.end method

.method private a(Lcom/a/b/g/e;Lcom/a/b/e/c/b;Lcom/a/b/e/c/ae;IIILcom/a/b/a/e/j;)Lcom/a/b/a/b/d;
    .registers 22

    new-instance v6, Lcom/a/b/a/b/d;

    move/from16 v0, p4

    invoke-direct {v6, v0}, Lcom/a/b/a/b/d;-><init>(I)V

    const/4 v2, 0x0

    move v5, v2

    :goto_9
    move/from16 v0, p4

    if-lt v5, v0, :cond_16

    invoke-virtual {v6}, Lcom/a/b/a/b/d;->c_()V

    if-eqz p6, :cond_15

    invoke-static/range {p6 .. p6}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    :cond_15
    return-object v6

    :cond_16
    const/4 v2, 0x4

    move/from16 v0, p6

    if-ge v0, v2, :cond_1e

    invoke-static {}, Lcom/a/b/a/d/j;->b()Lcom/a/b/a/e/a;

    :cond_1e
    move/from16 v0, p5

    invoke-virtual {p1, v0}, Lcom/a/b/g/e;->f(I)I

    move-result v7

    add-int/lit8 v2, p5, 0x2

    invoke-virtual {p1, v2}, Lcom/a/b/g/e;->f(I)I

    move-result v8

    if-eqz p7, :cond_62

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bootstrap_method_ref: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    add-int/lit8 v2, p5, 0x2

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "num_bootstrap_arguments: "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-interface {v0, p1, v2, v3, v4}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_62
    add-int/lit8 v4, p5, 0x4

    add-int/lit8 v3, p6, -0x4

    mul-int/lit8 v2, v8, 0x2

    if-ge v3, v2, :cond_6d

    invoke-static {}, Lcom/a/b/a/d/j;->b()Lcom/a/b/a/e/a;

    :cond_6d
    new-instance v9, Lcom/a/b/a/b/c;

    invoke-direct {v9, v8}, Lcom/a/b/a/b/c;-><init>(I)V

    const/4 v2, 0x0

    :goto_73
    if-lt v2, v8, :cond_8e

    invoke-virtual {v9}, Lcom/a/b/a/b/c;->c_()V

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v2

    check-cast v2, Lcom/a/b/e/c/y;

    move-object/from16 v0, p3

    invoke-virtual {v6, v5, v0, v2, v9}, Lcom/a/b/a/b/d;->a(ILcom/a/b/e/c/ae;Lcom/a/b/e/c/y;Lcom/a/b/a/b/c;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move/from16 p6, v3

    move/from16 p5, v4

    goto/16 :goto_9

    :cond_8e
    invoke-virtual {p1, v4}, Lcom/a/b/g/e;->f(I)I

    move-result v10

    if-eqz p7, :cond_b7

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "bootstrap_arguments["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-interface {v0, p1, v4, v11, v12}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_b7
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/a/b/a/b/c;->a(ILcom/a/b/e/c/a;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v3, v3, -0x2

    goto :goto_73
.end method

.method private a(Lcom/a/b/g/e;Lcom/a/b/e/c/b;Lcom/a/b/a/e/j;IZ)Lcom/a/b/a/b/t;
    .registers 19

    invoke-virtual {p1}, Lcom/a/b/g/e;->a()I

    move-result v1

    mul-int/lit8 v2, p4, 0xa

    if-eq v1, v2, :cond_f

    mul-int/lit8 v1, p4, 0xa

    add-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    :cond_f
    invoke-virtual {p1}, Lcom/a/b/g/e;->b()Lcom/a/b/g/f;

    move-result-object v10

    new-instance v1, Lcom/a/b/a/b/t;

    move/from16 v0, p4

    invoke-direct {v1, v0}, Lcom/a/b/a/b/t;-><init>(I)V

    const/4 v2, 0x0

    :goto_1b
    move/from16 v0, p4

    if-lt v2, v0, :cond_23

    invoke-virtual {v1}, Lcom/a/b/a/b/t;->c_()V

    return-object v1

    :cond_23
    :try_start_23
    invoke-virtual {v10}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v3

    invoke-virtual {v10}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v4

    invoke-virtual {v10}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v5

    invoke-virtual {v10}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v6

    invoke-virtual {v10}, Lcom/a/b/g/f;->readUnsignedShort()I

    move-result v8

    invoke-interface {p2, v5}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v5

    check-cast v5, Lcom/a/b/e/c/ad;

    invoke-interface {p2, v6}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/a/b/e/c/ad;

    move-object v9, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz p5, :cond_a6

    move-object v7, v9

    :goto_4a
    invoke-virtual/range {v1 .. v8}, Lcom/a/b/a/b/t;->a(IIILcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;I)V

    if-eqz p3, :cond_a2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v7, v2, 0xa

    const/16 v11, 0xa

    const-string v12, ".."

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/a/b/e/c/ad;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, p1, v7, v11, v3}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_a2} :catch_a8

    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1b

    :cond_a6
    move-object v6, v9

    goto :goto_4a

    :catch_a8
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "shouldn\'t happen"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static a()Lcom/a/b/a/e/a;
    .registers 2

    new-instance v0, Lcom/a/b/a/e/i;

    const-string v1, "severely truncated attribute"

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I)Lcom/a/b/a/e/a;
    .registers 4

    new-instance v0, Lcom/a/b/a/e/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad attribute length; expected length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()Lcom/a/b/a/e/a;
    .registers 2

    new-instance v0, Lcom/a/b/a/e/i;

    const-string v1, "truncated attribute"

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 7

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    :cond_6
    new-instance v0, Lcom/a/b/a/a/a;

    new-instance v1, Lcom/a/b/a/d/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/a/b/a/d/a;-><init>(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)V

    invoke-virtual {v1}, Lcom/a/b/a/d/a;->a()Lcom/a/b/e/c/a;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/a/b/a/a/a;-><init>(Lcom/a/b/e/c/a;I)V

    return-object v0
.end method

.method private c(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 14

    const/4 v3, 0x2

    if-ge p3, v3, :cond_8

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v4

    if-eqz p4, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "num_boostrap_methods: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v3, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_28
    new-instance v8, Lcom/a/b/a/a/b;

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->e()Lcom/a/b/e/c/ae;

    move-result-object v3

    add-int/lit8 v5, p2, 0x2

    add-int/lit8 v6, p3, -0x2

    move-object v0, p0

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/a/b/a/d/j;->a(Lcom/a/b/g/e;Lcom/a/b/e/c/b;Lcom/a/b/e/c/ae;IIILcom/a/b/a/e/j;)Lcom/a/b/a/b/d;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/a/b/a/a/b;-><init>(Lcom/a/b/a/b/d;)V

    move-object v0, v8

    goto :goto_7
.end method

.method private d(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 22

    const/16 v2, 0xc

    move/from16 v0, p3

    if-ge v0, v2, :cond_b

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    move-result-object v3

    :goto_a
    return-object v3

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/a/b/g/e;->f(I)I

    move-result v12

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v8, v2}, Lcom/a/b/g/e;->f(I)I

    move-result v13

    add-int/lit8 v2, p2, 0x4

    invoke-virtual {v8, v2}, Lcom/a/b/g/e;->c(I)I

    move-result v3

    if-eqz p4, :cond_78

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "max_stack: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v8, v1, v2, v4}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    add-int/lit8 v2, p2, 0x2

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "max_locals: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v2, v4, v5}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    add-int/lit8 v2, p2, 0x4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "code_length: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v2, v4, v5}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_78
    add-int/lit8 v2, p2, 0x8

    add-int/lit8 v4, p3, -0x8

    add-int/lit8 v5, v3, 0x4

    if-ge v4, v5, :cond_85

    invoke-static {}, Lcom/a/b/a/d/j;->b()Lcom/a/b/a/e/a;

    move-result-object v3

    goto :goto_a

    :cond_85
    add-int v5, v2, v3

    new-instance v14, Lcom/a/b/a/b/k;

    add-int v6, v3, v2

    invoke-virtual {v8, v2, v6}, Lcom/a/b/g/e;->a(II)Lcom/a/b/g/e;

    move-result-object v2

    invoke-direct {v14, v2, v11}, Lcom/a/b/a/b/k;-><init>(Lcom/a/b/g/e;Lcom/a/b/e/c/b;)V

    if-eqz p4, :cond_a2

    new-instance v2, Lcom/a/b/a/d/d;

    invoke-virtual {v14}, Lcom/a/b/a/b/k;->a()Lcom/a/b/g/e;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-direct {v2, v6, v0}, Lcom/a/b/a/d/d;-><init>(Lcom/a/b/g/e;Lcom/a/b/a/e/j;)V

    invoke-virtual {v14, v2}, Lcom/a/b/a/b/k;->a(Lcom/a/b/a/b/n;)V

    :cond_a2
    invoke-virtual {v8, v5}, Lcom/a/b/g/e;->f(I)I

    move-result v15

    if-nez v15, :cond_d5

    sget-object v2, Lcom/a/b/a/b/h;->a:Lcom/a/b/a/b/h;

    :goto_aa
    if-eqz p4, :cond_c5

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "exception_table_length: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v5, v6, v7}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_c5
    sub-int v3, v4, v3

    add-int/lit8 v4, v3, -0x2

    mul-int/lit8 v3, v15, 0x8

    add-int/lit8 v3, v3, 0x2

    if-ge v4, v3, :cond_db

    invoke-static {}, Lcom/a/b/a/d/j;->b()Lcom/a/b/a/e/a;

    move-result-object v3

    goto/16 :goto_a

    :cond_d5
    new-instance v2, Lcom/a/b/a/b/h;

    invoke-direct {v2, v15}, Lcom/a/b/a/b/h;-><init>(I)V

    goto :goto_aa

    :cond_db
    const/4 v3, 0x0

    add-int/lit8 v5, v5, 0x2

    move v9, v4

    move v10, v5

    :goto_e0
    if-lt v3, v15, :cond_10b

    invoke-virtual {v2}, Lcom/a/b/a/b/h;->c_()V

    new-instance v3, Lcom/a/b/a/d/c;

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v4, v10, v1}, Lcom/a/b/a/d/c;-><init>(Lcom/a/b/a/d/e;IILcom/a/b/a/d/b;)V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/a/b/a/d/c;->a(Lcom/a/b/a/e/j;)V

    invoke-virtual {v3}, Lcom/a/b/a/d/c;->b()Lcom/a/b/a/e/k;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/b/a/e/k;->c_()V

    invoke-virtual {v3}, Lcom/a/b/a/d/c;->a()I

    move-result v3

    sub-int/2addr v3, v10

    if-eq v3, v9, :cond_191

    sub-int v2, v10, p2

    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    move-result-object v3

    goto/16 :goto_a

    :cond_10b
    if-eqz p4, :cond_113

    const/4 v4, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/a/b/a/e/j;->a(I)V

    :cond_113
    invoke-virtual {v8, v10}, Lcom/a/b/g/e;->f(I)I

    move-result v4

    add-int/lit8 v5, v10, 0x2

    invoke-virtual {v8, v5}, Lcom/a/b/g/e;->f(I)I

    move-result v5

    add-int/lit8 v6, v10, 0x4

    invoke-virtual {v8, v6}, Lcom/a/b/g/e;->f(I)I

    move-result v6

    add-int/lit8 v7, v10, 0x6

    invoke-virtual {v8, v7}, Lcom/a/b/g/e;->f(I)I

    move-result v7

    invoke-interface {v11, v7}, Lcom/a/b/e/c/b;->b(I)Lcom/a/b/e/c/a;

    move-result-object v7

    check-cast v7, Lcom/a/b/e/c/ae;

    invoke-virtual/range {v2 .. v7}, Lcom/a/b/a/b/h;->a(IIIILcom/a/b/e/c/ae;)V

    if-eqz p4, :cond_17a

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".."

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v7, :cond_18c

    const-string v4, "<any>"

    :goto_16b
    const/16 v6, 0x8

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v10, v6, v4}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_17a
    if-eqz p4, :cond_182

    const/4 v4, -0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/a/b/a/e/j;->a(I)V

    :cond_182
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v9, -0x8

    add-int/lit8 v5, v10, 0x8

    move v9, v4

    move v10, v5

    goto/16 :goto_e0

    :cond_18c
    invoke-virtual {v7}, Lcom/a/b/e/c/ae;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_16b

    :cond_191
    new-instance v3, Lcom/a/b/a/a/c;

    move v4, v12

    move v5, v13

    move-object v6, v14

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/a/b/a/a/c;-><init>(IILcom/a/b/a/b/k;Lcom/a/b/a/b/h;Lcom/a/b/a/e/b;)V

    goto/16 :goto_a
.end method

.method private e(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 11

    const/4 v5, 0x2

    if-eq p3, v5, :cond_8

    invoke-static {v5}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v0

    invoke-virtual {v2, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ag;

    new-instance v1, Lcom/a/b/a/a/d;

    invoke-direct {v1, v0}, Lcom/a/b/a/a/d;-><init>(Lcom/a/b/e/c/ag;)V

    if-eqz p4, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "value: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v5, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_33
    move-object v0, v1

    goto :goto_7
.end method

.method private f(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 6

    if-eqz p3, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/a/b/a/a/e;

    invoke-direct {v0}, Lcom/a/b/a/a/e;-><init>()V

    goto :goto_7
.end method

.method private g(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 12

    const/4 v0, 0x4

    const/4 v6, 0x2

    if-eq p3, v0, :cond_7

    invoke-static {v0}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    :cond_7
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v1

    invoke-virtual {v2, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    add-int/lit8 v3, p2, 0x2

    invoke-virtual {v2, v3}, Lcom/a/b/g/e;->f(I)I

    move-result v3

    invoke-interface {v1, v3}, Lcom/a/b/e/c/b;->b(I)Lcom/a/b/e/c/a;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/c/aa;

    new-instance v3, Lcom/a/b/a/a/f;

    invoke-direct {v3, v0, v1}, Lcom/a/b/a/a/f;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    if-eqz p4, :cond_56

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "class: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v6, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    add-int/lit8 v0, p2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "method: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/a/d/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, v0, v6, v1}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_56
    return-object v3
.end method

.method private h(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 10

    const/4 v4, 0x2

    if-ge p3, v4, :cond_8

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v1

    if-eqz p4, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "number_of_exceptions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0, p2, v4, v2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_28
    add-int/lit8 v0, p3, -0x2

    mul-int/lit8 v2, v1, 0x2

    if-eq v0, v2, :cond_35

    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    :cond_35
    new-instance v0, Lcom/a/b/a/a/g;

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/a/b/a/d/e;->a(II)Lcom/a/b/e/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/a/g;-><init>(Lcom/a/b/e/d/e;)V

    goto :goto_7
.end method

.method private i(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 20

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ge v0, v2, :cond_a

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    move-result-object v2

    :goto_9
    return-object v2

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/a/b/g/e;->f(I)I

    move-result v11

    if-eqz p4, :cond_35

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "number_of_classes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    move/from16 v1, p2

    invoke-interface {v0, v9, v1, v2, v3}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_35
    add-int/lit8 v2, p3, -0x2

    mul-int/lit8 v3, v11, 0x8

    if-eq v2, v3, :cond_42

    mul-int/lit8 v2, v11, 0x8

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    :cond_42
    new-instance v2, Lcom/a/b/a/a/x;

    invoke-direct {v2, v11}, Lcom/a/b/a/a/x;-><init>(I)V

    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x2

    move v8, v4

    :goto_4b
    if-lt v3, v11, :cond_57

    invoke-virtual {v2}, Lcom/a/b/a/a/x;->c_()V

    new-instance v3, Lcom/a/b/a/a/h;

    invoke-direct {v3, v2}, Lcom/a/b/a/a/h;-><init>(Lcom/a/b/a/a/x;)V

    move-object v2, v3

    goto :goto_9

    :cond_57
    invoke-virtual {v9, v8}, Lcom/a/b/g/e;->f(I)I

    move-result v4

    add-int/lit8 v5, v8, 0x2

    invoke-virtual {v9, v5}, Lcom/a/b/g/e;->f(I)I

    move-result v5

    add-int/lit8 v6, v8, 0x4

    invoke-virtual {v9, v6}, Lcom/a/b/g/e;->f(I)I

    move-result v6

    add-int/lit8 v7, v8, 0x6

    invoke-virtual {v9, v7}, Lcom/a/b/g/e;->f(I)I

    move-result v7

    invoke-interface {v10, v4}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v4

    check-cast v4, Lcom/a/b/e/c/ae;

    invoke-interface {v10, v5}, Lcom/a/b/e/c/b;->b(I)Lcom/a/b/e/c/a;

    move-result-object v5

    check-cast v5, Lcom/a/b/e/c/ae;

    invoke-interface {v10, v6}, Lcom/a/b/e/c/b;->b(I)Lcom/a/b/e/c/a;

    move-result-object v6

    check-cast v6, Lcom/a/b/e/c/ad;

    invoke-virtual/range {v2 .. v7}, Lcom/a/b/a/a/x;->a(ILcom/a/b/e/c/ae;Lcom/a/b/e/c/ae;Lcom/a/b/e/c/ad;I)V

    if-eqz p4, :cond_ee

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "inner_class: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/a/b/a/d/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v8, v12, v4}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    add-int/lit8 v4, v8, 0x2

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "  outer_class: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/a/b/a/d/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v4, v12, v5}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    add-int/lit8 v4, v8, 0x4

    const/4 v5, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "  name: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/a/b/a/d/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v4, v5, v6}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    add-int/lit8 v4, v8, 0x6

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "  access_flags: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/a/b/e/b/a;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-interface {v0, v9, v4, v5, v6}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_ee
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v8, 0x8

    move v8, v4

    goto/16 :goto_4b
.end method

.method private j(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 14

    const/4 v4, 0x2

    if-ge p3, v4, :cond_8

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v3

    if-eqz p4, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "line_number_table_length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2, p2, v4, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_28
    add-int/lit8 v1, p2, 0x2

    add-int/lit8 v0, p3, -0x2

    mul-int/lit8 v4, v3, 0x4

    if-eq v0, v4, :cond_37

    mul-int/lit8 v0, v3, 0x4

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    :cond_37
    new-instance v4, Lcom/a/b/a/b/r;

    invoke-direct {v4, v3}, Lcom/a/b/a/b/r;-><init>(I)V

    const/4 v0, 0x0

    :goto_3d
    if-lt v0, v3, :cond_48

    invoke-virtual {v4}, Lcom/a/b/a/b/r;->c_()V

    new-instance v0, Lcom/a/b/a/a/i;

    invoke-direct {v0, v4}, Lcom/a/b/a/a/i;-><init>(Lcom/a/b/a/b/r;)V

    goto :goto_7

    :cond_48
    invoke-virtual {v2, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v5

    add-int/lit8 v6, v1, 0x2

    invoke-virtual {v2, v6}, Lcom/a/b/g/e;->f(I)I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/a/b/a/b/r;->a(III)V

    if-eqz p4, :cond_76

    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v2, v1, v7, v5}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_76
    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method private k(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 12

    const/4 v3, 0x2

    if-ge p3, v3, :cond_8

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v4

    if-eqz p4, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local_variable_table_length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, v3, v1}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_28
    new-instance v6, Lcom/a/b/a/a/j;

    add-int/lit8 v1, p2, 0x2

    add-int v2, p2, p3

    invoke-virtual {v0, v1, v2}, Lcom/a/b/g/e;->a(II)Lcom/a/b/g/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/b/a/d/j;->a(Lcom/a/b/g/e;Lcom/a/b/e/c/b;Lcom/a/b/a/e/j;IZ)Lcom/a/b/a/b/t;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/a/b/a/a/j;-><init>(Lcom/a/b/a/b/t;)V

    move-object v0, v6

    goto :goto_7
.end method

.method private l(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 12

    const/4 v3, 0x2

    if-ge p3, v3, :cond_8

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v4

    if-eqz p4, :cond_28

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local_variable_type_table_length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, v3, v1}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_28
    new-instance v6, Lcom/a/b/a/a/k;

    add-int/lit8 v1, p2, 0x2

    add-int v2, p2, p3

    invoke-virtual {v0, v1, v2}, Lcom/a/b/g/e;->a(II)Lcom/a/b/g/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/b/a/d/j;->a(Lcom/a/b/g/e;Lcom/a/b/e/c/b;Lcom/a/b/a/e/j;IZ)Lcom/a/b/a/b/t;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/a/b/a/a/k;-><init>(Lcom/a/b/a/b/t;)V

    move-object v0, v6

    goto :goto_7
.end method

.method private m(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    :cond_6
    new-instance v0, Lcom/a/b/a/a/l;

    new-instance v1, Lcom/a/b/a/d/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/a/b/a/d/a;-><init>(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)V

    sget-object v2, Lcom/a/b/e/a/b;->b:Lcom/a/b/e/a/b;

    invoke-virtual {v1, v2}, Lcom/a/b/a/d/a;->b(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/c;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/a/b/a/a/l;-><init>(Lcom/a/b/e/a/c;I)V

    return-object v0
.end method

.method private n(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    :cond_6
    new-instance v0, Lcom/a/b/a/a/n;

    new-instance v1, Lcom/a/b/a/d/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/a/b/a/d/a;-><init>(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)V

    sget-object v2, Lcom/a/b/e/a/b;->a:Lcom/a/b/e/a/b;

    invoke-virtual {v1, v2}, Lcom/a/b/a/d/a;->b(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/c;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/a/b/a/a/n;-><init>(Lcom/a/b/e/a/c;I)V

    return-object v0
.end method

.method private o(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    :cond_6
    new-instance v0, Lcom/a/b/a/a/m;

    new-instance v1, Lcom/a/b/a/d/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/a/b/a/d/a;-><init>(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)V

    sget-object v2, Lcom/a/b/e/a/b;->b:Lcom/a/b/e/a/b;

    invoke-virtual {v1, v2}, Lcom/a/b/a/d/a;->a(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/a/b/a/a/m;-><init>(Lcom/a/b/e/a/d;I)V

    return-object v0
.end method

.method private p(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 8

    const/4 v0, 0x2

    if-ge p3, v0, :cond_6

    invoke-static {}, Lcom/a/b/a/d/j;->a()Lcom/a/b/a/e/a;

    :cond_6
    new-instance v0, Lcom/a/b/a/a/o;

    new-instance v1, Lcom/a/b/a/d/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/a/b/a/d/a;-><init>(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)V

    sget-object v2, Lcom/a/b/e/a/b;->a:Lcom/a/b/e/a/b;

    invoke-virtual {v1, v2}, Lcom/a/b/a/d/a;->a(Lcom/a/b/e/a/b;)Lcom/a/b/e/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/a/b/a/a/o;-><init>(Lcom/a/b/e/a/d;I)V

    return-object v0
.end method

.method private q(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 11

    const/4 v5, 0x2

    if-eq p3, v5, :cond_6

    invoke-static {v5}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    :cond_6
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v0

    invoke-virtual {v1, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    new-instance v2, Lcom/a/b/a/a/p;

    invoke-direct {v2, v0}, Lcom/a/b/a/a/p;-><init>(Lcom/a/b/e/c/ad;)V

    if-eqz p4, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "signature: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_31
    return-object v2
.end method

.method private r(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 10

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Lcom/a/b/g/e;->a(II)Lcom/a/b/g/e;

    move-result-object v0

    new-instance v1, Lcom/a/b/e/c/ad;

    invoke-direct {v1, v0}, Lcom/a/b/e/c/ad;-><init>(Lcom/a/b/g/e;)V

    new-instance v2, Lcom/a/b/a/a/q;

    invoke-direct {v2, v1}, Lcom/a/b/a/a/q;-><init>(Lcom/a/b/e/c/ad;)V

    if-eqz p4, :cond_2c

    invoke-virtual {v1}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sourceDebugExtension: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v0, p2, p3, v1}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_2c
    return-object v2
.end method

.method private s(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 11

    const/4 v5, 0x2

    if-eq p3, v5, :cond_6

    invoke-static {v5}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    :cond_6
    invoke-virtual {p1}, Lcom/a/b/a/d/e;->b()Lcom/a/b/g/e;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/b/a/d/e;->g()Lcom/a/b/e/c/b;

    move-result-object v0

    invoke-virtual {v1, p2}, Lcom/a/b/g/e;->f(I)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/a/b/e/c/b;->a(I)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    new-instance v2, Lcom/a/b/a/a/r;

    invoke-direct {v2, v0}, Lcom/a/b/a/a/r;-><init>(Lcom/a/b/e/c/ad;)V

    if-eqz p4, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "source: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, p2, v5, v0}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_31
    return-object v2
.end method

.method private t(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 6

    if-eqz p3, :cond_8

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/a/b/a/d/j;->a(I)Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lcom/a/b/a/a/s;

    invoke-direct {v0}, Lcom/a/b/a/a/s;-><init>()V

    goto :goto_7
.end method


# virtual methods
.method protected a(Lcom/a/b/a/d/e;ILjava/lang/String;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;
    .registers 8

    packed-switch p2, :pswitch_data_11c

    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/a/b/a/d/b;->a(Lcom/a/b/a/d/e;ILjava/lang/String;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8  #0x0
    const-string v0, "BootstrapMethods"

    if-ne p3, v0, :cond_11

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->c(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_11
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_1a

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->f(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_1a
    const-string v0, "EnclosingMethod"

    if-ne p3, v0, :cond_23

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->g(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_23
    const-string v0, "InnerClasses"

    if-ne p3, v0, :cond_2c

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->i(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_2c
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_35

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->m(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_35
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_3e

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->n(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_3e
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_47

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->t(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_47
    const-string v0, "Signature"

    if-ne p3, v0, :cond_50

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->q(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_50
    const-string v0, "SourceDebugExtension"

    if-ne p3, v0, :cond_59

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->r(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_59
    const-string v0, "SourceFile"

    if-ne p3, v0, :cond_3

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->s(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :pswitch_62  #0x1
    const-string v0, "ConstantValue"

    if-ne p3, v0, :cond_6b

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->e(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_6b
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_74

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->f(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_74
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_7d

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->m(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_7d
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_86

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->n(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto :goto_7

    :cond_86
    const-string v0, "Signature"

    if-ne p3, v0, :cond_90

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->q(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_90
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_3

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->t(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_9a  #0x2
    const-string v0, "AnnotationDefault"

    if-ne p3, v0, :cond_a4

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->b(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_a4
    const-string v0, "Code"

    if-ne p3, v0, :cond_ae

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->d(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_ae
    const-string v0, "Deprecated"

    if-ne p3, v0, :cond_b8

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->f(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_b8
    const-string v0, "Exceptions"

    if-ne p3, v0, :cond_c2

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->h(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_c2
    const-string v0, "RuntimeInvisibleAnnotations"

    if-ne p3, v0, :cond_cc

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->m(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_cc
    const-string v0, "RuntimeVisibleAnnotations"

    if-ne p3, v0, :cond_d6

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->n(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_d6
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    if-ne p3, v0, :cond_e0

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->o(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_e0
    const-string v0, "RuntimeVisibleParameterAnnotations"

    if-ne p3, v0, :cond_ea

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->p(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_ea
    const-string v0, "Signature"

    if-ne p3, v0, :cond_f4

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->q(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_f4
    const-string v0, "Synthetic"

    if-ne p3, v0, :cond_3

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->t(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_fe  #0x3
    const-string v0, "LineNumberTable"

    if-ne p3, v0, :cond_108

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->j(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_108
    const-string v0, "LocalVariableTable"

    if-ne p3, v0, :cond_112

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->k(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :cond_112
    const-string v0, "LocalVariableTypeTable"

    if-ne p3, v0, :cond_3

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/a/b/a/d/j;->l(Lcom/a/b/a/d/e;IILcom/a/b/a/e/j;)Lcom/a/b/a/e/a;

    move-result-object v0

    goto/16 :goto_7

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_8  #00000000
        :pswitch_62  #00000001
        :pswitch_9a  #00000002
        :pswitch_fe  #00000003
    .end packed-switch
.end method
