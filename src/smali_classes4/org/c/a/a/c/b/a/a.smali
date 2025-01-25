.class public Lorg/c/a/a/c/b/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/a/a/a;Ljava/lang/String;)Lorg/c/a/a/b/a/a;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->b(Lorg/c/a/a/a/a/a;Ljava/lang/String;)Lorg/c/a/a/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/c/a/a/c/b/a/c;)Lorg/c/a/a/b/a/a;
    .registers 12

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->d()I

    move-result v0

    const v1, -0x35014542  # -8346975.0f

    if-eq v0, v1, :cond_11

    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid CLASS file"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    new-instance v9, Lorg/c/a/a/b/a/b;

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/b/a/a;->b(Lorg/c/a/a/c/b/a/c;)[Lorg/c/a/a/b/a/b/a;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/c/a/a/b/a/b;-><init>([Lorg/c/a/a/b/a/b/a;)V

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-virtual {v9, v0}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_4b

    const/4 v5, 0x0

    :goto_35
    new-instance v0, Lorg/c/a/a/b/a/a;

    invoke-virtual {p0, p1, v9}, Lorg/c/a/a/c/b/a/a;->a(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v9}, Lorg/c/a/a/c/b/a/a;->b(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/c;

    move-result-object v7

    invoke-virtual {p0, p1, v9}, Lorg/c/a/a/c/b/a/a;->c(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/d;

    move-result-object v8

    invoke-virtual {p0, p1, v9}, Lorg/c/a/a/c/b/a/a;->d(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Ljava/util/HashMap;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lorg/c/a/a/b/a/a;-><init>(IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/c/a/a/b/a/c;[Lorg/c/a/a/b/a/d;Ljava/util/Map;)V

    return-object v0

    :cond_4b
    invoke-virtual {v9, v5}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_35
.end method

.method protected a(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public b(Lorg/c/a/a/a/a/a;Ljava/lang/String;)Lorg/c/a/a/b/a/a;
    .registers 22

    invoke-interface/range {p1 .. p2}, Lorg/c/a/a/a/a/a;->b(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    :goto_7
    return-object v2

    :cond_8
    new-instance v3, Lorg/c/a/a/c/b/a/c;

    invoke-direct {v3, v2}, Lorg/c/a/a/c/b/a/c;-><init>([B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/c/a/a/c/b/a/a;->a(Lorg/c/a/a/c/b/a/c;)Lorg/c/a/a/b/a/a;

    move-result-object v12

    const-string v2, "InnerClasses"

    invoke-virtual {v12, v2}, Lorg/c/a/a/b/a/a;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v2

    check-cast v2, Lorg/c/a/a/b/a/a/j;

    if-eqz v2, :cond_4d

    new-instance v15, Lorg/c/a/a/d/c;

    invoke-direct {v15}, Lorg/c/a/a/d/c;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lorg/c/a/a/b/a/a/j;->a()[Lorg/c/a/a/b/a/a/af;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v2, 0x0

    move v13, v2

    :goto_40
    move/from16 v0, v18

    if-lt v13, v0, :cond_4f

    invoke-virtual {v15}, Lorg/c/a/a/d/c;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4d

    invoke-virtual {v12, v15}, Lorg/c/a/a/b/a/a;->a(Ljava/util/List;)V

    :cond_4d
    move-object v2, v12

    goto :goto_7

    :cond_4f
    aget-object v5, v17, v13

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/af;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c9

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/af;->b()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/af;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c9

    :cond_75
    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/af;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/c/a/a/c/b/a/a;->b(Lorg/c/a/a/a/a/a;Ljava/lang/String;)Lorg/c/a/a/b/a/a;

    move-result-object v3

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/af;->c()I

    move-result v4

    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/af;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_97
    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/af;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_dd

    or-int/lit16 v2, v4, 0x1000

    move v14, v2

    :goto_a8
    if-nez v3, :cond_db

    new-instance v2, Lorg/c/a/a/b/a/a;

    invoke-virtual {v12}, Lorg/c/a/a/b/a/a;->b()I

    move-result v3

    invoke-virtual {v12}, Lorg/c/a/a/b/a/a;->a()I

    move-result v4

    const/4 v5, 0x0

    const-string v7, "java/lang/Object"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v11}, Lorg/c/a/a/b/a/a;-><init>(IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/c/a/a/b/a/c;[Lorg/c/a/a/b/a/d;Ljava/util/Map;)V

    :goto_c0
    invoke-virtual {v2, v12}, Lorg/c/a/a/b/a/a;->a(Lorg/c/a/a/b/a/a;)V

    invoke-virtual {v2, v14}, Lorg/c/a/a/b/a/a;->a(I)V

    invoke-virtual {v15, v2}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    :cond_c9
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_40

    :cond_ce
    invoke-virtual {v5}, Lorg/c/a/a/b/a/a/af;->a()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x24

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    :cond_db
    move-object v2, v3

    goto :goto_c0

    :cond_dd
    move v14, v4

    goto :goto_a8
.end method

.method protected b(Lorg/c/a/a/c/b/a/c;)[Lorg/c/a/a/b/a/b/a;
    .registers 8

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/b/a;

    const/4 v1, 0x1

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->a()B

    move-result v3

    packed-switch v3, :pswitch_data_b4

    :pswitch_14  #0x2, 0xd, 0xe
    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid constant pool entry"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x1
    new-instance v3, Lorg/c/a/a/b/a/b/l;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/c/a/a/b/a/b/l;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :pswitch_2a  #0x3
    new-instance v3, Lorg/c/a/a/b/a/b/e;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->d()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/c/a/a/b/a/b/e;-><init>(I)V

    aput-object v3, v0, v1

    goto :goto_27

    :pswitch_36  #0x4
    new-instance v3, Lorg/c/a/a/b/a/b/d;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->e()F

    move-result v4

    invoke-direct {v3, v4}, Lorg/c/a/a/b/a/b/d;-><init>(F)V

    aput-object v3, v0, v1

    goto :goto_27

    :pswitch_42  #0x5
    new-instance v3, Lorg/c/a/a/b/a/b/f;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->f()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/b/f;-><init>(J)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :pswitch_50  #0x6
    new-instance v3, Lorg/c/a/a/b/a/b/c;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->g()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/b/c;-><init>(D)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :pswitch_5e  #0x7, 0x13, 0x14
    new-instance v3, Lorg/c/a/a/b/a/b/b;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/c/a/a/b/a/b/b;-><init>(I)V

    aput-object v3, v0, v1

    goto :goto_27

    :pswitch_6a  #0x8
    new-instance v3, Lorg/c/a/a/b/a/b/k;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/c/a/a/b/a/b/k;-><init>(I)V

    aput-object v3, v0, v1

    goto :goto_27

    :pswitch_76  #0x9, 0xa, 0xb, 0x11, 0x12
    new-instance v3, Lorg/c/a/a/b/a/b/g;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/b/g;-><init>(II)V

    aput-object v3, v0, v1

    goto :goto_27

    :pswitch_86  #0xc
    new-instance v3, Lorg/c/a/a/b/a/b/j;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/b/j;-><init>(II)V

    aput-object v3, v0, v1

    goto :goto_27

    :pswitch_96  #0xf
    new-instance v3, Lorg/c/a/a/b/a/b/h;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->a()B

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/b/h;-><init>(II)V

    aput-object v3, v0, v1

    goto :goto_27

    :pswitch_a6  #0x10
    new-instance v3, Lorg/c/a/a/b/a/b/i;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/c/a/a/b/a/b/i;-><init>(I)V

    aput-object v3, v0, v1

    goto/16 :goto_27

    nop

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_1c  #00000001
        :pswitch_14  #00000002
        :pswitch_2a  #00000003
        :pswitch_36  #00000004
        :pswitch_42  #00000005
        :pswitch_50  #00000006
        :pswitch_5e  #00000007
        :pswitch_6a  #00000008
        :pswitch_76  #00000009
        :pswitch_76  #0000000a
        :pswitch_76  #0000000b
        :pswitch_86  #0000000c
        :pswitch_14  #0000000d
        :pswitch_14  #0000000e
        :pswitch_96  #0000000f
        :pswitch_a6  #00000010
        :pswitch_76  #00000011
        :pswitch_76  #00000012
        :pswitch_5e  #00000013
        :pswitch_5e  #00000014
    .end packed-switch
.end method

.method protected b(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/c;
    .registers 11

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/c;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->d(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Ljava/util/HashMap;

    move-result-object v6

    new-instance v7, Lorg/c/a/a/b/a/c;

    invoke-virtual {p2, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v5}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v3, v4, v5, v6}, Lorg/c/a/a/b/a/c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    aput-object v7, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected c(Lorg/c/a/a/c/b/a/c;)[Lorg/c/a/a/b/a/a/v;
    .registers 12

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v6

    if-nez v6, :cond_9

    :goto_8
    return-object v1

    :cond_9
    new-array v2, v6, [Lorg/c/a/a/b/a/a/v;

    move v5, v4

    :goto_c
    if-lt v5, v6, :cond_10

    move-object v1, v2

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v8

    if-nez v8, :cond_26

    move-object v0, v1

    :cond_1b
    new-instance v3, Lorg/c/a/a/b/a/a/v;

    invoke-direct {v3, v7, v0}, Lorg/c/a/a/b/a/a/v;-><init>(I[I)V

    aput-object v3, v2, v5

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_c

    :cond_26
    new-array v0, v8, [I

    move v3, v4

    :goto_29
    if-ge v3, v8, :cond_1b

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v9

    aput v9, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_29
.end method

.method protected c(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/d;
    .registers 12

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v8

    if-nez v8, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-array v6, v8, [Lorg/c/a/a/b/a/d;

    const/4 v0, 0x0

    move v7, v0

    :goto_c
    if-lt v7, v8, :cond_10

    move-object v0, v6

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->d(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v0, Lorg/c/a/a/b/a/d;

    invoke-virtual {p2, v2}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/a/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/c/a/a/b/a/b;)V

    aput-object v0, v6, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c
.end method

.method protected d(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Ljava/util/HashMap;
    .registers 16

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v11

    if-nez v11, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    move v10, v0

    :goto_f
    if-lt v10, v11, :cond_13

    move-object v0, v9

    goto :goto_7

    :cond_13
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->d()I

    move-result v1

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/a;->a()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_269

    check-cast v0, Lorg/c/a/a/b/a/b/l;

    invoke-virtual {v0}, Lorg/c/a/a/b/a/b/l;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_272

    :cond_33
    :goto_33
    new-instance v0, Lorg/c/a/a/b/a/a/an;

    invoke-direct {v0}, Lorg/c/a/a/b/a/a/an;-><init>()V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/c/a/a/c/b/a/c;->a(I)V

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_f

    :sswitch_42
    const-string v0, "Module"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/o;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->n(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ak;

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->o(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/al;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->o(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/al;

    move-result-object v6

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->p(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->q(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/am;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lorg/c/a/a/b/a/a/o;-><init>(Ljava/lang/String;ILjava/lang/String;[Lorg/c/a/a/b/a/a/ak;[Lorg/c/a/a/b/a/a/al;[Lorg/c/a/a/b/a/a/al;[Ljava/lang/String;[Lorg/c/a/a/b/a/a/am;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :sswitch_7b
    const-string v0, "ConstantValue"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    if-eq v1, v0, :cond_223

    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid attribute length"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_8e
    const-string v0, "MethodParameters"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/n;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->m(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/aj;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/n;-><init>([Lorg/c/a/a/b/a/a/aj;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :sswitch_a3
    const-string v0, "Synthetic"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v1, :cond_25f

    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid attribute length"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b5
    const-string v0, "Signature"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    if-eq v1, v0, :cond_23b

    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid attribute length"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c8
    const-string v0, "RuntimeVisibleParameterAnnotations"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_d0
    new-instance v0, Lorg/c/a/a/b/a/a/r;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->s(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/r;-><init>([Lorg/c/a/a/b/a/a/b;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_de
    const-string v0, "RuntimeInvisibleParameterAnnotations"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d0

    goto/16 :goto_33

    :sswitch_e8
    const-string v0, "RuntimeVisibleAnnotations"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_f0
    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->r(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_3e

    new-instance v1, Lorg/c/a/a/b/a/a/b;

    invoke-direct {v1, v0}, Lorg/c/a/a/b/a/a/b;-><init>([Lorg/c/a/a/b/a/a/a;)V

    invoke-virtual {v9, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_100
    const-string v0, "Code"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/f;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/b/a/a;->d(Lorg/c/a/a/c/b/a/c;)[B

    move-result-object v3

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/b/a/a;->e(Lorg/c/a/a/c/b/a/c;)[Lorg/c/a/a/b/a/a/w;

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->d(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Ljava/util/HashMap;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/a/a/f;-><init>(II[B[Lorg/c/a/a/b/a/a/w;Ljava/util/Map;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_126
    const-string v0, "BootstrapMethods"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/e;

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/b/a/a;->c(Lorg/c/a/a/c/b/a/c;)[Lorg/c/a/a/b/a/a/v;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/e;-><init>([Lorg/c/a/a/b/a/a/v;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_13c
    const-string v0, "Deprecated"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v1, :cond_231

    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid attribute length"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_14e
    const-string v0, "LocalVariableTypeTable"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/m;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->l(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ai;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/m;-><init>([Lorg/c/a/a/b/a/a/ai;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_164
    const-string v0, "ModulePackages"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/q;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->p(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/q;-><init>([Ljava/lang/String;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_17a
    const-string v0, "Exceptions"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/i;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->i(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/i;-><init>([Ljava/lang/String;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_190
    const-string v0, "SourceFile"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    if-eq v1, v0, :cond_24d

    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid attribute length"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1a3
    const-string v0, "ModuleMainClass"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v1, Lorg/c/a/a/b/a/a/p;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/b/b;

    invoke-direct {v1, v0}, Lorg/c/a/a/b/a/a/p;-><init>(Lorg/c/a/a/b/a/b/b;)V

    invoke-virtual {v9, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_1bf
    const-string v0, "AnnotationDefault"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/d;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->e(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Lorg/c/a/a/b/a/a/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/d;-><init>(Lorg/c/a/a/b/a/a/x;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_1d5
    const-string v0, "LocalVariableTable"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->k(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ah;

    move-result-object v0

    if-eqz v0, :cond_3e

    new-instance v1, Lorg/c/a/a/b/a/a/l;

    invoke-direct {v1, v0}, Lorg/c/a/a/b/a/a/l;-><init>([Lorg/c/a/a/b/a/a/ah;)V

    invoke-virtual {v9, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_1ed
    const-string v0, "LineNumberTable"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/k;

    invoke-virtual {p0, p1}, Lorg/c/a/a/c/b/a/a;->f(Lorg/c/a/a/c/b/a/c;)[Lorg/c/a/a/b/a/a/ag;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/k;-><init>([Lorg/c/a/a/b/a/a/ag;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :sswitch_203
    const-string v0, "RuntimeInvisibleAnnotations"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f0

    goto/16 :goto_33

    :sswitch_20d
    const-string v0, "InnerClasses"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Lorg/c/a/a/b/a/a/j;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->j(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/af;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/j;-><init>([Lorg/c/a/a/b/a/a/af;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :cond_223
    new-instance v0, Lorg/c/a/a/b/a/a/g;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->h(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Lorg/c/a/a/b/a/b/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/g;-><init>(Lorg/c/a/a/b/a/b/m;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :cond_231
    new-instance v0, Lorg/c/a/a/b/a/a/h;

    invoke-direct {v0}, Lorg/c/a/a/b/a/a/h;-><init>()V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :cond_23b
    new-instance v0, Lorg/c/a/a/b/a/a/s;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :cond_24d
    new-instance v0, Lorg/c/a/a/b/a/a/t;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/t;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :cond_25f
    new-instance v0, Lorg/c/a/a/b/a/a/u;

    invoke-direct {v0}, Lorg/c/a/a/b/a/a/u;-><init>()V

    invoke-virtual {v9, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3e

    :cond_269
    new-instance v0, Lorg/c/a/a/c/b/a/b;

    const-string v1, "Invalid attributes"

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_272
    .sparse-switch
        -0x764f6d74 -> :sswitch_42
        -0x754e6bf3 -> :sswitch_7b
        -0x644f3235 -> :sswitch_8e
        -0x4d98f8db -> :sswitch_a3
        -0x48904768 -> :sswitch_b5
        -0x36ba5f8b -> :sswitch_c8
        -0x338b25d0 -> :sswitch_de
        -0x1f7c82d6 -> :sswitch_e8
        0x20220d -> :sswitch_100
        0x1208e184 -> :sswitch_126
        0x158641d3 -> :sswitch_13c
        0x2697f98d -> :sswitch_14e
        0x2706ff99 -> :sswitch_164
        0x287c1624 -> :sswitch_17a
        0x348c2857 -> :sswitch_190
        0x3deb0a13 -> :sswitch_1a3
        0x46699ff2 -> :sswitch_1bf
        0x64c75927 -> :sswitch_1d5
        0x653f0551 -> :sswitch_1ed
        0x7588550f -> :sswitch_203
        0x7adb2910 -> :sswitch_20d
    .end sparse-switch
.end method

.method protected d(Lorg/c/a/a/c/b/a/c;)[B
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->d()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lorg/c/a/a/c/b/a/c;->a([B)V

    goto :goto_7
.end method

.method protected e(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Lorg/c/a/a/b/a/a/x;
    .registers 7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->a()B

    move-result v2

    sparse-switch v2, :sswitch_data_72

    new-instance v0, Lorg/c/a/a/c/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Invalid element value type: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/c/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1c
    new-instance v1, Lorg/c/a/a/b/a/a/ad;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/b/a/b/m;

    invoke-direct {v1, v2, v0}, Lorg/c/a/a/b/a/a/ad;-><init>(ILorg/c/a/a/b/a/b/m;)V

    move-object v0, v1

    :goto_2c
    return-object v0

    :sswitch_2d
    new-instance v0, Lorg/c/a/a/b/a/a/ab;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/c/a/a/b/a/a/ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :sswitch_43
    new-instance v0, Lorg/c/a/a/b/a/a/aa;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p2, v1}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/aa;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    :sswitch_51
    new-instance v0, Lorg/c/a/a/b/a/a/y;

    new-instance v1, Lorg/c/a/a/b/a/a/a;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p2, v2}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->f(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ac;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/c/a/a/b/a/a/a;-><init>(Ljava/lang/String;[Lorg/c/a/a/b/a/a/ac;)V

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/y;-><init>(Lorg/c/a/a/b/a/a/a;)V

    goto :goto_2c

    :sswitch_68
    new-instance v0, Lorg/c/a/a/b/a/a/z;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->g(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/x;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/a/a/z;-><init>([Lorg/c/a/a/b/a/a/x;)V

    goto :goto_2c

    :sswitch_data_72
    .sparse-switch
        0x40 -> :sswitch_51
        0x42 -> :sswitch_1c
        0x43 -> :sswitch_1c
        0x44 -> :sswitch_1c
        0x46 -> :sswitch_1c
        0x49 -> :sswitch_1c
        0x4a -> :sswitch_1c
        0x53 -> :sswitch_1c
        0x5a -> :sswitch_1c
        0x5b -> :sswitch_68
        0x63 -> :sswitch_43
        0x65 -> :sswitch_2d
        0x73 -> :sswitch_1c
    .end sparse-switch
.end method

.method protected e(Lorg/c/a/a/c/b/a/c;)[Lorg/c/a/a/b/a/a/w;
    .registers 10

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v7

    if-nez v7, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-array v6, v7, [Lorg/c/a/a/b/a/a/w;

    const/4 v1, 0x0

    :goto_b
    if-lt v1, v7, :cond_f

    move-object v0, v6

    goto :goto_7

    :cond_f
    new-instance v0, Lorg/c/a/a/b/a/a/w;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/a/a/w;-><init>(IIIII)V

    aput-object v0, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected f(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ac;
    .registers 9

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/a/ac;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    new-instance v3, Lorg/c/a/a/b/a/a/ac;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->e(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Lorg/c/a/a/b/a/a/x;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/a/ac;-><init>(Ljava/lang/String;Lorg/c/a/a/b/a/a/x;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected f(Lorg/c/a/a/c/b/a/c;)[Lorg/c/a/a/b/a/a/ag;
    .registers 8

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/a/ag;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    new-instance v3, Lorg/c/a/a/b/a/a/ag;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/a/ag;-><init>(II)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected g(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/x;
    .registers 7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/a/x;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->e(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Lorg/c/a/a/b/a/a/x;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected h(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)Lorg/c/a/a/b/a/b/m;
    .registers 4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/a/b;->e(I)Lorg/c/a/a/b/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method protected i(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected j(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/af;
    .registers 12

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    if-nez v5, :cond_8

    :goto_7
    return-object v0

    :cond_8
    new-array v1, v5, [Lorg/c/a/a/b/a/a/af;

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-lt v3, v5, :cond_10

    move-object v0, v1

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v6

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v7

    invoke-virtual {p2, v2}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v8

    if-nez v4, :cond_35

    move-object v4, v0

    :goto_27
    if-nez v6, :cond_3b

    move-object v2, v0

    :goto_2a
    new-instance v6, Lorg/c/a/a/b/a/a/af;

    invoke-direct {v6, v8, v4, v2, v7}, Lorg/c/a/a/b/a/a/af;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v6, v1, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_c

    :cond_35
    invoke-virtual {p2, v4}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_27

    :cond_3b
    invoke-virtual {p2, v6}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2a
.end method

.method protected k(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ah;
    .registers 12

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v8

    if-nez v8, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-array v6, v8, [Lorg/c/a/a/b/a/a/ah;

    const/4 v0, 0x0

    move v7, v0

    :goto_c
    if-lt v7, v8, :cond_10

    move-object v0, v6

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    new-instance v0, Lorg/c/a/a/b/a/a/ah;

    invoke-virtual {p2, v3}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/a/a/ah;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v6, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c
.end method

.method protected l(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ai;
    .registers 12

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v8

    if-nez v8, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-array v6, v8, [Lorg/c/a/a/b/a/a/ai;

    const/4 v0, 0x0

    move v7, v0

    :goto_c
    if-lt v7, v8, :cond_10

    move-object v0, v6

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v1

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    new-instance v0, Lorg/c/a/a/b/a/a/ai;

    invoke-virtual {p2, v3}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/c/a/a/b/a/a/ai;-><init>(IILjava/lang/String;Ljava/lang/String;I)V

    aput-object v0, v6, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c
.end method

.method protected m(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/aj;
    .registers 9

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->b()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/a/aj;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    new-instance v3, Lorg/c/a/a/b/a/a/aj;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/a/aj;-><init>(Ljava/lang/String;I)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected n(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ak;
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    if-nez v4, :cond_8

    :goto_7
    return-object v1

    :cond_8
    new-array v2, v4, [Lorg/c/a/a/b/a/a/ak;

    const/4 v0, 0x0

    move v3, v0

    :goto_c
    if-lt v3, v4, :cond_10

    move-object v1, v2

    goto :goto_7

    :cond_10
    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v0

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v5

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v6

    invoke-virtual {p2, v0}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v7

    if-nez v6, :cond_2e

    move-object v0, v1

    :goto_23
    new-instance v6, Lorg/c/a/a/b/a/a/ak;

    invoke-direct {v6, v7, v5, v0}, Lorg/c/a/a/b/a/a/ak;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v6, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    :cond_2e
    invoke-virtual {p2, v6}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method protected o(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/al;
    .registers 10

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/a/al;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    new-instance v5, Lorg/c/a/a/b/a/a/al;

    invoke-virtual {p2, v3}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->p(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6}, Lorg/c/a/a/b/a/a/al;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected p(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;
    .registers 7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v3

    invoke-virtual {p2, v3}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected q(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/am;
    .registers 9

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/a/am;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    new-instance v3, Lorg/c/a/a/b/a/a/am;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->p(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/a/am;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected r(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/a;
    .registers 9

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/a/a;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    new-instance v3, Lorg/c/a/a/b/a/a/a;

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->c()I

    move-result v4

    invoke-virtual {p2, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->f(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/ac;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/c/a/a/b/a/a/a;-><init>(Ljava/lang/String;[Lorg/c/a/a/b/a/a/ac;)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method protected s(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/b;
    .registers 8

    invoke-virtual {p1}, Lorg/c/a/a/c/b/a/c;->b()I

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    new-array v0, v2, [Lorg/c/a/a/b/a/a/b;

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_7

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/b/a/a;->r(Lorg/c/a/a/c/b/a/c;Lorg/c/a/a/b/a/b;)[Lorg/c/a/a/b/a/a/a;

    move-result-object v3

    if-eqz v3, :cond_1a

    new-instance v4, Lorg/c/a/a/b/a/a/b;

    invoke-direct {v4, v3}, Lorg/c/a/a/b/a/a/b;-><init>([Lorg/c/a/a/b/a/a/a;)V

    aput-object v4, v0, v1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
