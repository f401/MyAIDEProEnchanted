.class final Lcom/a/b/a/b/ak;
.super Lcom/a/b/a/b/ap;


# static fields
.field private static final a:Lcom/a/b/e/c/ae;

.field private static final b:Lcom/a/b/e/c/z;


# instance fields
.field private final c:Lcom/a/b/a/b/ab;

.field private final d:Lcom/a/b/a/b/o;

.field private final e:Lcom/a/b/a/e/h;

.field private final f:Lcom/a/b/e/b/ah;

.field private final g:I

.field private final h:Ljava/util/ArrayList;

.field private i:Lcom/a/b/e/d/e;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Lcom/a/b/a/b/aa;

.field private q:Lcom/a/b/e/b/aa;

.field private r:Lcom/a/b/e/b/ad;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/a/b/e/c/ae;

    const-string v1, "java/lang/reflect/Array"

    invoke-static {v1}, Lcom/a/b/e/d/c;->c(Ljava/lang/String;)Lcom/a/b/e/d/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    sput-object v0, Lcom/a/b/a/b/ak;->a:Lcom/a/b/e/c/ae;

    new-instance v0, Lcom/a/b/e/c/z;

    sget-object v1, Lcom/a/b/a/b/ak;->a:Lcom/a/b/e/c/ae;

    new-instance v2, Lcom/a/b/e/c/aa;

    new-instance v3, Lcom/a/b/e/c/ad;

    const-string v4, "newInstance"

    invoke-direct {v3, v4}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/a/b/e/c/ad;

    const-string v5, "(Ljava/lang/Class;[I)Ljava/lang/Object;"

    invoke-direct {v4, v5}, Lcom/a/b/e/c/ad;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/a/b/e/c/aa;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V

    invoke-direct {v0, v1, v2}, Lcom/a/b/e/c/z;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    sput-object v0, Lcom/a/b/a/b/ak;->b:Lcom/a/b/e/c/z;

    return-void
.end method

