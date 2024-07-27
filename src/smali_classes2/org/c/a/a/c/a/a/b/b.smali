.class public Lorg/c/a/a/c/a/a/b/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;)Ljava/util/List;
    .registers 14

    invoke-virtual {p3}, Lorg/c/a/a/b/a/a;->g()[Lorg/c/a/a/b/a/c;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/c/a/a/d/c;

    array-length v1, v2

    invoke-direct {v0, v1}, Lorg/c/a/a/d/c;-><init>(I)V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p0, p2, v4}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/c;)Lorg/c/a/a/b/d/c/d;

    move-result-object v5

    invoke-virtual {p1, v4}, Lorg/c/a/a/c/a/a/c/ac;->a(Lorg/c/a/a/b/a/c;)Lorg/c/a/a/b/d/e/l;

    move-result-object v6

    invoke-virtual {p0, v4, v6}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/b/a/c;Lorg/c/a/a/b/d/e/l;)Lorg/c/a/a/b/d/a/p;

    move-result-object v7

    new-instance v8, Lorg/c/a/a/b/d/a/r;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/c;->b()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lorg/c/a/a/b/d/a/r;-><init>(Ljava/lang/String;Lorg/c/a/a/b/d/a/aj;)V

    new-instance v7, Lorg/c/a/a/c/a/a/a/b/a/h;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/c;->a()I

    move-result v4

    invoke-direct {v7, v5, v4, v6, v8}, Lorg/c/a/a/c/a/a/a/b/a/h;-><init>(Lorg/c/a/a/b/d/c/d;ILorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/a/d;)V

    invoke-virtual {v0, v7}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected a(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/a/a;)Ljava/util/List;
    .registers 32

    invoke-virtual/range {p4 .. p4}, Lorg/c/a/a/b/a/a;->h()[Lorg/c/a/a/b/a/d;

    move-result-object v25

    if-nez v25, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v23, Lorg/c/a/a/d/c;

    move-object/from16 v0, v25

    array-length v2, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lorg/c/a/a/d/c;-><init>(I)V

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/4 v2, 0x0

    move/from16 v24, v2

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    move-object/from16 v2, v23

    goto :goto_0

    :cond_1
    aget-object v5, v25, v24

    invoke-virtual {v5}, Lorg/c/a/a/b/a/d;->b()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/d;)Lorg/c/a/a/b/d/c/d;

    move-result-object v6

    const-string v2, "AnnotationDefault"

    invoke-virtual {v5, v2}, Lorg/c/a/a/b/a/d;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/a/a/d;

    const/16 v21, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a/d;->a()Lorg/c/a/a/b/a/a/x;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/c/a/a/c/a/a/c/b;->a(Lorg/c/a/a/b/a/a/x;)Lorg/c/a/a/b/d/c/g;

    move-result-object v21

    :cond_2
    const-string v2, "Code"

    invoke-virtual {v5, v2}, Lorg/c/a/a/b/a/d;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/a/a/f;

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    const-string v3, "LineNumberTable"

    invoke-virtual {v2, v3}, Lorg/c/a/a/b/a/a/f;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/a/a/k;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a/k;->a()[Lorg/c/a/a/b/a/a/ag;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a/ag;->b()I

    move-result v10

    :cond_3
    const-string v2, "<init>"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/c/a/a/c/a/a/c/ac;->a(Lorg/c/a/a/b/a/d;)Lorg/c/a/a/c/a/a/c/ad;

    move-result-object v3

    new-instance v2, Lorg/c/a/a/c/a/a/a/b/a/d;

    iget-object v7, v3, Lorg/c/a/a/c/a/a/c/ad;->a:Lorg/c/a/a/b/d/e/f;

    iget-object v8, v3, Lorg/c/a/a/c/a/a/c/ad;->b:Ljava/util/List;

    iget-object v9, v3, Lorg/c/a/a/c/a/a/c/ad;->d:Lorg/c/a/a/b/d/e/d;

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v10}, Lorg/c/a/a/c/a/a/a/b/a/d;-><init>(Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/b/a/d;Lorg/c/a/a/b/d/c/d;Lorg/c/a/a/b/d/e/f;Ljava/util/List;Lorg/c/a/a/b/d/e/d;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v2, v24, 0x1

    move/from16 v24, v2

    goto :goto_1

    :cond_5
    const-string v2, "<clinit>"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lorg/c/a/a/c/a/a/a/b/a/m;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v2, v0, v1, v5, v10}, Lorg/c/a/a/c/a/a/a/b/a/m;-><init>(Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/b/a/d;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/c/a/a/c/a/a/c/ac;->b(Lorg/c/a/a/b/a/d;)Lorg/c/a/a/c/a/a/c/ad;

    move-result-object v2

    new-instance v11, Lorg/c/a/a/c/a/a/a/b/a/l;

    iget-object v0, v2, Lorg/c/a/a/c/a/a/c/ad;->a:Lorg/c/a/a/b/d/e/f;

    move-object/from16 v17, v0

    iget-object v0, v2, Lorg/c/a/a/c/a/a/c/ad;->c:Lorg/c/a/a/b/d/e/l;

    move-object/from16 v18, v0

    iget-object v0, v2, Lorg/c/a/a/c/a/a/c/ad;->b:Ljava/util/List;

    move-object/from16 v19, v0

    iget-object v0, v2, Lorg/c/a/a/c/a/a/c/ad;->d:Lorg/c/a/a/b/d/e/d;

    move-object/from16 v20, v0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v14, v5

    move-object v15, v6

    move/from16 v22, v10

    invoke-direct/range {v11 .. v22}, Lorg/c/a/a/c/a/a/a/b/a/l;-><init>(Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/b/a/d;Lorg/c/a/a/b/d/c/d;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/l;Ljava/util/List;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/b/d/c/g;I)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p4 .. p4}, Lorg/c/a/a/b/a/a;->c()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4

    invoke-virtual {v11}, Lorg/c/a/a/c/a/a/a/b/a/l;->a()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const v2, 0x10001

    invoke-virtual {v11, v2}, Lorg/c/a/a/c/a/a/a/b/a/l;->a(I)V

    goto :goto_2
