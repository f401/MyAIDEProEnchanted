.class public La/b/f/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/g/a/v;

.field private b:I

.field private c:I

.field private d:Ljava/lang/Object;

.field private final e:[La/b/b/b;

.field private final f:[La/b/d/c;

.field private final g:La/b/f/p;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, La/g/a/v;

    invoke-direct {v0}, La/g/a/v;-><init>()V

    invoke-direct {p0, v0}, La/b/f/c;-><init>(La/g/a/v;)V

    return-void
.end method

.method public constructor <init>(La/g/a/v;)V
    .registers 7

    const/high16 v4, 0x40000000  # 2.0f

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [La/b/b/b;

    iput-object v0, p0, La/b/f/c;->e:[La/b/b/b;

    const/4 v0, 0x2

    new-array v0, v0, [La/b/d/c;

    new-instance v1, La/b/d/k;

    const/16 v2, 0x3a

    invoke-direct {v1, v2, v4}, La/b/d/k;-><init>(BI)V

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-instance v2, La/b/d/k;

    const/16 v3, 0x19

    invoke-direct {v2, v3, v4}, La/b/d/k;-><init>(BI)V

    aput-object v2, v0, v1

    iput-object v0, p0, La/b/f/c;->f:[La/b/d/c;

    new-instance v0, La/b/f/p;

    iget-object v1, p0, La/b/f/c;->e:[La/b/b/b;

    iget-object v2, p0, La/b/f/c;->f:[La/b/d/c;

    invoke-direct {v0, v1, v2}, La/b/f/p;-><init>([La/b/b/b;[La/b/d/c;)V

    iput-object v0, p0, La/b/f/c;->g:La/b/f/p;

    iput-object p1, p0, La/b/f/c;->a:La/g/a/v;

    return-void
.end method

.method private a(I)B
    .registers 5

    packed-switch p1, :pswitch_data_38

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected new array type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x4, 0x8
    const/16 v0, 0x54

    :goto_24
    return v0

    :pswitch_25  #0x5
    const/16 v0, 0x55

    goto :goto_24

    :pswitch_28  #0x9
    const/16 v0, 0x56

    goto :goto_24

    :pswitch_2b  #0xa
    const/16 v0, 0x4f

    goto :goto_24

    :pswitch_2e  #0xb
    const/16 v0, 0x50

    goto :goto_24

    :pswitch_31  #0x6
    const/16 v0, 0x51

    goto :goto_24

    :pswitch_34  #0x7
    const/16 v0, 0x52

    goto :goto_24

    nop

    :pswitch_data_38
    .packed-switch 0x4
        :pswitch_22  #00000004
        :pswitch_25  #00000005
        :pswitch_31  #00000006
        :pswitch_34  #00000007
        :pswitch_22  #00000008
        :pswitch_28  #00000009
        :pswitch_2b  #0000000a
        :pswitch_2e  #0000000b
    .end packed-switch
.end method

.method private a(La/b/c;La/b/j;La/b/a/d;I)I
    .registers 13

    iget-object v0, p0, La/b/f/c;->g:La/b/f/p;

    invoke-virtual {v0}, La/b/f/p;->c()I

    move-result v7

    iget-object v0, p0, La/b/f/c;->g:La/b/f/p;

    invoke-virtual {v0}, La/b/f/p;->a()V

    const/4 v0, 0x0

    move v4, p4

    move v6, v0

    :goto_e
    if-ge v6, v7, :cond_2b

    iget v0, p3, La/b/a/d;->e:I

    if-ge v4, v0, :cond_2b

    iget-object v0, p3, La/b/a/d;->f:[B

    invoke-static {v0, v4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v0

    iget-object v5, p0, La/b/f/c;->g:La/b/f/p;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    invoke-virtual {v0, v4}, La/b/d/c;->a(I)I

    move-result v0

    add-int/2addr v4, v0

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_e

    :cond_2b
    iget-object v0, p0, La/b/f/c;->g:La/b/f/p;

    invoke-virtual {v0}, La/b/f/p;->b()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, La/b/f/c;->g:La/b/f/p;

    add-int/lit8 v1, v7, -0x1

    invoke-virtual {v0, v1}, La/b/f/p;->a(I)I

    move-result v0

    :goto_3b
    return v0

    :cond_3c
    const/4 v0, -0x1

    goto :goto_3b
.end method

.method private a(II)Ljava/lang/Object;
    .registers 6

    packed-switch p1, :pswitch_data_3a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected new array type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x4
    new-array v0, p2, [Z

    :goto_24
    return-object v0

    :pswitch_25  #0x8
    new-array v0, p2, [B

    goto :goto_24

    :pswitch_28  #0x5
    new-array v0, p2, [C

    goto :goto_24

    :pswitch_2b  #0x9
    new-array v0, p2, [S

    goto :goto_24

    :pswitch_2e  #0xa
    new-array v0, p2, [I

    goto :goto_24

    :pswitch_31  #0xb
    new-array v0, p2, [J

    goto :goto_24

    :pswitch_34  #0x6
    new-array v0, p2, [F

    goto :goto_24

    :pswitch_37  #0x7
    new-array v0, p2, [D

    goto :goto_24

    :pswitch_data_3a
    .packed-switch 0x4
        :pswitch_22  #00000004
        :pswitch_28  #00000005
        :pswitch_34  #00000006
        :pswitch_37  #00000007
        :pswitch_25  #00000008
        :pswitch_2b  #00000009
        :pswitch_2e  #0000000a
        :pswitch_31  #0000000b
    .end packed-switch
.end method

.method private a(ILjava/lang/Object;ILa/d/a/bd;)V
    .registers 8

    packed-switch p1, :pswitch_data_92

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected new array type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x4
    check-cast p2, [Z

    invoke-virtual {p4}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ae;->e()I

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    :goto_2f
    aput-boolean v0, p2, p3

    :goto_31
    return-void

    :cond_32
    const/4 v0, 0x0

    goto :goto_2f

    :pswitch_34  #0x8
    check-cast p2, [B

    invoke-virtual {p4}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ae;->e()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    goto :goto_31

    :pswitch_42  #0x5
    check-cast p2, [C

    invoke-virtual {p4}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ae;->e()I

    move-result v0

    int-to-char v0, v0

    aput-char v0, p2, p3

    goto :goto_31

    :pswitch_50  #0x9
    check-cast p2, [S

    invoke-virtual {p4}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ae;->e()I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p2, p3

    goto :goto_31

    :pswitch_5e  #0xa
    check-cast p2, [I

    invoke-virtual {p4}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ae;->e()I

    move-result v0

    aput v0, p2, p3

    goto :goto_31

    :pswitch_6b  #0xb
    check-cast p2, [J

    invoke-virtual {p4}, La/d/a/bd;->k_()La/d/a/af;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/af;->e()J

    move-result-wide v0

    aput-wide v0, p2, p3

    goto :goto_31

    :pswitch_78  #0x6
    check-cast p2, [F

    invoke-virtual {p4}, La/d/a/bd;->l()La/d/a/u;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/u;->o_()F

    move-result v0

    aput v0, p2, p3

    goto :goto_31

    :pswitch_85  #0x7
    check-cast p2, [D

    invoke-virtual {p4}, La/d/a/bd;->i()La/d/a/t;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/t;->m_()D

    move-result-wide v0

    aput-wide v0, p2, p3

    goto :goto_31

    :pswitch_data_92
    .packed-switch 0x4
        :pswitch_22  #00000004
        :pswitch_42  #00000005
        :pswitch_78  #00000006
        :pswitch_85  #00000007
        :pswitch_34  #00000008
        :pswitch_50  #00000009
        :pswitch_5e  #0000000a
        :pswitch_6b  #0000000b
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, La/b/f/c;->b:I

    return v0
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)Z
    .registers 23

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, La/b/f/c;->d:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, La/b/f/c;->a:La/g/a/v;

    move/from16 v0, p4

    invoke-virtual {v4, v0}, La/g/a/v;->j(I)La/d/j;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v4

    invoke-virtual {v4}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v4

    invoke-virtual {v4}, La/d/a/ae;->c()Z

    move-result v5

    if-nez v5, :cond_20

    const/4 v4, 0x0

    :goto_1f
    return v4

    :cond_20
    invoke-virtual {v4}, La/d/a/ae;->e()I

    move-result v8

    move-object/from16 v0, p5

    iget v9, v0, La/b/d/h;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, La/b/f/c;->a(I)B

    move-result v10

    move-object/from16 v0, p3

    iget-object v11, v0, La/b/a/d;->f:[B

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, La/b/d/c;->a(I)I

    move-result v4

    add-int v4, v4, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, La/b/f/c;->a(La/b/c;La/b/j;La/b/a/d;I)I

    move-result v5

    if-lez v5, :cond_13b

    invoke-static {v11, v5}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object p5

    move v4, v5

    move v6, v5

    :goto_50
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, La/b/d/c;->a(I)I

    move-result v12

    const/4 v5, 0x0

    move v7, v6

    :goto_58
    if-ge v5, v8, :cond_129

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, La/b/d/c;->a(I)I

    move-result v13

    add-int/2addr v7, v13

    invoke-static {v11, v7}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, La/b/d/c;->b(La/b/c;)I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_85

    move-object/from16 v0, p0

    iget-object v14, v0, La/b/f/c;->a:La/g/a/v;

    invoke-virtual {v14, v7}, La/g/a/v;->k(I)La/d/j;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, La/d/j;->g(I)La/d/a/bd;

    move-result-object v14

    invoke-virtual {v14}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v14

    invoke-virtual {v14, v4}, La/d/a/ad;->b(I)Z

    move-result v14

    if-nez v14, :cond_87

    :cond_85
    const/4 v4, 0x0

    goto :goto_1f

    :cond_87
    invoke-virtual {v13, v7}, La/b/d/c;->a(I)I

    move-result v13

    add-int/2addr v7, v13

    invoke-static {v11, v7}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, La/b/d/c;->b(La/b/c;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_9b

    const/4 v4, 0x0

    goto :goto_1f

    :cond_9b
    move-object/from16 v0, p0

    iget-object v14, v0, La/b/f/c;->a:La/g/a/v;

    invoke-virtual {v14, v7}, La/g/a/v;->k(I)La/d/j;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v14

    invoke-virtual {v14}, La/d/a/bd;->j()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c6

    invoke-virtual {v14}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v15

    invoke-virtual {v15}, La/d/a/ae;->c()Z

    move-result v15

    if-eqz v15, :cond_c6

    invoke-virtual {v14}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v14

    invoke-virtual {v14}, La/d/a/ae;->e()I

    move-result v14

    if-eq v14, v5, :cond_c9

    :cond_c6
    const/4 v4, 0x0

    goto/16 :goto_1f

    :cond_c9
    invoke-virtual {v13, v7}, La/b/d/c;->a(I)I

    move-result v13

    add-int/2addr v7, v13

    invoke-static {v11, v7}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, La/b/d/c;->b(La/b/c;)I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_ee

    move-object/from16 v0, p0

    iget-object v14, v0, La/b/f/c;->a:La/g/a/v;

    invoke-virtual {v14, v7}, La/g/a/v;->k(I)La/d/j;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v14

    invoke-virtual {v14}, La/d/a/bd;->c()Z

    move-result v14

    if-nez v14, :cond_f1

    :cond_ee
    const/4 v4, 0x0

    goto/16 :goto_1f

    :cond_f1
    move-object/from16 v0, p0

    iget-object v14, v0, La/b/f/c;->a:La/g/a/v;

    invoke-virtual {v14, v7}, La/g/a/v;->k(I)La/d/j;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v14

    invoke-virtual {v13, v7}, La/b/d/c;->a(I)I

    move-result v13

    add-int/2addr v7, v13

    invoke-static {v11, v7}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object p5

    move-object/from16 v0, p5

    iget-byte v13, v0, La/b/d/c;->c:B

    if-eq v13, v10, :cond_110

    const/4 v4, 0x0

    goto/16 :goto_1f

    :cond_110
    if-nez v5, :cond_11c

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, La/b/f/c;->a(II)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, La/b/f/c;->d:Ljava/lang/Object;

    :cond_11c
    move-object/from16 v0, p0

    iget-object v13, v0, La/b/f/c;->d:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v5, v14}, La/b/f/c;->a(ILjava/lang/Object;ILa/d/a/bd;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_58

    :cond_129
    add-int v5, v6, v12

    move-object/from16 v0, p0

    iput v5, v0, La/b/f/c;->b:I

    move-object/from16 v0, p0

    iput v7, v0, La/b/f/c;->c:I

    if-le v7, v4, :cond_138

    const/4 v4, 0x1

    goto/16 :goto_1f

    :cond_138
    const/4 v4, 0x0

    goto/16 :goto_1f

    :cond_13b
    move/from16 v4, p4

    move/from16 v6, p4

    goto/16 :goto_50
.end method

.method public b()I
    .registers 2

    iget v0, p0, La/b/f/c;->c:I

    return v0
.end method

.method public c()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, La/b/f/c;->d:Ljava/lang/Object;

    return-object v0
.end method
