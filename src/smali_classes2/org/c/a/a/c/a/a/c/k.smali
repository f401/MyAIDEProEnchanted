.class public Lorg/c/a/a/c/a/a/c/k;
.super Ljava/lang/Object;


# static fields
.field protected static final a:Lorg/c/a/a/c/a/a/a/a/a;

.field protected static final b:Lorg/c/a/a/c/a/a/c/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    sput-object v0, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    new-instance v0, Lorg/c/a/a/c/a/a/c/l;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/c/l;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/c/k;->b:Lorg/c/a/a/c/a/a/c/l;

    return-void
.end method

.method public static a(Lorg/c/a/a/b/a/d;)Lorg/c/a/a/c/a/a/a/a/f;
    .registers 27

    const-string v3, "Code"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/c/a/a/b/a/d;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/b/a/a/f;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/c/a/a/b/a/d;->d()Lorg/c/a/a/b/a/b;

    move-result-object v9

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/f;->a()[B

    move-result-object v10

    array-length v11, v10

    new-array v12, v11, [Lorg/c/a/a/c/a/a/a/a/a;

    new-array v13, v11, [C

    new-array v14, v11, [I

    new-array v15, v11, [I

    new-array v0, v11, [[I

    move-object/from16 v16, v0

    new-array v0, v11, [[I

    move-object/from16 v17, v0

    const/4 v4, 0x0

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v4

    :goto_1
    if-lt v6, v11, :cond_5

    aput v11, v14, v8

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/f;->b()[Lorg/c/a/a/b/a/a/w;

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v5, v7

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v5, :cond_19

    :cond_1
    new-instance v4, Lorg/c/a/a/c/a/a/a/a/f;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/c/a/a/c/a/a/a/a/f;-><init>(Lorg/c/a/a/b/a/d;)V

    const-string v5, "LineNumberTable"

    invoke-virtual {v3, v5}, Lorg/c/a/a/b/a/a/f;->a(Ljava/lang/String;)Lorg/c/a/a/b/a/a/c;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/b/a/a/k;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/k;->a()[Lorg/c/a/a/b/a/a/ag;

    move-result-object v8

    new-array v0, v11, [I

    move-object/from16 v18, v0

    const/4 v3, 0x0

    aget-object v3, v8, v3

    invoke-virtual {v3}, Lorg/c/a/a/b/a/a/ag;->b()I

    move-result v6

    array-length v0, v8

    move/from16 v19, v0

    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_3
    move/from16 v0, v19

    if-lt v5, v0, :cond_1a

    :goto_4
    if-lt v3, v11, :cond_1d

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/c/a/a/c/a/a/a/a/f;->a([I)V

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    const/4 v5, 0x0

    aget v5, v14, v5

    :goto_5
    if-lt v5, v11, :cond_1e

    invoke-virtual {v4, v3, v11}, Lorg/c/a/a/c/a/a/a/a/f;->a(II)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    aput-object v5, v12, v3

    invoke-virtual {v4}, Lorg/c/a/a/c/a/a/a/a/f;->b()Lorg/c/a/a/d/c;

    move-result-object v8

    new-instance v11, Lorg/c/a/a/d/c;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v11, v3}, Lorg/c/a/a/d/c;-><init>(I)V

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    const/4 v3, 0x1

    move v5, v3

    :goto_6
    if-lt v5, v14, :cond_20

    if-eqz v7, :cond_3

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/c/a/a/b/a/d;->d()Lorg/c/a/a/b/a/b;

    move-result-object v14

    sget-object v3, Lorg/c/a/a/c/a/a/c/k;->b:Lorg/c/a/a/c/a/a/c/l;

    invoke-static {v7, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, v7

    move/from16 v16, v0

    const/4 v3, 0x0

    move v6, v3

    :goto_7
    move/from16 v0, v16

    if-lt v6, v0, :cond_23

    :cond_3
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_29

    move-object v3, v4

    goto/16 :goto_0

    :cond_5
    aput v6, v14, v8

    aget-byte v4, v10, v6

    and-int/lit16 v4, v4, 0xff

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v4, v5

    move v8, v6

    :goto_9
    add-int/lit8 v7, v8, 0x1

    move v5, v4

    move v8, v6

    move v6, v7

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v7, v6, 0x1

    move v4, v5

    move v8, v7

    goto :goto_9

    :pswitch_2
    add-int/lit8 v5, v6, 0x1

    move v4, v5

    move v8, v5

    goto :goto_9

    :pswitch_3
    move v4, v6

    move v8, v6

    goto :goto_9

    :pswitch_4
    add-int/lit8 v5, v6, 0x1

    const/16 v4, 0x52

    aput-char v4, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_6

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_6
    move v4, v5

    move v8, v5

    goto :goto_9

    :pswitch_5
    add-int/lit8 v5, v6, 0x2

    move v4, v5

    move v8, v5

    goto :goto_9

    :pswitch_6
    add-int/lit8 v4, v6, 0x1

    aget-byte v8, v10, v4

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v10, v7

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v4, v8

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v4

    check-cast v4, Lorg/c/a/a/b/a/b/g;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/b/g;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v4

    check-cast v4, Lorg/c/a/a/b/a/b/j;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/b/j;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x56

    if-ne v4, v8, :cond_2c

    move v4, v7

    move v8, v7

    goto :goto_9

    :pswitch_7
    add-int/lit8 v4, v6, 0x1

    aget-byte v7, v10, v4

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v10, v8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v4

    check-cast v4, Lorg/c/a/a/b/a/b/g;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/b/g;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->a(I)Lorg/c/a/a/b/a/b/a;

    move-result-object v4

    check-cast v4, Lorg/c/a/a/b/a/b/j;

    invoke-virtual {v4}, Lorg/c/a/a/b/a/b/j;->c()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/c/a/a/b/a/b;->d(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v7, v8, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x56

    if-ne v4, v8, :cond_2d

    move v4, v7

    move v8, v7

    goto/16 :goto_9

    :pswitch_8
    add-int/lit8 v7, v6, 0x2

    add-int/lit8 v4, v5, 0x3

    if-ne v4, v7, :cond_2d

    add-int/lit8 v4, v7, -0x1

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v10, v7, v4}, Lorg/c/a/a/c/a/a/c/k;->a([BII)Z

    move-result v4

    if-nez v4, :cond_2d

    move v4, v7

    move v8, v7

    goto/16 :goto_9

    :pswitch_9
    add-int/lit8 v7, v6, 0x2

    move v4, v5

    move v8, v7

    goto/16 :goto_9

    :pswitch_a
    add-int/lit8 v4, v5, 0x1

    if-ne v4, v6, :cond_9

    const/16 v4, 0x67

    :goto_a
    const/4 v7, -0x1

    if-eq v5, v7, :cond_7

    add-int/lit8 v5, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v5

    :cond_7
    aput-char v4, v13, v6

    add-int/lit8 v5, v6, 0x1

    aget-byte v7, v10, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    aget-byte v8, v10, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    int-to-short v7, v7

    add-int/2addr v7, v6

    sget-object v8, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v8, v12, v7

    aput-char v4, v13, v5

    aput v7, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_8

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_8
    move v4, v5

    move v8, v5

    goto/16 :goto_9

    :cond_9
    const/16 v4, 0x47

    goto :goto_a

    :pswitch_b
    const/4 v4, -0x1

    if-eq v5, v4, :cond_a

    add-int/lit8 v4, v5, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_a
    const/16 v4, 0x6a

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    aget-byte v7, v10, v4

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v4, v7, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, v10, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    int-to-short v4, v4

    add-int/2addr v4, v6

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    const/16 v7, 0x6a

    aput-char v7, v13, v5

    aput v4, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_b

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_b
    move v4, v5

    move v8, v5

    goto/16 :goto_9

    :pswitch_c
    const/4 v4, -0x1

    if-eq v5, v4, :cond_c

    add-int/lit8 v4, v5, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_c
    add-int/lit8 v4, v6, 0x1

    aget-byte v7, v10, v4

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v4, v7, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, v10, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    int-to-short v4, v4

    add-int/2addr v4, v6

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    const/16 v7, 0x63

    aput-char v7, v13, v5

    aput v4, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_d

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_d
    move v4, v5

    move v8, v5

    goto/16 :goto_9

    :pswitch_d
    add-int/lit8 v4, v6, 0x4

    const v5, 0xfffc

    and-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v10, v4

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v10, v5

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v10, v7

    add-int/lit8 v18, v8, 0x1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v7, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v10, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int v5, v4, v6

    sget-object v4, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v4, v12, v5

    add-int/lit8 v4, v18, 0x1

    aget-byte v7, v10, v18

    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v10, v4

    add-int/lit8 v18, v8, 0x1

    aget-byte v8, v10, v8

    add-int/lit8 v19, v18, 0x1

    aget-byte v18, v10, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v4, v7

    and-int/lit16 v7, v8, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    or-int v7, v18, v4

    add-int/lit8 v4, v19, 0x1

    aget-byte v8, v10, v19

    add-int/lit8 v18, v4, 0x1

    aget-byte v19, v10, v4

    add-int/lit8 v20, v18, 0x1

    aget-byte v18, v10, v18

    add-int/lit8 v4, v20, 0x1

    aget-byte v20, v10, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int v8, v8, v19

    or-int v8, v8, v18

    or-int v8, v8, v20

    sub-int v18, v8, v7

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    sub-int v19, v8, v7

    add-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v5, v19, v20

    const/4 v5, 0x1

    :goto_b
    sub-int v20, v8, v7

    add-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    if-lt v5, v0, :cond_e

    add-int/lit8 v5, v4, -0x1

    const/16 v4, 0x73

    aput-char v4, v13, v5

    aput-object v18, v16, v5

    aput-object v19, v17, v5

    move v4, v5

    move v8, v5

    goto/16 :goto_9

    :cond_e
    add-int v20, v7, v5

    add-int/lit8 v20, v20, -0x1

    aput v20, v18, v5

    add-int/lit8 v20, v4, 0x1

    aget-byte v21, v10, v4

    add-int/lit8 v4, v20, 0x1

    aget-byte v20, v10, v20

    add-int/lit8 v22, v4, 0x1

    aget-byte v23, v10, v4

    add-int/lit8 v4, v22, 0x1

    aget-byte v22, v10, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x10

    or-int v20, v20, v21

    or-int v20, v20, v23

    or-int v20, v20, v22

    add-int v20, v20, v6

    aput v20, v19, v5

    sget-object v21, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v21, v12, v20

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :pswitch_e
    add-int/lit8 v4, v6, 0x4

    const v5, 0xfffc

    and-int/2addr v4, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v10, v4

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, v10, v5

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v10, v7

    add-int/lit8 v18, v8, 0x1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v7, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    aget-byte v5, v10, v8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    add-int v5, v4, v6

    sget-object v4, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v4, v12, v5

    add-int/lit8 v4, v18, 0x1

    aget-byte v7, v10, v18

    add-int/lit8 v8, v4, 0x1

    aget-byte v18, v10, v4

    add-int/lit8 v19, v8, 0x1

    aget-byte v8, v10, v8

    add-int/lit8 v4, v19, 0x1

    aget-byte v19, v10, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x10

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int v7, v7, v18

    or-int/2addr v7, v8

    or-int v7, v7, v19

    add-int/lit8 v8, v7, 0x1

    new-array v8, v8, [I

    add-int/lit8 v18, v7, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v5, v18, v19

    const/4 v5, 0x1

    :goto_c
    if-le v5, v7, :cond_f

    add-int/lit8 v5, v4, -0x1

    const/16 v4, 0x73

    aput-char v4, v13, v5

    aput-object v8, v16, v5

    aput-object v18, v17, v5

    move v4, v5

    move v8, v5

    goto/16 :goto_9

    :cond_f
    add-int/lit8 v19, v4, 0x1

    aget-byte v4, v10, v4

    add-int/lit8 v20, v19, 0x1

    aget-byte v19, v10, v19

    add-int/lit8 v21, v20, 0x1

    aget-byte v20, v10, v20

    add-int/lit8 v22, v21, 0x1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x10

    or-int v4, v4, v19

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    or-int v4, v4, v19

    aget-byte v19, v10, v21

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v4, v4, v19

    aput v4, v8, v5

    add-int/lit8 v4, v22, 0x1

    aget-byte v19, v10, v22

    add-int/lit8 v20, v4, 0x1

    aget-byte v21, v10, v4

    add-int/lit8 v22, v20, 0x1

    aget-byte v20, v10, v20

    add-int/lit8 v4, v22, 0x1

    aget-byte v22, v10, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shl-int/lit8 v21, v21, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x18

    or-int v19, v19, v21

    or-int v19, v19, v20

    or-int v19, v19, v22

    add-int v19, v19, v6

    aput v19, v18, v5

    sget-object v20, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v20, v12, v19

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :pswitch_f
    const/16 v4, 0x76

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v11, :cond_10

    add-int/lit8 v4, v6, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_10
    move v4, v6

    move v8, v6

    goto/16 :goto_9

    :pswitch_10
    const/4 v4, -0x1

    if-eq v5, v4, :cond_11

    add-int/lit8 v4, v5, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_11
    const/16 v4, 0x72

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v11, :cond_12

    add-int/lit8 v4, v6, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_12
    move v4, v6

    move v8, v6

    goto/16 :goto_9

    :pswitch_11
    const/16 v4, 0x74

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    if-ge v4, v11, :cond_13

    add-int/lit8 v4, v6, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_13
    move v4, v6

    move v8, v6

    goto/16 :goto_9

    :pswitch_12
    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v10, v7

    and-int/lit16 v4, v4, 0xff

    sparse-switch v4, :sswitch_data_0

    move v4, v5

    :goto_d
    add-int/lit8 v5, v7, 0x2

    move v8, v5

    goto/16 :goto_9

    :sswitch_0
    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v4, v5, 0x6

    if-ne v4, v7, :cond_2d

    add-int/lit8 v4, v7, -0x3

    aget-byte v4, v10, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v8, v7, -0x2

    aget-byte v8, v10, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    invoke-static {v10, v7, v4}, Lorg/c/a/a/c/a/a/c/k;->a([BII)Z

    move-result v4

    if-nez v4, :cond_2d

    move v4, v7

    move v8, v7

    goto/16 :goto_9

    :sswitch_1
    add-int/lit8 v5, v7, 0x2

    const/16 v4, 0x52

    aput-char v4, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_14

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_14
    move v4, v5

    move v8, v5

    goto/16 :goto_9

    :sswitch_2
    add-int/lit8 v4, v7, 0x2

    goto :goto_d

    :pswitch_13
    add-int/lit8 v7, v6, 0x3

    move v4, v5

    move v8, v7

    goto/16 :goto_9

    :pswitch_14
    add-int/lit8 v4, v5, 0x1

    if-ne v4, v6, :cond_16

    const/16 v4, 0x67

    :goto_e
    aput-char v4, v13, v6

    add-int/lit8 v5, v6, 0x1

    aget-byte v7, v10, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v8, v10, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v18, v10, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    aget-byte v8, v10, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    add-int/2addr v7, v6

    sget-object v8, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v8, v12, v7

    aput-char v4, v13, v5

    aput v7, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_15

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_15
    move v4, v5

    move v8, v5

    goto/16 :goto_9

    :cond_16
    const/16 v4, 0x47

    goto :goto_e

    :pswitch_15
    const/4 v4, -0x1

    if-eq v5, v4, :cond_17

    add-int/lit8 v4, v5, 0x1

    sget-object v5, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v5, v12, v4

    :cond_17
    const/16 v4, 0x6a

    aput-char v4, v13, v6

    add-int/lit8 v4, v6, 0x1

    aget-byte v7, v10, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v8, v10, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v18, v10, v4

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v4, v7, 0xff

    shl-int/lit8 v4, v4, 0x18

    and-int/lit16 v7, v8, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v4, v7

    move/from16 v0, v18

    and-int/lit16 v7, v0, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v4, v7

    aget-byte v7, v10, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v4, v7

    add-int/2addr v4, v6

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    const/16 v7, 0x6a

    aput-char v7, v13, v5

    aput v4, v15, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v11, :cond_18

    add-int/lit8 v4, v5, 0x1

    sget-object v7, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v7, v12, v4

    :cond_18
    move v4, v5

    move v8, v5

    goto/16 :goto_9

    :cond_19
    aget-object v6, v7, v4

    invoke-virtual {v6}, Lorg/c/a/a/b/a/a/w;->a()I

    move-result v8

    sget-object v18, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v18, v12, v8

    invoke-virtual {v6}, Lorg/c/a/a/b/a/a/w;->c()I

    move-result v6

    sget-object v8, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v8, v12, v6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_1a
    aget-object v20, v8, v5

    invoke-virtual/range {v20 .. v20}, Lorg/c/a/a/b/a/a/ag;->a()I

    move-result v21

    :goto_f
    move/from16 v0, v21

    if-lt v3, v0, :cond_1c

    invoke-virtual/range {v20 .. v20}, Lorg/c/a/a/b/a/a/ag;->b()I

    move-result v21

    move/from16 v0, v21

    if-le v6, v0, :cond_1b

    sget-object v6, Lorg/c/a/a/c/a/a/c/k;->a:Lorg/c/a/a/c/a/a/a/a/a;

    aput-object v6, v12, v3

    :cond_1b
    invoke-virtual/range {v20 .. v20}, Lorg/c/a/a/b/a/a/ag;->b()I

    move-result v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_1c
    aput v6, v18, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1d
    aput v6, v18, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_1e
    aget-object v8, v12, v5

    if-eqz v8, :cond_1f

    invoke-virtual {v4, v3, v5}, Lorg/c/a/a/c/a/a/a/a/f;->a(II)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v8

    aput-object v8, v12, v3

    move v3, v5

    :cond_1f
    aget v5, v14, v5

    goto/16 :goto_5

    :cond_20
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    aget-char v18, v13, v6

    sparse-switch v18, :sswitch_data_1

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_6

    :sswitch_3
    const/high16 v18, 0x4000000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    aget v6, v15, v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :sswitch_4
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    aget v6, v15, v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :sswitch_5
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    sget-object v6, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_10

    :sswitch_6
    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    sget-object v6, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto :goto_10

    :sswitch_7
    const v18, 0x8000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v18

    aget-object v18, v12, v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual/range {v18 .. v18}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aget v6, v15, v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :sswitch_8
    const/16 v18, 0x40

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    aget-object v18, v16, v6

    aget-object v19, v17, v6

    new-instance v20, Lorg/c/a/a/d/c;

    move-object/from16 v0, v19

    array-length v6, v0

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Lorg/c/a/a/d/c;-><init>(I)V

    const/4 v6, 0x0

    aget v21, v19, v6

    aget-object v6, v12, v21

    new-instance v22, Lorg/c/a/a/c/a/a/a/a/e;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lorg/c/a/a/c/a/a/a/a/e;-><init>(Lorg/c/a/a/c/a/a/a/a/a;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    :goto_11
    move/from16 v0, v22

    if-lt v6, v0, :cond_21

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/d/c;)V

    goto/16 :goto_10

    :cond_21
    aget v23, v19, v6

    move/from16 v0, v23

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    aget-object v23, v12, v23

    new-instance v24, Lorg/c/a/a/c/a/a/a/a/e;

    aget v25, v18, v6

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/c/a/a/c/a/a/a/a/e;-><init>(ILorg/c/a/a/c/a/a/a/a/a;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/c/a/a/d/c;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v23 .. v23}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :sswitch_9
    const/16 v18, 0x2000

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v18

    aget-object v18, v12, v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual/range {v18 .. v18}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aget v6, v15, v6

    aget-object v6, v12, v6

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :sswitch_a
    const/16 v6, 0x4000

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    sget-object v6, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_10

    :sswitch_b
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    sget-object v6, Lorg/c/a/a/c/a/a/a/a/a;->h:Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3, v6}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    goto/16 :goto_10

    :cond_23
    aget-object v17, v7, v6

    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/b/a/a/w;->a()I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/b/a/a/w;->c()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_26

    aget-char v3, v13, v19

    const/16 v5, 0x54

    if-ne v3, v5, :cond_24

    aget v3, v15, v19

    aget-object v3, v12, v3

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->d()I

    move-result v3

    move/from16 v0, v18

    if-gt v0, v3, :cond_26

    :cond_24
    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/b/a/a/w;->d()I

    move-result v20

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    if-nez v3, :cond_2b

    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/b/a/a/w;->b()I

    move-result v3

    aget-object v21, v12, v18

    const/16 v5, 0x200

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0, v3}, Lorg/c/a/a/c/a/a/a/a/f;->a(III)Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v5}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v22

    invoke-virtual/range {v21 .. v21}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_25
    :goto_12
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_27

    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    aput-object v5, v12, v18

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    if-nez v20, :cond_28

    const/4 v3, 0x0

    :goto_14
    aget-object v17, v12, v19

    move-object/from16 v0, v17

    invoke-virtual {v5, v3, v0}, Lorg/c/a/a/c/a/a/a/a/a;->a(Ljava/lang/String;Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual/range {v17 .. v17}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aput v18, v15, v19

    const/16 v3, 0x54

    aput-char v3, v13, v19

    :cond_26
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto/16 :goto_7

    :cond_27
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/c/a/a/c/a/a/a/a/a;->f(Lorg/c/a/a/c/a/a/a/a/a;)Z

    move-result v25

    if-nez v25, :cond_25

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v5}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;Lorg/c/a/a/c/a/a/a/a/a;)V

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :cond_28
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lorg/c/a/a/b/a/b;->b(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/c/a/a/c/a/a/a/a/a;

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v6

    invoke-virtual {v3}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v7

    const/high16 v8, 0x4000000

    if-ne v7, v8, :cond_2a

    invoke-static {v9, v10, v3}, Lorg/c/a/a/c/a/a/c/c;->a(Lorg/c/a/a/b/a/b;[BLorg/c/a/a/c/a/a/a/a/a;)I

    move-result v7

    if-lez v7, :cond_2a

    const/high16 v7, 0x10000000

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto/16 :goto_8

    :cond_2a
    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->c()I

    move-result v7

    const v8, 0x8000

    if-ne v7, v8, :cond_4

    invoke-static {v9, v10, v3}, Lorg/c/a/a/c/a/a/c/c;->a(Lorg/c/a/a/b/a/b;[BLorg/c/a/a/c/a/a/a/a/a;)I

    move-result v7

    if-lez v7, :cond_4

    const v7, 0x8000

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->e()I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->c(I)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->a(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->h()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/c/a/a/c/a/a/a/a/a;->b(Lorg/c/a/a/c/a/a/a/a/a;)V

    invoke-virtual {v6}, Lorg/c/a/a/c/a/a/a/a/a;->i()Lorg/c/a/a/c/a/a/a/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lorg/c/a/a/c/a/a/a/a/a;->o()Ljava/util/HashSet;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v7, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lorg/c/a/a/c/a/a/a/a/a;->a(I)V

    goto/16 :goto_8

    :cond_2b
    move-object v5, v3

    goto/16 :goto_13

    :cond_2c
    move v4, v5

    move v8, v7

    goto/16 :goto_9

    :cond_2d
    move v4, v5

    move v8, v7

    goto/16 :goto_9

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_9
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_11
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_12
        :pswitch_13
        :pswitch_c
        :pswitch_c
        :pswitch_14
        :pswitch_15
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0x3a -> :sswitch_2
        0x84 -> :sswitch_0
        0xa9 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x47 -> :sswitch_4
        0x52 -> :sswitch_a
        0x63 -> :sswitch_7
        0x67 -> :sswitch_3
        0x6a -> :sswitch_9
        0x72 -> :sswitch_6
        0x73 -> :sswitch_8
        0x74 -> :sswitch_5
        0x76 -> :sswitch_b
    .end sparse-switch
.end method

.method protected static a([BII)Z
    .registers 7

    const/4 v0, 0x1

    add-int/lit8 v1, p1, 0x1

    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x15

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p2, v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p2, 0x1a

    if-eq v2, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