.end method

.method protected a([Lorg/c/a/a/b/a/a/ak;)Ljava/util/List;
    .registers 9

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lorg/c/a/a/d/c;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/c/a/a/d/c;-><init>(I)V

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    new-instance v4, Lorg/c/a/a/b/d/a/ae;

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/ak;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/ak;->b()I

    move-result v6

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/ak;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lorg/c/a/a/b/d/a/ae;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected a([Lorg/c/a/a/b/a/a/al;)Ljava/util/List;
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/c/a/a/d/c;

    array-length v2, p1

    invoke-direct {v1, v2}, Lorg/c/a/a/d/c;-><init>(I)V

    array-length v4, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v5, p1, v3

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/al;->c()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v0

    :goto_2
    new-instance v6, Lorg/c/a/a/b/d/a/af;

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/al;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/al;->b()I

    move-result v5

    invoke-direct {v6, v7, v5, v2}, Lorg/c/a/a/b/d/a/af;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v1, v6}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/c/a/a/d/c;

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/al;->c()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/c/a/a/d/c;-><init>([Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected a([Lorg/c/a/a/b/a/a/am;)Ljava/util/List;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Lorg/c/a/a/d/c;

    array-length v2, p1

    invoke-direct {v1, v2}, Lorg/c/a/a/d/c;-><init>(I)V

    array-length v4, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    aget-object v5, p1, v3

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/am;->b()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v0

    :goto_2
    new-instance v6, Lorg/c/a/a/b/d/a/ag;

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/am;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v2}, Lorg/c/a/a/b/d/a/ag;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v6}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    new-instance v2, Lorg/c/a/a/d/c;

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/am;->b()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/c/a/a/d/c;-><init>([Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected a(Lorg/c/a/a/b/a/a;)Lorg/c/a/a/b/d/a/ad;
    .registers 12

    const-string v0, "Module"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/a/a;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/c/a/a/b/a/a/o;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/a/o;->d()[Lorg/c/a/a/b/a/a/ak;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/b/b;->a([Lorg/c/a/a/b/a/a/ak;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lorg/c/a/a/b/a/a/o;->e()[Lorg/c/a/a/b/a/a/al;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/b/b;->a([Lorg/c/a/a/b/a/a/al;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4}, Lorg/c/a/a/b/a/a/o;->f()[Lorg/c/a/a/b/a/a/al;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/b/b;->a([Lorg/c/a/a/b/a/a/al;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Lorg/c/a/a/d/c;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/a/o;->g()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/c/a/a/d/c;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v4}, Lorg/c/a/a/b/a/a/o;->h()[Lorg/c/a/a/b/a/a/am;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/c/a/a/c/a/a/b/b;->a([Lorg/c/a/a/b/a/a/am;)Ljava/util/List;

    move-result-object v9

    new-instance v0, Lorg/c/a/a/b/d/a/ad;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/a/o;->b()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/b/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lorg/c/a/a/b/a/a/o;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lorg/c/a/a/b/a/a/o;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v9}, Lorg/c/a/a/b/d/a/ad;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected a(Lorg/c/a/a/b/a/c;Lorg/c/a/a/b/d/e/l;)Lorg/c/a/a/b/d/a/p;
    .registers 7

    const-string v0, "ConstantValue"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/a/c;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/c/a/a/b/a/a/g;->a()Lorg/c/a/a/b/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/m;->a()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lorg/c/a/a/c/a/a/b/a;

    const-string v1, "Invalid attributes"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/a/a/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v1, Lorg/c/a/a/b/d/b/t;

    check-cast v0, Lorg/c/a/a/b/a/b/e;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/e;->b()I

    move-result v0

    invoke-direct {v1, p2, v0}, Lorg/c/a/a/b/d/b/t;-><init>(Lorg/c/a/a/b/d/e/l;I)V

    :goto_1
    new-instance v0, Lorg/c/a/a/b/d/a/p;

    invoke-direct {v0, v1}, Lorg/c/a/a/b/d/a/p;-><init>(Lorg/c/a/a/b/d/b/n;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Lorg/c/a/a/b/d/b/r;

    check-cast v0, Lorg/c/a/a/b/a/b/d;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/d;->b()F

    move-result v0

    invoke-direct {v1, v0}, Lorg/c/a/a/b/d/b/r;-><init>(F)V

    goto :goto_1

    :pswitch_3
    new-instance v1, Lorg/c/a/a/b/d/b/x;

    check-cast v0, Lorg/c/a/a/b/a/b/f;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/f;->b()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/c/a/a/b/d/b/x;-><init>(J)V

    goto :goto_1

    :pswitch_4
    new-instance v1, Lorg/c/a/a/b/d/b/l;

    check-cast v0, Lorg/c/a/a/b/a/b/c;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/c;->b()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/c/a/a/b/d/b/l;-><init>(D)V

    goto :goto_1

    :pswitch_5
    new-instance v1, Lorg/c/a/a/b/d/b/ah;

    check-cast v0, Lorg/c/a/a/b/a/b/l;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/c/a/a/b/d/b/ah;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;)Lorg/c/a/a/b/d/c/d;
    .registers 5

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/a/a;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/b;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p2, v1}, Lorg/c/a/a/b/a/a;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/a/a/b;

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/c/a/a/c/b;->a(Lorg/c/a/a/b/a/a/b;Lorg/c/a/a/b/a/a/b;)Lorg/c/a/a/b/d/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/c;)Lorg/c/a/a/b/d/c/d;
    .registers 5

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/a/c;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/b;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p2, v1}, Lorg/c/a/a/b/a/c;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/a/a/b;

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/c/a/a/c/b;->a(Lorg/c/a/a/b/a/a/b;Lorg/c/a/a/b/a/a/b;)Lorg/c/a/a/b/d/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/d;)Lorg/c/a/a/b/d/c/d;
    .registers 5

    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/a/d;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a/b;

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-virtual {p2, v1}, Lorg/c/a/a/b/a/d;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/b/a/a/b;

    invoke-virtual {p1, v0, v1}, Lorg/c/a/a/c/a/a/c/b;->a(Lorg/c/a/a/b/a/a/b;Lorg/c/a/a/b/a/a/b;)Lorg/c/a/a/b/d/c/d;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/j;
    .registers 13

    invoke-virtual {p0, p2, p3}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;)Lorg/c/a/a/b/d/c/d;

    move-result-object v1

    invoke-virtual {p1, p3}, Lorg/c/a/a/c/a/a/c/ac;->a(Lorg/c/a/a/b/a/a;)Lorg/c/a/a/c/a/a/c/af;

    move-result-object v6

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/c/a/a/c/a/a/b/b;->e(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/b;

    move-result-object v7

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/a/j;

    invoke-virtual {p3}, Lorg/c/a/a/b/a/a;->c()I

    move-result v2

    iget-object v3, v6, Lorg/c/a/a/c/a/a/c/af;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lorg/c/a/a/c/a/a/c/af;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v4}, Lorg/c/a/a/b/d/e/i;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lorg/c/a/a/c/a/a/c/af;->b:Lorg/c/a/a/b/d/e/f;

    iget-object v6, v6, Lorg/c/a/a/c/a/a/c/af;->d:Lorg/c/a/a/b/d/e/d;

    invoke-direct/range {v0 .. v7}, Lorg/c/a/a/c/a/a/a/b/a/j;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/c/a/a/a/b/a/b;)V

    return-object v0
.end method

.method public a(Lorg/c/a/a/b/e/a;)V
    .registers 8

    const/4 v5, 0x0

    const-string v0, "objectTypeMaker"

    invoke-virtual {p1, v0}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/c/a/a/c/w;

    const-string v1, "signatureParser"

    invoke-virtual {p1, v1}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/c/a/a/c/a/a/c/ac;

    invoke-virtual {p1}, Lorg/c/a/a/b/e/a;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/a/a;

    new-instance v3, Lorg/c/a/a/c/a/a/c/b;

    invoke-direct {v3, v0}, Lorg/c/a/a/c/a/a/c/b;-><init>(Lorg/c/a/a/c/a/a/c/w;)V

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a;->c()I

    move-result v0

    and-int/lit16 v4, v0, 0x4000

    if-eqz v4, :cond_0

    invoke-virtual {p0, v1, v3, v2, v5}, Lorg/c/a/a/c/a/a/b/b;->b(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/f;

    move-result-object v0

    :goto_0
    const-string v1, "majorVersion"

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lorg/c/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "minorVersion"

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/c/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/c/a/a/b/d/b;

    invoke-direct {v1, v0}, Lorg/c/a/a/b/d/b;-><init>(Lorg/c/a/a/b/d/a/h;)V

    invoke-virtual {p1, v1}, Lorg/c/a/a/b/e/a;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    and-int/lit16 v4, v0, 0x2000

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1, v3, v2, v5}, Lorg/c/a/a/c/a/a/b/b;->c(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v4, 0x8000

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/b/a/a;)Lorg/c/a/a/b/d/a/ad;

    move-result-object v0

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, v3, v2, v5}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, v3, v2, v5}, Lorg/c/a/a/c/a/a/b/b;->d(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/c;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/f;
    .registers 12

    invoke-virtual {p0, p2, p3}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;)Lorg/c/a/a/b/d/c/d;

    move-result-object v1

    invoke-virtual {p1, p3}, Lorg/c/a/a/c/a/a/c/ac;->a(Lorg/c/a/a/b/a/a;)Lorg/c/a/a/c/a/a/c/af;

    move-result-object v5

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/c/a/a/c/a/a/b/b;->e(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/b;

    move-result-object v6

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/a/f;

    invoke-virtual {p3}, Lorg/c/a/a/b/a/a;->c()I

    move-result v2

    iget-object v3, v5, Lorg/c/a/a/c/a/a/c/af;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lorg/c/a/a/c/a/a/c/af;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v4}, Lorg/c/a/a/b/d/e/i;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lorg/c/a/a/c/a/a/c/af;->d:Lorg/c/a/a/b/d/e/d;

    invoke-direct/range {v0 .. v6}, Lorg/c/a/a/c/a/a/a/b/a/f;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/c/a/a/a/b/a/b;)V

    return-object v0
.end method

.method protected c(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/a;
    .registers 11

    invoke-virtual {p0, p2, p3}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;)Lorg/c/a/a/b/d/c/d;

    move-result-object v1

    invoke-virtual {p1, p3}, Lorg/c/a/a/c/a/a/c/ac;->a(Lorg/c/a/a/b/a/a;)Lorg/c/a/a/c/a/a/c/af;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/c/a/a/c/a/a/b/b;->e(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/b;

    move-result-object v5

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/a/a;

    invoke-virtual {p3}, Lorg/c/a/a/b/a/a;->c()I

    move-result v2

    iget-object v3, v4, Lorg/c/a/a/c/a/a/c/af;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v4, Lorg/c/a/a/c/a/a/c/af;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v4}, Lorg/c/a/a/b/d/e/i;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/c/a/a/a/b/a/a;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/c/a/a/a/b/a/b;)V

    return-object v0
.end method

.method protected d(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/c;
    .registers 14

    invoke-virtual {p0, p2, p3}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;)Lorg/c/a/a/b/d/c/d;

    move-result-object v1

    invoke-virtual {p1, p3}, Lorg/c/a/a/c/a/a/c/ac;->a(Lorg/c/a/a/b/a/a;)Lorg/c/a/a/c/a/a/c/af;

    move-result-object v7

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/c/a/a/c/a/a/b/b;->e(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/b;

    move-result-object v8

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/a/c;

    invoke-virtual {p3}, Lorg/c/a/a/b/a/a;->c()I

    move-result v2

    iget-object v3, v7, Lorg/c/a/a/c/a/a/c/af;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v3}, Lorg/c/a/a/b/d/e/i;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lorg/c/a/a/c/a/a/c/af;->a:Lorg/c/a/a/b/d/e/i;

    invoke-virtual {v4}, Lorg/c/a/a/b/d/e/i;->j()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lorg/c/a/a/c/a/a/c/af;->b:Lorg/c/a/a/b/d/e/f;

    iget-object v6, v7, Lorg/c/a/a/c/a/a/c/af;->c:Lorg/c/a/a/b/d/e/l;

    iget-object v7, v7, Lorg/c/a/a/c/a/a/c/af;->d:Lorg/c/a/a/b/d/e/d;

    invoke-direct/range {v0 .. v8}, Lorg/c/a/a/c/a/a/a/b/a/c;-><init>(Lorg/c/a/a/b/d/c/d;ILjava/lang/String;Ljava/lang/String;Lorg/c/a/a/b/d/e/f;Lorg/c/a/a/b/d/e/l;Lorg/c/a/a/b/d/e/d;Lorg/c/a/a/c/a/a/a/b/a/b;)V

    return-object v0
.end method

.method protected e(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/b;
    .registers 7

    new-instance v0, Lorg/c/a/a/c/a/a/a/b/a/b;

    invoke-virtual {p3}, Lorg/c/a/a/b/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lorg/c/a/a/c/a/a/a/b/a/b;-><init>(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/b/a/b;)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/b/a/b;->a(Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/c/a/a/a/b/a/b;Lorg/c/a/a/b/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/b/a/b;->b(Ljava/util/List;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/c/a/a/c/a/a/b/b;->f(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/c/a/a/c/a/a/a/b/a/b;->c(Ljava/util/List;)V

    return-object v0
.end method

.method protected f(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Ljava/util/List;
    .registers 10

    invoke-virtual {p3}, Lorg/c/a/a/b/a/a;->j()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/c/a/a/d/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/c/a/a/d/c;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/a;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/a;->c()I

    move-result v3

    and-int/lit16 v4, v3, 0x4000

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/c/a/a/c/a/a/b/b;->b(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/f;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    and-int/lit16 v4, v3, 0x2000

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/c/a/a/c/a/a/b/b;->c(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/a;

    move-result-object v0

    goto :goto_2

    :cond_3
    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/c/a/a/c/a/a/b/b;->a(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/j;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/c/a/a/c/a/a/b/b;->d(Lorg/c/a/a/c/a/a/c/ac;Lorg/c/a/a/c/a/a/c/b;Lorg/c/a/a/b/a/a;Lorg/c/a/a/c/a/a/a/b/a/b;)Lorg/c/a/a/c/a/a/a/b/a/c;

    move-result-object v0

    goto :goto_2
.end method
