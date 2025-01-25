.class public La/b/f/b;
.super Ljava/lang/Object;

# interfaces
.implements La/b/g/aq;


# instance fields
.field private final a:Z

.field private final b:La/b/g/bg;


# direct methods
.method public constructor <init>(ZLa/b/g/bg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La/b/f/b;->a:Z

    iput-object p2, p0, La/b/f/b;->b:La/b/g/bg;

    return-void
.end method

.method private a(La/b/c;La/b/d;La/b/c;)V
    .registers 13

    const/4 v3, 0x0

    invoke-interface {p2, p1}, La/b/d;->b(La/b/c;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, La/b/f/b;->b:La/b/g/bg;

    const/4 v4, 0x1

    invoke-static {v7}, La/b/f/i;->v(Ljava/lang/String;)I

    move-result v6

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    move-object v8, p3

    invoke-interface/range {v0 .. v8}, La/b/g/bg;->a(La/b/c;La/b/i;IIIILjava/lang/String;La/b/c;)V

    return-void
.end method

.method private a(La/b/c;La/b/j;[La/b/c;)V
    .registers 20

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    :goto_b
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_e2

    move v2, v5

    :cond_15
    :goto_15
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :sswitch_1a
    add-int/lit8 v4, v4, 0x1

    move v2, v5

    goto :goto_15

    :sswitch_1e
    const/16 v2, 0x3b

    invoke-virtual {v15, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :goto_27
    :sswitch_27
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_33

    move v5, v2

    goto :goto_27

    :cond_33
    const/16 v6, 0x4c

    if-ne v5, v6, :cond_15

    const/16 v5, 0x3b

    invoke-virtual {v15, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :sswitch_40
    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-boolean v6, v0, La/b/f/b;->a:Z

    if-eqz v6, :cond_dc

    invoke-interface/range {p2 .. p2}, La/b/j;->a()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_dc

    move-object/from16 v0, p0

    iget-object v2, v0, La/b/f/b;->b:La/b/g/bg;

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, La/b/f/i;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v10, p1

    invoke-interface/range {v2 .. v10}, La/b/g/bg;->a(La/b/c;La/b/i;IIIILjava/lang/String;La/b/c;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    move v5, v3

    :goto_6e
    const/4 v12, 0x1

    const/4 v3, 0x0

    move v14, v12

    move v7, v2

    :goto_72
    add-int/lit8 v4, v14, 0x1

    const/4 v10, 0x0

    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_f8

    const/4 v2, 0x1

    move v11, v2

    move v12, v4

    move v13, v3

    :goto_80
    move-object/from16 v0, p0

    iget-object v2, v0, La/b/f/b;->b:La/b/g/bg;

    invoke-virtual {v15, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-interface/range {v2 .. v10}, La/b/g/bg;->a(La/b/c;La/b/i;IIIILjava/lang/String;La/b/c;)V

    add-int/2addr v7, v11

    add-int/lit8 v5, v5, 0x1

    move v14, v12

    move v3, v13

    goto :goto_72

    :sswitch_95
    const/4 v2, 0x2

    move v11, v2

    move v12, v4

    move v13, v3

    goto :goto_80

    :sswitch_9a
    const/16 v2, 0x3b

    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v9, v2, 0x1

    if-nez p3, :cond_ab

    const/4 v2, 0x0

    :goto_a5
    const/4 v4, 0x1

    move-object v10, v2

    move v11, v4

    move v12, v9

    move v13, v3

    goto :goto_80

    :cond_ab
    add-int/lit8 v4, v3, 0x1

    aget-object v2, p3, v3

    move v3, v4

    goto :goto_a5

    :goto_b1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v9, 0x5b

    if-ne v2, v9, :cond_bd

    move v2, v4

    goto :goto_b1

    :cond_bd
    const/16 v9, 0x4c

    if-ne v2, v9, :cond_d7

    const/16 v2, 0x3b

    invoke-virtual {v15, v2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    if-nez p3, :cond_d1

    const/4 v10, 0x0

    :goto_cc
    const/4 v2, 0x1

    move v11, v2

    move v12, v4

    move v13, v3

    goto :goto_80

    :cond_d1
    add-int/lit8 v2, v3, 0x1

    aget-object v10, p3, v3

    move v3, v2

    goto :goto_cc

    :cond_d7
    const/4 v2, 0x1

    move v11, v2

    move v12, v4

    move v13, v3

    goto :goto_80

    :cond_dc
    move v6, v3

    move v8, v4

    goto :goto_6e

    :sswitch_df
    return-void

    :sswitch_e0
    move v2, v4

    goto :goto_b1

    :sswitch_data_e2
    .sparse-switch
        0x29 -> :sswitch_40
        0x44 -> :sswitch_1a
        0x4a -> :sswitch_1a
        0x4c -> :sswitch_1e
        0x5b -> :sswitch_27
    .end sparse-switch

    :sswitch_data_f8
    .sparse-switch
        0x29 -> :sswitch_df
        0x44 -> :sswitch_95
        0x4a -> :sswitch_95
        0x4c -> :sswitch_9a
        0x5b -> :sswitch_e0
    .end sparse-switch
.end method


# virtual methods
.method public a(La/b/e;La/b/f;)V
    .registers 4

    iget-object v0, p2, La/b/f;->a:La/b/c;

    invoke-direct {p0, p1, p2, v0}, La/b/f/b;->a(La/b/c;La/b/d;La/b/c;)V

    return-void
.end method

.method public a(La/b/e;La/b/h;)V
    .registers 4

    iget-object v0, p2, La/b/h;->a:[La/b/c;

    invoke-direct {p0, p1, p2, v0}, La/b/f/b;->a(La/b/c;La/b/j;[La/b/c;)V

    return-void
.end method

.method public a(La/b/k;La/b/l;)V
    .registers 4

    iget-object v0, p2, La/b/l;->a:La/b/c;

    invoke-direct {p0, p1, p2, v0}, La/b/f/b;->a(La/b/c;La/b/d;La/b/c;)V

    return-void
.end method

.method public a(La/b/k;La/b/n;)V
    .registers 4

    iget-object v0, p2, La/b/n;->a:[La/b/c;

    invoke-direct {p0, p1, p2, v0}, La/b/f/b;->a(La/b/c;La/b/j;[La/b/c;)V

    return-void
.end method