.method public constructor <init>(Lcom/a/b/a/b/ab;Lcom/a/b/a/b/o;Lcom/a/b/e/b/ah;Lcom/a/b/a/e/h;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/a/b/a/b/o;->j()Lcom/a/b/e/d/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/a/b/ap;-><init>(Lcom/a/b/e/d/a;)V

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "methods == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ropper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/a/b/a/b/ak;->c:Lcom/a/b/a/b/ab;

    iput-object p2, p0, Lcom/a/b/a/b/ak;->d:Lcom/a/b/a/b/o;

    iput-object p4, p0, Lcom/a/b/a/b/ak;->e:Lcom/a/b/a/e/h;

    iput-object p3, p0, Lcom/a/b/a/b/ak;->f:Lcom/a/b/e/b/ah;

    invoke-virtual {p2}, Lcom/a/b/a/b/o;->l()I

    move-result v0

    iput v0, p0, Lcom/a/b/a/b/ak;->g:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    iput-boolean v2, p0, Lcom/a/b/a/b/ak;->j:Z

    iput-boolean v2, p0, Lcom/a/b/a/b/ak;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/a/b/ak;->l:I

    iput v2, p0, Lcom/a/b/a/b/ak;->m:I

    iput-boolean v2, p0, Lcom/a/b/a/b/ak;->o:Z

    iput-object v3, p0, Lcom/a/b/a/b/ak;->q:Lcom/a/b/e/b/aa;

    iput-object v3, p0, Lcom/a/b/a/b/ak;->r:Lcom/a/b/e/b/ad;

    return-void
.end method

.method private a(ILcom/a/b/e/c/a;)I
    .registers 7

    const/16 v1, 0x34

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x26

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x27

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_6
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_b
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_c
    const/16 v0, 0x18

    goto :goto_0

    :sswitch_d
    const/16 v0, 0x19

    goto :goto_0

    :sswitch_e
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_f
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_10
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x1d

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x1e

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x1f

    goto :goto_0

    :sswitch_14
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_15
    const/16 v0, 0x1b

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x1c

    goto :goto_0

    :sswitch_17
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_18
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_19
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_1a
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_1b
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_1c
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_1d
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1e
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_1f
    const/16 v0, 0x21

    goto :goto_0

    :sswitch_20
    const/16 v0, 0x2e

    goto :goto_0

    :sswitch_21
    const/16 v0, 0x30

    goto :goto_0

    :sswitch_22
    const/16 v0, 0x2d

    goto :goto_0

    :sswitch_23
    const/16 v0, 0x2f

    goto :goto_0

    :sswitch_24
    check-cast p2, Lcom/a/b/e/c/z;

    invoke-virtual {p2}, Lcom/a/b/e/c/z;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    iget-object v2, p0, Lcom/a/b/a/b/ak;->d:Lcom/a/b/a/b/o;

    invoke-virtual {v2}, Lcom/a/b/a/b/o;->i()Lcom/a/b/e/c/ae;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/a/b/a/b/ak;->e:Lcom/a/b/a/e/h;

    invoke-interface {v2}, Lcom/a/b/a/e/h;->d_()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/a/b/e/c/z;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3a

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/a/b/a/b/ak;->e:Lcom/a/b/a/e/h;

    invoke-interface {v2, v0}, Lcom/a/b/a/e/h;->a(I)Lcom/a/b/a/e/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/a/b/a/e/g;->g()I

    move-result v3

    invoke-static {v3}, Lcom/a/b/e/b/a;->e(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/a/b/e/c/z;->o()Lcom/a/b/e/c/aa;

    move-result-object v3

    invoke-interface {v2}, Lcom/a/b/a/e/g;->d()Lcom/a/b/e/c/aa;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/a/b/e/c/aa;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/16 v0, 0x32

    goto/16 :goto_0

    :sswitch_25
    check-cast p2, Lcom/a/b/e/c/z;

    invoke-virtual {p2}, Lcom/a/b/e/c/z;->j()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/a/b/e/c/z;->n()Lcom/a/b/e/c/ae;

    move-result-object v0

    iget-object v2, p0, Lcom/a/b/a/b/ak;->d:Lcom/a/b/a/b/o;

    invoke-virtual {v2}, Lcom/a/b/a/b/o;->i()Lcom/a/b/e/c/ae;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/a/b/e/c/ae;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x33

    goto/16 :goto_0

    :sswitch_26
    const/16 v0, 0x31

    goto/16 :goto_0

    :sswitch_27
    const/16 v0, 0x35

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0x3b

    goto/16 :goto_0

    :sswitch_29
    const/16 v0, 0x28

    goto/16 :goto_0

    :sswitch_2a
    const/16 v0, 0x29

    goto/16 :goto_0

    :sswitch_2b
    const/16 v0, 0x22

    goto/16 :goto_0

    :sswitch_2c
    const/16 v0, 0x23

    goto/16 :goto_0

    :sswitch_2d
    const/16 v0, 0x2b

    goto/16 :goto_0

    :sswitch_2e
    const/16 v0, 0x2c

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0x24

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0x25

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x2e -> :sswitch_3
        0x36 -> :sswitch_2
        0x4f -> :sswitch_4
        0x60 -> :sswitch_5
        0x64 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6c -> :sswitch_8
        0x70 -> :sswitch_9
        0x74 -> :sswitch_a
        0x78 -> :sswitch_b
        0x7a -> :sswitch_c
        0x7c -> :sswitch_d
        0x7e -> :sswitch_e
        0x80 -> :sswitch_f
        0x82 -> :sswitch_10
        0x84 -> :sswitch_5
        0x85 -> :sswitch_11
        0x86 -> :sswitch_11
        0x87 -> :sswitch_11
        0x88 -> :sswitch_11
        0x89 -> :sswitch_11
        0x8a -> :sswitch_11
        0x8b -> :sswitch_11
        0x8c -> :sswitch_11
        0x8d -> :sswitch_11
        0x8e -> :sswitch_11
        0x8f -> :sswitch_11
        0x90 -> :sswitch_11
        0x91 -> :sswitch_12
        0x92 -> :sswitch_13
        0x93 -> :sswitch_14
        0x94 -> :sswitch_15
        0x95 -> :sswitch_15
        0x96 -> :sswitch_16
        0x97 -> :sswitch_15
        0x98 -> :sswitch_16
        0x99 -> :sswitch_17
        0x9a -> :sswitch_18
        0x9b -> :sswitch_19
        0x9c -> :sswitch_1a
        0x9d -> :sswitch_1b
        0x9e -> :sswitch_1c
        0x9f -> :sswitch_17
        0xa0 -> :sswitch_18
        0xa1 -> :sswitch_19
        0xa2 -> :sswitch_1a
        0xa3 -> :sswitch_1b
        0xa4 -> :sswitch_1c
        0xa5 -> :sswitch_17
        0xa6 -> :sswitch_18
        0xa7 -> :sswitch_1d
        0xab -> :sswitch_1e
        0xac -> :sswitch_1f
        0xb1 -> :sswitch_1f
        0xb2 -> :sswitch_20
        0xb3 -> :sswitch_21
        0xb4 -> :sswitch_22
        0xb5 -> :sswitch_23
        0xb6 -> :sswitch_24
        0xb7 -> :sswitch_25
        0xb8 -> :sswitch_26
        0xb9 -> :sswitch_27
        0xba -> :sswitch_28
        0xbb -> :sswitch_29
        0xbc -> :sswitch_2a
        0xbd -> :sswitch_2a
        0xbe -> :sswitch_2b
        0xbf -> :sswitch_2c
        0xc0 -> :sswitch_2d
        0xc1 -> :sswitch_2e
        0xc2 -> :sswitch_2f
        0xc3 -> :sswitch_30
        0xc6 -> :sswitch_17
        0xc7 -> :sswitch_18
    .end sparse-switch
.end method

.method private a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/j;
    .registers 12

    new-instance v0, Lcom/a/b/e/b/n;

    move-object v5, p5

    check-cast v5, Lcom/a/b/e/c/z;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/b/e/b/n;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/z;)V

    return-object v0
.end method

.method private a(II)Lcom/a/b/e/b/x;
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/a/b/a/b/ak;->c()I

    move-result v3

    if-nez v3, :cond_0

    sget-object v0, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/a/b/a/b/ak;->j()I

    move-result v1

    if-ltz v1, :cond_1

    new-instance v0, Lcom/a/b/e/b/x;

    invoke-direct {v0, v5}, Lcom/a/b/e/b/x;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/a/b/a/b/ak;->c(I)Lcom/a/b/e/d/d;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    :goto_1
    invoke-virtual {v0}, Lcom/a/b/e/b/x;->c_()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/b/e/b/x;

    invoke-direct {v0, v3}, Lcom/a/b/e/b/x;-><init>(I)V

    move v1, v2

    :goto_2
    if-lt v1, v3, :cond_2

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 v1, 0x3

    if-eq v3, v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/a/b/a/b/ak;->c(I)Lcom/a/b/e/d/d;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    invoke-virtual {v4}, Lcom/a/b/e/b/u;->k()I

    move-result v4

    add-int/2addr p2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v0, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v0, v6}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    invoke-virtual {v0, v5, v1}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    invoke-virtual {v0, v6, v3}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    goto :goto_1

    :sswitch_1
    if-eq v3, v6, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v1

    invoke-virtual {v0, v5}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    invoke-virtual {v0, v5, v1}, Lcom/a/b/e/b/x;->a(ILcom/a/b/e/b/u;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0xb5 -> :sswitch_1
    .end sparse-switch
.end method

.method private a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;)V
    .registers 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "op == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pos == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/a/b/a/b/ak;->q:Lcom/a/b/e/b/aa;

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/a/b/a/b/ak;->q:Lcom/a/b/e/b/aa;

    iput-object p2, p0, Lcom/a/b/a/b/ak;->r:Lcom/a/b/e/b/ad;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/a/b/a/b/ak;->q:Lcom/a/b/e/b/aa;

    if-eq v0, p1, :cond_4

    new-instance v0, Lcom/a/b/a/b/al;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "return op mismatch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/a/b/a/b/ak;->q:Lcom/a/b/e/b/aa;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/b/al;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p2}, Lcom/a/b/e/b/ad;->a()I

    move-result v0

    iget-object v1, p0, Lcom/a/b/a/b/ak;->r:Lcom/a/b/e/b/ad;

    invoke-virtual {v1}, Lcom/a/b/e/b/ad;->a()I

    move-result v1

    if-le v0, v1, :cond_2

    iput-object p2, p0, Lcom/a/b/a/b/ak;->r:Lcom/a/b/e/b/ad;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/a/b/a/b/q;II)V
    .registers 24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/b/a/b/ak;->g:I

    invoke-virtual/range {p1 .. p1}, Lcom/a/b/a/b/q;->d()Lcom/a/b/a/b/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/a/b/p;->b()I

    move-result v3

    add-int/2addr v3, v2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v3}, Lcom/a/b/a/b/ak;->a(II)Lcom/a/b/e/b/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/a/b/e/b/x;->d_()I

    move-result v13

    invoke-super/range {p0 .. p3}, Lcom/a/b/a/b/ap;->a(Lcom/a/b/a/b/q;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ak;->d:Lcom/a/b/a/b/o;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/a/b/a/b/o;->a(I)Lcom/a/b/e/b/ad;

    move-result-object v4

    const/16 v2, 0x36

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/b/a/b/ak;->b(Z)Lcom/a/b/e/b/u;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/a/b/a/b/ak;->l()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v10, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_1
    if-eqz v10, :cond_7

    move-object v9, v10

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/a/b/a/b/ak;->f()Lcom/a/b/e/c/a;

    move-result-object v8

    const/16 v2, 0xc5

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/a/b/a/b/ak;->o:Z

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->m:I

    invoke-virtual {v10}, Lcom/a/b/e/b/u;->j()I

    move-result v2

    sget-object v3, Lcom/a/b/e/d/c;->J:Lcom/a/b/e/d/c;

    invoke-static {v2, v3}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v12

    new-instance v2, Lcom/a/b/e/b/af;

    sget-object v3, Lcom/a/b/e/d/c;->J:Lcom/a/b/e/d/c;

    invoke-static {v3, v13}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;I)Lcom/a/b/e/b/aa;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    sget-object v7, Lcom/a/b/e/c/ae;->q:Lcom/a/b/e/c/ae;

    invoke-direct/range {v2 .. v7}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/a/b/e/b/s;

    sget-object v3, Lcom/a/b/e/d/c;->J:Lcom/a/b/e/d/c;

    invoke-static {v3}, Lcom/a/b/e/b/ac;->d(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v3

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v2, v3, v4, v12, v5}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v8

    check-cast v2, Lcom/a/b/e/c/ae;

    invoke-virtual {v2}, Lcom/a/b/e/c/ae;->i()Lcom/a/b/e/d/c;

    move-result-object v2

    const/4 v3, 0x0

    move-object v11, v2

    :goto_3
    if-lt v3, v13, :cond_8

    invoke-virtual {v10}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    sget-object v3, Lcom/a/b/e/d/c;->m:Lcom/a/b/e/d/c;

    invoke-static {v2, v3}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v14

    invoke-virtual {v11}, Lcom/a/b/e/d/c;->n()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v11}, Lcom/a/b/e/c/n;->a(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/n;

    move-result-object v7

    new-instance v2, Lcom/a/b/e/b/af;

    sget-object v3, Lcom/a/b/e/b/ac;->cw:Lcom/a/b/e/b/aa;

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    invoke-direct/range {v2 .. v7}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/a/b/e/b/s;

    invoke-virtual {v14}, Lcom/a/b/e/b/u;->a()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-static {v3}, Lcom/a/b/e/b/ac;->e(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v3

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v2, v3, v4, v14, v5}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/a/b/e/b/u;->g()I

    move-result v2

    sget-object v3, Lcom/a/b/e/d/c;->r:Lcom/a/b/e/d/c;

    invoke-static {v2, v3}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v11

    new-instance v2, Lcom/a/b/e/b/af;

    sget-object v3, Lcom/a/b/a/b/ak;->b:Lcom/a/b/e/c/z;

    invoke-virtual {v3}, Lcom/a/b/e/c/z;->i()Lcom/a/b/e/d/a;

    move-result-object v3

    invoke-static {v3}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/a;)Lcom/a/b/e/b/aa;

    move-result-object v3

    invoke-static {v14, v12}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    sget-object v7, Lcom/a/b/a/b/ak;->b:Lcom/a/b/e/c/z;

    invoke-direct/range {v2 .. v7}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/a/b/e/b/s;

    sget-object v3, Lcom/a/b/a/b/ak;->b:Lcom/a/b/e/c/z;

    invoke-virtual {v3}, Lcom/a/b/e/c/z;->i()Lcom/a/b/e/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-static {v3}, Lcom/a/b/e/b/ac;->d(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v3

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v2, v3, v4, v11, v5}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p3, 0xc0

    invoke-static {v11}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v12

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v8}, Lcom/a/b/a/b/ak;->a(ILcom/a/b/e/c/a;)I

    move-result v5

    invoke-static {v5, v9, v12, v8}, Lcom/a/b/e/b/ac;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/aa;

    move-result-object v6

    if-eqz v10, :cond_d

    invoke-virtual {v6}, Lcom/a/b/e/b/aa;->e()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/b/a/b/ak;->m:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->m:I

    invoke-virtual {v6}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_c

    move-object v2, v8

    check-cast v2, Lcom/a/b/e/c/j;

    invoke-virtual {v2}, Lcom/a/b/e/c/j;->b()Lcom/a/b/e/d/c;

    move-result-object v2

    :goto_6
    new-instance v3, Lcom/a/b/e/b/s;

    invoke-static {v2}, Lcom/a/b/e/b/ac;->d(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v2

    sget-object v7, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v3, v2, v4, v10, v7}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    const/4 v11, 0x0

    move-object/from16 v19, v3

    :goto_7
    const/16 v2, 0x29

    if-ne v5, v2, :cond_e

    invoke-virtual {v6}, Lcom/a/b/e/b/aa;->b()Lcom/a/b/e/d/c;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/e/c/ae;->b(Lcom/a/b/e/d/c;)Lcom/a/b/e/c/ae;

    move-result-object v7

    move v2, v5

    move-object v9, v6

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/a/b/a/b/ak;->h()Lcom/a/b/a/b/ao;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/a/b/a/b/ak;->i()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v9}, Lcom/a/b/e/b/aa;->h()Z

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/a/b/a/b/ak;->o:Z

    or-int/2addr v8, v5

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/a/b/a/b/ak;->o:Z

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/a/b/a/b/ao;->a()I

    move-result v2

    if-nez v2, :cond_11

    new-instance v8, Lcom/a/b/e/b/s;

    sget-object v2, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    const/4 v3, 0x0

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v8, v2, v4, v3, v5}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->l:I

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/b/a/b/ak;->m:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->m:I

    new-instance v2, Lcom/a/b/e/b/i;

    sget-object v3, Lcom/a/b/e/b/ac;->cY:Lcom/a/b/e/b/aa;

    invoke-virtual/range {v19 .. v19}, Lcom/a/b/e/b/j;->h()Lcom/a/b/e/b/u;

    move-result-object v5

    invoke-static {v5}, Lcom/a/b/e/b/x;->a(Lcom/a/b/e/b/u;)Lcom/a/b/e/b/x;

    move-result-object v5

    invoke-direct/range {v2 .. v7}, Lcom/a/b/e/b/i;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Ljava/util/ArrayList;Lcom/a/b/e/c/a;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_a
    :pswitch_0
    return-void

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    if-nez v10, :cond_0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/b/a/b/ak;->d(I)Lcom/a/b/e/d/d;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v10

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ak;->c:Lcom/a/b/a/b/ab;

    invoke-virtual {v2}, Lcom/a/b/a/b/ab;->a()I

    move-result v2

    new-array v7, v13, [Lcom/a/b/e/b/u;

    const/4 v6, 0x0

    :goto_b
    if-lt v6, v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/a/b/a/b/ak;->e()I

    move-result v5

    move v2, v3

    :goto_c
    if-eqz v5, :cond_2

    and-int/lit8 v3, v5, 0xf

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v7, v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    new-instance v9, Lcom/a/b/e/b/s;

    invoke-static {v6}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v10

    invoke-virtual {v3, v2}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v11

    invoke-direct {v9, v10, v4, v11, v3}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Lcom/a/b/e/d/d;->a()Lcom/a/b/e/d/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/d/c;->j()I

    move-result v3

    add-int/2addr v2, v3

    shr-int/lit8 v3, v5, 0x4

    move v5, v3

    goto :goto_c

    :cond_6
    invoke-virtual {v5, v6}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v8

    invoke-virtual {v8}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v9

    invoke-virtual {v8, v2}, Lcom/a/b/e/b/u;->b(I)Lcom/a/b/e/b/u;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    new-instance v12, Lcom/a/b/e/b/s;

    invoke-static {v9}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v9

    invoke-direct {v12, v9, v4, v10, v8}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput-object v10, v7, v6

    invoke-virtual {v8}, Lcom/a/b/e/b/u;->k()I

    move-result v8

    add-int/2addr v2, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_7
    sget-object v2, Lcom/a/b/e/d/c;->i:Lcom/a/b/e/d/c;

    move-object v9, v2

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v11}, Lcom/a/b/e/d/c;->u()Lcom/a/b/e/d/c;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    move-object v11, v2

    goto/16 :goto_3

    :cond_9
    new-instance v2, Lcom/a/b/e/b/af;

    sget-object v3, Lcom/a/b/e/b/ac;->q:Lcom/a/b/e/b/aa;

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    new-instance v7, Lcom/a/b/e/c/ae;

    invoke-direct {v7, v11}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    invoke-direct/range {v2 .. v7}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    goto/16 :goto_4

    :cond_a
    const/16 v2, 0xa8

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/a/b/a/b/ak;->n:Z

    goto/16 :goto_a

    :cond_b
    const/16 v2, 0xa9

    move/from16 v0, p3

    if-ne v0, v2, :cond_1d

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/a/b/a/b/ak;->c(I)Lcom/a/b/e/d/d;

    move-result-object v2

    check-cast v2, Lcom/a/b/a/b/aa;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/a/b/a/b/ak;->p:Lcom/a/b/a/b/aa;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Argument to RET was not a ReturnAddress"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_c
    move-object v2, v8

    check-cast v2, Lcom/a/b/e/c/z;

    invoke-virtual {v2}, Lcom/a/b/e/c/z;->i()Lcom/a/b/e/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/d/a;->b()Lcom/a/b/e/d/c;

    move-result-object v2

    goto/16 :goto_6

    :cond_d
    if-eqz v10, :cond_1c

    invoke-virtual {v6}, Lcom/a/b/e/b/aa;->h()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/a/b/a/b/ak;->m:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->m:I

    new-instance v2, Lcom/a/b/e/b/s;

    invoke-virtual {v10}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v3

    invoke-static {v3}, Lcom/a/b/e/b/ac;->e(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v3

    sget-object v7, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v2, v3, v4, v10, v7}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    const/4 v11, 0x0

    move-object/from16 v19, v2

    goto/16 :goto_7

    :cond_e
    if-nez v8, :cond_1b

    const/4 v2, 0x2

    if-ne v13, v2, :cond_1b

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v3

    invoke-interface {v3}, Lcom/a/b/e/d/d;->f()Z

    move-result v7

    if-nez v7, :cond_f

    invoke-interface {v2}, Lcom/a/b/e/d/d;->f()Z

    move-result v7

    if-eqz v7, :cond_1b

    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/a/b/a/b/ak;->f:Lcom/a/b/e/b/ah;

    const/4 v10, 0x0

    invoke-virtual {v12, v10}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v13

    invoke-interface {v7, v6, v10, v13}, Lcom/a/b/e/b/ah;->a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v3}, Lcom/a/b/e/d/d;->f()Z

    move-result v7

    if-eqz v7, :cond_10

    move-object v2, v3

    check-cast v2, Lcom/a/b/e/c/a;

    invoke-virtual {v12}, Lcom/a/b/e/b/x;->g()Lcom/a/b/e/b/x;

    move-result-object v12

    invoke-virtual {v6}, Lcom/a/b/e/b/aa;->a()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_1a

    const/16 v5, 0xe

    check-cast v3, Lcom/a/b/e/c/p;

    invoke-virtual {v3}, Lcom/a/b/e/c/p;->i_()I

    move-result v2

    neg-int v2, v2

    invoke-static {v2}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v2

    move v3, v5

    move-object v7, v2

    :goto_d
    invoke-static {v3, v9, v12, v7}, Lcom/a/b/e/b/ac;->a(ILcom/a/b/e/d/d;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/aa;

    move-result-object v9

    move v2, v3

    goto/16 :goto_8

    :cond_10
    check-cast v2, Lcom/a/b/e/c/a;

    invoke-virtual {v12}, Lcom/a/b/e/b/x;->f()Lcom/a/b/e/b/x;

    move-result-object v12

    move v3, v5

    move-object v7, v2

    goto :goto_d

    :cond_11
    invoke-virtual {v3}, Lcom/a/b/a/b/ao;->e()Lcom/a/b/g/n;

    move-result-object v13

    new-instance v8, Lcom/a/b/e/b/ae;

    move-object v10, v4

    invoke-direct/range {v8 .. v13}, Lcom/a/b/e/b/ae;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/g/n;)V

    invoke-virtual {v13}, Lcom/a/b/g/n;->b()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->l:I

    goto/16 :goto_9

    :cond_12
    const/16 v3, 0x21

    if-ne v2, v3, :cond_14

    invoke-virtual {v12}, Lcom/a/b/e/b/x;->d_()I

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/a/b/e/b/x;->b(I)Lcom/a/b/e/b/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->h()Lcom/a/b/e/d/d;

    move-result-object v3

    invoke-virtual {v2}, Lcom/a/b/e/b/u;->g()I

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    new-instance v8, Lcom/a/b/e/b/s;

    invoke-static {v3}, Lcom/a/b/e/b/ac;->a(Lcom/a/b/e/d/d;)Lcom/a/b/e/b/aa;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11, v3}, Lcom/a/b/e/b/u;->a(ILcom/a/b/e/d/d;)Lcom/a/b/e/b/u;

    move-result-object v3

    invoke-direct {v8, v10, v4, v3, v2}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/u;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    new-instance v8, Lcom/a/b/e/b/s;

    sget-object v2, Lcom/a/b/e/b/ac;->s:Lcom/a/b/e/b/aa;

    const/4 v3, 0x0

    sget-object v5, Lcom/a/b/e/b/x;->a:Lcom/a/b/e/b/x;

    invoke-direct {v8, v2, v4, v3, v5}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->l:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcom/a/b/a/b/ak;->a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/a/b/a/b/ak;->k:Z

    goto/16 :goto_9

    :cond_14
    if-eqz v7, :cond_17

    if-eqz v5, :cond_16

    invoke-virtual {v9}, Lcom/a/b/e/b/aa;->a()I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    move-object/from16 v17, v0

    move-object/from16 v13, p0

    move-object v14, v9

    move-object v15, v4

    move-object/from16 v16, v12

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/a/b/a/b/ak;->a(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)Lcom/a/b/e/b/j;

    move-result-object v8

    :goto_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/a/b/a/b/ak;->j:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    invoke-interface {v2}, Lcom/a/b/e/d/e;->d_()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->l:I

    goto/16 :goto_9

    :cond_15
    new-instance v13, Lcom/a/b/e/b/af;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    move-object/from16 v17, v0

    move-object v14, v9

    move-object v15, v4

    move-object/from16 v16, v12

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v18}, Lcom/a/b/e/b/af;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;Lcom/a/b/e/c/a;)V

    move-object v8, v13

    goto :goto_e

    :cond_16
    new-instance v8, Lcom/a/b/e/b/r;

    move-object v10, v4

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/a/b/e/b/r;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;Lcom/a/b/e/c/a;)V

    goto/16 :goto_9

    :cond_17
    if-eqz v5, :cond_19

    new-instance v8, Lcom/a/b/e/b/ag;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    invoke-direct {v8, v9, v4, v12, v2}, Lcom/a/b/e/b/ag;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/x;Lcom/a/b/e/d/e;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/a/b/a/b/ak;->j:Z

    const/16 v2, 0xbf

    move/from16 v0, p3

    if-ne v0, v2, :cond_18

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->l:I

    goto/16 :goto_9

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    invoke-interface {v2}, Lcom/a/b/e/d/e;->d_()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/a/b/a/b/ak;->l:I

    goto/16 :goto_9

    :cond_19
    new-instance v8, Lcom/a/b/e/b/s;

    invoke-direct {v8, v9, v4, v11, v12}, Lcom/a/b/e/b/s;-><init>(Lcom/a/b/e/b/aa;Lcom/a/b/e/b/ad;Lcom/a/b/e/b/u;Lcom/a/b/e/b/x;)V

    goto/16 :goto_9

    :cond_1a
    move v3, v5

    move-object v7, v2

    goto/16 :goto_d

    :cond_1b
    move-object v7, v8

    move v2, v5

    move-object v9, v6

    goto/16 :goto_8

    :cond_1c
    const/4 v2, 0x0

    move-object v11, v10

    move-object/from16 v19, v2

    goto/16 :goto_7

    :cond_1d
    move-object v12, v5

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/a/b/e/d/e;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/a/b/a/b/ak;->i:Lcom/a/b/e/d/e;

    iget-object v0, p0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/a/b/a/b/ak;->j:Z

    iput-boolean v1, p0, Lcom/a/b/a/b/ak;->k:Z

    iput v1, p0, Lcom/a/b/a/b/ak;->l:I

    iput v1, p0, Lcom/a/b/a/b/ak;->m:I

    iput-boolean v1, p0, Lcom/a/b/a/b/ak;->o:Z

    iput-boolean v1, p0, Lcom/a/b/a/b/ak;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/a/b/ak;->p:Lcom/a/b/a/b/aa;

    return-void
.end method

.method public m()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ak;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public n()Lcom/a/b/e/b/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ak;->q:Lcom/a/b/e/b/aa;

    return-object v0
.end method

.method public o()Lcom/a/b/e/b/ad;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ak;->r:Lcom/a/b/e/b/ad;

    return-object v0
.end method

.method public p()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/a/b/ak;->j:Z

    return v0
.end method

.method public q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/a/b/ak;->k:Z

    return v0
.end method

.method public r()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/ak;->l:I

    return v0
.end method

.method public s()I
    .registers 2

    iget v0, p0, Lcom/a/b/a/b/ak;->m:I

    return v0
.end method

.method public t()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/a/b/ak;->o:Z

    return v0
.end method

.method public u()Z
    .registers 2

    iget-boolean v0, p0, Lcom/a/b/a/b/ak;->n:Z

    return v0
.end method

.method public v()Z
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ak;->p:Lcom/a/b/a/b/aa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Lcom/a/b/a/b/aa;
    .registers 2

    iget-object v0, p0, Lcom/a/b/a/b/ak;->p:Lcom/a/b/a/b/aa;

    return-object v0
.end method
