.class public La/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(La/ae;ZLa/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/s;
    .registers 14

    iget-object v0, p1, La/ae;->c:Ljava/lang/String;

    iget-object v1, p1, La/ae;->d:Ljava/lang/String;

    iget-object v2, p1, La/ae;->e:Ljava/lang/String;

    iget-object v3, p1, La/ae;->f:Ljava/util/List;

    const/4 v4, 0x0

    if-nez v0, :cond_d

    move-object v0, v4

    goto :goto_1b

    :cond_d
    new-instance v5, La/j/j;

    new-instance v6, La/j/c;

    invoke-direct {v6, p5}, La/j/c;-><init>(Ljava/util/List;)V

    invoke-direct {v5, v6}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v5, v0}, La/j/j;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    :goto_1b
    if-nez v1, :cond_1f

    move-object v5, v4

    goto :goto_2d

    :cond_1f
    new-instance v5, La/j/j;

    new-instance v6, La/j/o;

    invoke-direct {v6, p5}, La/j/o;-><init>(Ljava/util/List;)V

    invoke-direct {v5, v6}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v5, v1}, La/j/j;->a(Ljava/lang/String;)La/j/t;

    move-result-object v5

    :goto_2d
    if-nez v2, :cond_31

    move-object v6, v4

    goto :goto_3f

    :cond_31
    new-instance v6, La/j/j;

    new-instance v7, La/j/c;

    invoke-direct {v7, p5}, La/j/c;-><init>(Ljava/util/List;)V

    invoke-direct {v6, v7}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v6, v2}, La/j/j;->a(Ljava/lang/String;)La/j/t;

    move-result-object v6

    :goto_3f
    if-nez v3, :cond_42

    goto :goto_50

    :cond_42
    new-instance v4, La/j/j;

    new-instance v7, La/j/o;

    invoke-direct {v7, p5}, La/j/o;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v7}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v4, v3}, La/j/j;->a(Ljava/util/List;)La/j/t;

    move-result-object v4

    :goto_50
    if-eqz p4, :cond_6e

    if-eqz v4, :cond_5a

    new-instance p5, La/b/a/d/g;

    invoke-direct {p5, v4, p4}, La/b/a/d/g;-><init>(La/j/t;La/b/a/d/i;)V

    move-object p4, p5

    :cond_5a
    new-instance p5, La/b/g/av;

    const/4 v3, 0x2

    new-array v3, v3, [La/b/g/aq;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    new-instance p3, La/b/a/d/a;

    invoke-direct {p3, p4}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    const/4 p4, 0x1

    aput-object p3, v3, p4

    invoke-direct {p5, v3}, La/b/g/av;-><init>([La/b/g/aq;)V

    move-object p3, p5

    :cond_6e
    iget-object p4, p1, La/ae;->c:Ljava/lang/String;

    if-eqz p4, :cond_87

    new-instance p4, La/b/a/d/a;

    new-instance p5, La/b/a/a/b/a;

    new-instance v3, La/b/a/a/b/e;

    new-instance v4, La/b/a/a/b/d;

    invoke-direct {v4, p3}, La/b/a/a/b/d;-><init>(La/b/g/aq;)V

    invoke-direct {v3, v0, v4}, La/b/a/a/b/e;-><init>(La/j/t;La/b/a/a/b/f;)V

    invoke-direct {p5, v3}, La/b/a/a/b/a;-><init>(La/b/a/a/b/f;)V

    invoke-direct {p4, p5}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    move-object p3, p4

    :cond_87
    iget p4, p1, La/ae;->a:I

    if-nez p4, :cond_8f

    iget p4, p1, La/ae;->b:I

    if-eqz p4, :cond_99

    :cond_8f
    new-instance p4, La/b/g/ag;

    iget p5, p1, La/ae;->a:I

    iget p1, p1, La/ae;->b:I

    invoke-direct {p4, p5, p1, p3}, La/b/g/ag;-><init>(IILa/b/g/aq;)V

    move-object p3, p4

    :cond_99
    if-eqz v1, :cond_b7

    if-eqz v2, :cond_b7

    invoke-direct {p0, v1}, La/g;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b7

    invoke-direct {p0, v2}, La/g;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b7

    if-eqz p2, :cond_b1

    new-instance p1, La/b/g/ax;

    invoke-direct {p1, v1, v2, p3}, La/b/g/ax;-><init>(Ljava/lang/String;Ljava/lang/String;La/b/g/aq;)V

    goto :goto_d4

    :cond_b1
    new-instance p1, La/b/g/ay;

    invoke-direct {p1, v1, v2, p3}, La/b/g/ay;-><init>(Ljava/lang/String;Ljava/lang/String;La/b/g/aq;)V

    goto :goto_d4

    :cond_b7
    if-eqz v6, :cond_bf

    new-instance p1, La/b/g/am;

    invoke-direct {p1, v6, p3}, La/b/g/am;-><init>(La/j/t;La/b/g/aq;)V

    move-object p3, p1

    :cond_bf
    if-eqz v1, :cond_c7

    new-instance p1, La/b/g/ao;

    invoke-direct {p1, v5, p3}, La/b/g/ao;-><init>(La/j/t;La/b/g/aq;)V

    move-object p3, p1

    :cond_c7
    if-eqz p2, :cond_cf

    new-instance p1, La/b/g/b;

    invoke-direct {p1, p3}, La/b/g/b;-><init>(La/b/g/aq;)V

    goto :goto_d4

    :cond_cf
    new-instance p1, La/b/g/d;

    invoke-direct {p1, p3}, La/b/g/d;-><init>(La/b/g/aq;)V

    :goto_d4
    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/util/List;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/s;
    .registers 15

    new-instance v7, La/b/g/at;

    invoke-direct {v7}, La/b/g/at;-><init>()V

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, La/g;->a(Ljava/util/List;ZLa/b/g/at;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)V

    const/4 v2, 0x0

    move-object v1, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, La/g;->a(Ljava/util/List;ZLa/b/g/at;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)V

    new-instance v0, La/b/g/j;

    const/4 p2, 0x1

    const/4 p3, 0x1

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object p1, v0

    move-object p6, v7

    invoke-direct/range {p1 .. p6}, La/b/g/j;-><init>(ZZZZLa/b/g/s;)V

    return-object v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;La/b/g/s;Ljava/util/List;)La/b/g/s;
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, La/g;->a(Ljava/util/List;ZLa/b/g/s;Ljava/util/List;)La/b/g/s;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, La/g;->a(Ljava/util/List;ZLa/b/g/s;Ljava/util/List;)La/b/g/s;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;ZLa/b/g/s;Ljava/util/List;)La/b/g/s;
    .registers 13

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, La/ae;

    new-instance v5, La/b/g/ap;

    invoke-direct {v5, p3}, La/b/g/ap;-><init>(La/b/g/s;)V

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, La/g;->a(La/ae;ZLa/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/s;

    move-result-object p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_20
    return-object p3
.end method

.method private a(Ljava/util/List;ZLa/b/g/at;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)V
    .registers 15

    if-eqz p1, :cond_1f

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, La/ae;

    move-object v2, p0

    move v4, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, La/g;->a(La/ae;ZLa/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/s;

    move-result-object v1

    invoke-virtual {p3, v1}, La/b/g/at;->a(La/b/g/s;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1f
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_3a

    const/16 v0, 0x21

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_38

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_38

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_38

    const/16 v0, 0x25

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_38

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_38

    const-string v0, "///"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_38

    invoke-direct {p0, p1}, La/g;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3a

    :cond_38
    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_9

    goto :goto_1c

    :cond_9
    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x3e

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1c

    :try_start_13
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_1d

    :catch_1b
    move-exception p1

    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    :goto_1d
    return v1
.end method


# virtual methods
.method protected a(La/f;La/b/g/n;Ljava/util/List;)La/b/g/n;
    .registers 7

    new-instance v0, La/b/g/l;

    invoke-direct {v0, p2}, La/b/g/l;-><init>(La/b/g/n;)V

    new-instance p2, La/b/g/as;

    const/4 v1, 0x2

    new-array v1, v1, [La/b/g/n;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, p3}, La/g;->a(La/f;La/b/g/s;Ljava/util/List;)La/b/g/n;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-direct {p2, v1}, La/b/g/as;-><init>([La/b/g/n;)V

    return-object p2
.end method

.method protected a(La/f;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/n;
    .registers 30

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v8, p6

    iget-object v0, v10, La/f;->e:Ljava/lang/String;

    iget-object v11, v10, La/f;->d:Ljava/lang/String;

    iget-object v12, v10, La/f;->f:Ljava/lang/String;

    iget-object v13, v10, La/f;->g:Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "**"

    :cond_12
    move-object v14, v0

    if-nez v11, :cond_17

    const/4 v7, 0x0

    goto :goto_26

    :cond_17
    new-instance v0, La/j/j;

    new-instance v1, La/j/c;

    invoke-direct {v1, v8}, La/j/c;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v0, v11}, La/j/j;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    move-object v7, v0

    :goto_26
    new-instance v0, La/j/j;

    new-instance v1, La/j/c;

    invoke-direct {v1, v8}, La/j/c;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v0, v14}, La/j/j;->a(Ljava/lang/String;)La/j/t;

    move-result-object v6

    if-nez v12, :cond_38

    const/4 v5, 0x0

    goto :goto_47

    :cond_38
    new-instance v0, La/j/j;

    new-instance v1, La/j/c;

    invoke-direct {v1, v8}, La/j/c;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v0, v12}, La/j/j;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    move-object v5, v0

    :goto_47
    if-nez v13, :cond_4b

    const/4 v4, 0x0

    goto :goto_5a

    :cond_4b
    new-instance v0, La/j/j;

    new-instance v1, La/j/c;

    invoke-direct {v1, v8}, La/j/c;-><init>(Ljava/util/List;)V

    invoke-direct {v0, v1}, La/j/j;-><init>(La/j/u;)V

    invoke-virtual {v0, v13}, La/j/j;->a(Ljava/lang/String;)La/j/t;

    move-result-object v0

    move-object v4, v0

    :goto_5a
    iget-object v1, v10, La/f;->h:Ljava/util/List;

    iget-object v2, v10, La/f;->i:Ljava/util/List;

    iget-object v3, v10, La/f;->j:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v15, v4

    move-object/from16 v4, p2

    move-object/from16 v16, v15

    move-object v15, v5

    move-object/from16 v5, p3

    move-object/from16 p2, v15

    move-object v15, v6

    move-object/from16 v6, p4

    move-object v10, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, La/g;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/s;

    move-result-object v0

    if-nez v12, :cond_82

    if-nez v13, :cond_82

    invoke-direct {v9, v14}, La/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    :cond_82
    new-instance v1, La/b/g/k;

    invoke-direct {v1, v15, v0}, La/b/g/k;-><init>(La/j/t;La/b/g/s;)V

    move-object v0, v1

    const/4 v14, 0x0

    :cond_89
    if-eqz v11, :cond_a0

    new-instance v1, La/b/a/d/a;

    new-instance v2, La/b/a/a/b/a;

    new-instance v3, La/b/a/a/b/e;

    new-instance v4, La/b/a/a/b/c;

    invoke-direct {v4, v0}, La/b/a/a/b/c;-><init>(La/b/g/s;)V

    invoke-direct {v3, v10, v4}, La/b/a/a/b/e;-><init>(La/j/t;La/b/a/a/b/f;)V

    invoke-direct {v2, v3}, La/b/a/a/b/a;-><init>(La/b/a/a/b/f;)V

    invoke-direct {v1, v2}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    move-object v0, v1

    :cond_a0
    move-object/from16 v1, p1

    iget v2, v1, La/f;->b:I

    if-nez v2, :cond_ae

    iget v2, v1, La/f;->c:I

    if-eqz v2, :cond_ab

    goto :goto_ae

    :cond_ab
    move-object/from16 v22, v0

    goto :goto_b9

    :cond_ae
    :goto_ae
    new-instance v2, La/b/g/f;

    iget v3, v1, La/f;->b:I

    iget v1, v1, La/f;->c:I

    invoke-direct {v2, v3, v1, v0}, La/b/g/f;-><init>(IILa/b/g/s;)V

    move-object/from16 v22, v2

    :goto_b9
    if-nez v12, :cond_c2

    if-eqz v13, :cond_be

    goto :goto_c2

    :cond_be
    move-object v13, v14

    move-object/from16 v0, v22

    goto :goto_fb

    :cond_c2
    :goto_c2
    new-instance v0, La/b/g/j;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, La/b/g/j;-><init>(ZZZZLa/b/g/s;)V

    if-eqz v12, :cond_ea

    new-instance v1, La/b/a/d/a;

    new-instance v2, La/b/a/a/b/a;

    new-instance v3, La/b/a/a/b/e;

    new-instance v4, La/b/a/a/b/c;

    invoke-direct {v4, v0}, La/b/a/a/b/c;-><init>(La/b/g/s;)V

    move-object/from16 v15, p2

    invoke-direct {v3, v15, v4}, La/b/a/a/b/e;-><init>(La/j/t;La/b/a/a/b/f;)V

    invoke-direct {v2, v3}, La/b/a/a/b/a;-><init>(La/b/a/a/b/f;)V

    invoke-direct {v1, v2}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    move-object v0, v1

    :cond_ea
    if-eqz v13, :cond_fa

    invoke-direct {v9, v13}, La/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    new-instance v1, La/b/g/k;

    move-object/from16 v15, v16

    invoke-direct {v1, v15, v0}, La/b/g/k;-><init>(La/j/t;La/b/g/s;)V

    move-object v0, v1

    :cond_fa
    move-object v13, v14

    :cond_fb
    :goto_fb
    if-eqz v13, :cond_103

    new-instance v1, La/b/g/aw;

    invoke-direct {v1, v0, v13}, La/b/g/aw;-><init>(La/b/g/s;Ljava/lang/String;)V

    goto :goto_108

    :cond_103
    new-instance v1, La/b/g/a;

    invoke-direct {v1, v0}, La/b/g/a;-><init>(La/b/g/s;)V

    :goto_108
    return-object v1
.end method

.method protected a(La/f;La/b/g/s;Ljava/util/List;)La/b/g/n;
    .registers 12

    new-instance v7, La/b/g/at;

    invoke-direct {v7}, La/b/g/at;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, La/g;->a(La/f;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/n;

    move-result-object v0

    iget-object v1, p1, La/f;->i:Ljava/util/List;

    iget-object p1, p1, La/f;->j:Ljava/util/List;

    invoke-direct {p0, v1, p1, p2, p3}, La/g;->a(Ljava/util/List;Ljava/util/List;La/b/g/s;Ljava/util/List;)La/b/g/s;

    move-result-object p1

    invoke-virtual {v7, p1}, La/b/g/at;->a(La/b/g/s;)V

    return-object v0
.end method

.method public a(Ljava/util/List;La/b/g/s;La/b/g/aq;)La/b/g/n;
    .registers 10

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, La/g;->a(Ljava/util/List;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;)La/b/g/n;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;)La/b/g/n;
    .registers 16

    new-instance v0, La/b/g/as;

    invoke-direct {v0}, La/b/g/as;-><init>()V

    if-eqz p1, :cond_25

    const/4 v1, 0x0

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, La/f;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v9}, La/g;->a(La/f;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/n;

    move-result-object v2

    invoke-virtual {v0, v2}, La/b/g/as;->a(La/b/g/n;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_25
    return-object v0
.end method

.method protected a(Ljava/util/List;Ljava/util/List;Ljava/util/List;La/b/g/s;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/s;
    .registers 20

    move-object v0, p1

    move-object v1, p4

    move-object/from16 v2, p7

    const/4 v3, 0x0

    if-nez p2, :cond_9

    move-object v7, v3

    goto :goto_b

    :cond_9
    move-object/from16 v7, p5

    :goto_b
    if-nez p3, :cond_f

    move-object v8, v3

    goto :goto_11

    :cond_f
    move-object/from16 v8, p6

    :goto_11
    new-instance v3, La/b/g/at;

    invoke-direct {v3}, La/b/g/at;-><init>()V

    if-eqz v1, :cond_23

    if-nez v7, :cond_20

    if-nez v8, :cond_20

    if-nez v2, :cond_20

    move-object v0, v1

    goto :goto_4a

    :cond_20
    invoke-virtual {v3, p4}, La/b/g/at;->a(La/b/g/s;)V

    :cond_23
    if-eqz v2, :cond_35

    if-eqz v0, :cond_2d

    new-instance v4, La/b/a/d/g;

    invoke-direct {v4, p1, v2}, La/b/a/d/g;-><init>(Ljava/util/List;La/b/a/d/i;)V

    move-object v2, v4

    :cond_2d
    new-instance v0, La/b/a/d/a;

    invoke-direct {v0, v2}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-virtual {v3, v0}, La/b/g/at;->a(La/b/g/s;)V

    :cond_35
    move-object v9, v2

    if-nez v7, :cond_3a

    if-eqz v8, :cond_49

    :cond_3a
    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v10, p8

    invoke-direct/range {v4 .. v10}, La/g;->a(Ljava/util/List;Ljava/util/List;La/b/g/aq;La/b/g/aq;La/b/a/d/i;Ljava/util/List;)La/b/g/s;

    move-result-object v0

    if-nez v1, :cond_46

    goto :goto_4a

    :cond_46
    invoke-virtual {v3, v0}, La/b/g/at;->a(La/b/g/s;)V

    :cond_49
    move-object v0, v3

    :goto_4a
    return-object v0
.end method
