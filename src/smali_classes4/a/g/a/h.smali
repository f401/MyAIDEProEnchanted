.class public La/g/a/h;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/d/a/d;


# static fields
.field private static final a:I

.field private static final b:J


# instance fields
.field private final c:La/b/d/a/d;

.field private final d:La/g/a/v;

.field private final e:La/g/b/ap;

.field private final f:La/b/c/v;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sput v0, La/g/a/h;->a:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sput-wide v0, La/g/a/h;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, La/g/a/v;

    invoke-direct {v0}, La/g/a/v;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, La/g/a/h;-><init>(La/g/a/v;La/b/d/a/d;)V

    return-void
.end method

.method public constructor <init>(La/g/a/v;La/b/d/a/d;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/g/b/ap;

    invoke-direct {v0, v1, v1}, La/g/b/ap;-><init>(ZZ)V

    iput-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    new-instance v0, La/b/c/v;

    invoke-direct {v0, v1, v1}, La/b/c/v;-><init>(ZZ)V

    iput-object v0, p0, La/g/a/h;->f:La/b/c/v;

    iput-object p1, p0, La/g/a/h;->d:La/g/a/v;

    iput-object p2, p0, La/g/a/h;->c:La/b/d/a/d;

    return-void
.end method

.method private a(La/b/c;IILa/b/d/i;)V
    .registers 11

    const/4 v2, 0x0

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    const/4 v1, 0x2

    new-array v1, v1, [La/b/d/c;

    const/4 v3, 0x0

    new-instance v4, La/b/d/h;

    const/16 v5, 0x5f

    invoke-direct {v4, v5}, La/b/d/h;-><init>(B)V

    aput-object v4, v1, v3

    const/4 v3, 0x1

    new-instance v4, La/b/d/h;

    const/16 v5, 0x57

    invoke-direct {v4, v5}, La/b/d/h;-><init>(B)V

    aput-object v4, v1, v3

    invoke-virtual {v0, p2, v1}, La/b/c/v;->c(I[La/b/d/c;)V

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p3, p4}, La/b/c/v;->b(ILa/b/d/c;)V

    iget-object v0, p0, La/g/a/h;->c:La/b/d/a/d;

    if-eqz v0, :cond_2f

    iget-object v5, p0, La/g/a/h;->c:La/b/d/a/d;

    move-object v0, p4

    move-object v1, p1

    move-object v3, v2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, La/b/d/i;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_2f
    return-void
.end method

.method private a(La/b/c;ILa/b/d/a;)V
    .registers 6

    iget v0, p3, La/b/d/a;->a:I

    add-int/2addr v0, p2

    iget-object v1, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v1, v0}, La/g/a/v;->e(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v1, v0}, La/g/a/v;->l(I)La/d/a/ad;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ad;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    :cond_18
    invoke-direct {p0, p1, p2, p3}, La/g/a/h;->h(La/b/c;ILa/b/d/c;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {p3, p2}, La/b/d/a;->a(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, La/g/a/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p3, p2}, La/b/d/a;->a(I)I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0, p3}, La/g/a/h;->i(La/b/c;ILa/b/d/c;)V

    goto :goto_1b
.end method

.method private a(La/b/c;ILa/b/d/c;)V
    .registers 6

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->c()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, La/d/a/bd;->j()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    :cond_18
    :goto_18
    return-void

    :pswitch_19  #0x1
    invoke-direct {p0, p1, p2, p3}, La/g/a/h;->b(La/b/c;ILa/b/d/c;)V

    goto :goto_18

    :pswitch_1d  #0x2
    invoke-direct {p0, p1, p2, p3}, La/g/a/h;->c(La/b/c;ILa/b/d/c;)V

    goto :goto_18

    :pswitch_21  #0x3
    invoke-direct {p0, p1, p2, p3}, La/g/a/h;->d(La/b/c;ILa/b/d/c;)V

    goto :goto_18

    :pswitch_25  #0x4
    invoke-direct {p0, p1, p2, p3}, La/g/a/h;->e(La/b/c;ILa/b/d/c;)V

    goto :goto_18

    :pswitch_29  #0x5
    invoke-direct {p0, p1, p2, p3}, La/g/a/h;->f(La/b/c;ILa/b/d/c;)V

    goto :goto_18

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_19  #00000001
        :pswitch_1d  #00000002
        :pswitch_21  #00000003
        :pswitch_25  #00000004
        :pswitch_29  #00000005
    .end packed-switch
.end method

.method private a(La/b/c;ILa/b/d/c;BI)V
    .registers 7

    new-instance v0, La/b/d/h;

    invoke-direct {v0, p4, p5}, La/b/d/h;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    return-void
.end method

.method private a(La/b/c;ILa/b/d/c;I)V
    .registers 11

    const/4 v5, 0x0

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v5}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->c()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ae;->e()I

    move-result v5

    int-to-short v0, v5

    if-ne v0, v5, :cond_26

    const/16 v4, 0x11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->a(La/b/c;ILa/b/d/c;BI)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    new-instance v1, La/b/d/b;

    const/16 v2, 0x12

    new-instance v3, La/b/c/ae;

    move-object v0, p1

    check-cast v0, La/b/k;

    invoke-direct {v3, v0}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v3, v5}, La/b/c/ae;->a(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v1}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_25

    :cond_3d
    invoke-virtual {v0}, La/d/a/bd;->d()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v1, p2}, La/g/a/v;->h(I)La/d/k;

    move-result-object v1

    :goto_49
    if-ge v5, p4, :cond_25

    invoke-virtual {v1, v5}, La/d/k;->d(I)La/d/a/bd;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/16 v4, 0x15

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->b(La/b/c;ILa/b/d/c;BI)V

    goto :goto_25

    :cond_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_49
.end method

.method private a(La/b/c;ILa/b/d/c;La/b/d/c;)V
    .registers 11

    const/4 v2, 0x0

    invoke-virtual {p3, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v0

    invoke-virtual {p4, p1}, La/b/d/c;->a(La/b/c;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, p2, v0}, La/g/a/h;->c(II)V

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p2, p4}, La/b/c/v;->b(ILa/b/d/c;)V

    iget-object v0, p0, La/g/a/h;->c:La/b/d/a/d;

    if-eqz v0, :cond_1f

    iget-object v5, p0, La/g/a/h;->c:La/b/d/a/d;

    move-object v0, p3

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_1f
    return-void
.end method

.method private a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V
    .registers 15

    const/4 v4, 0x0

    new-instance v0, La/b/c/ae;

    move-object v1, p1

    check-cast v1, La/b/k;

    invoke-direct {v0, v1}, La/b/c/ae;-><init>(La/b/k;)V

    new-instance v6, La/b/d/b;

    const/16 v1, -0x45

    invoke-virtual {v0, p4, v4}, La/b/c/ae;->a(Ljava/lang/String;La/b/c;)I

    move-result v2

    invoke-direct {v6, v1, v2}, La/b/d/b;-><init>(BI)V

    new-instance v7, La/b/d/h;

    const/16 v1, 0x59

    invoke-direct {v7, v1}, La/b/d/h;-><init>(B)V

    new-instance v8, La/b/d/b;

    const/16 v9, -0x49

    const-string v2, "<init>"

    const-string v3, "()V"

    move-object v1, p4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, La/b/c/ae;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/b/c;La/b/i;)I

    move-result v0

    invoke-direct {v8, v9, v0}, La/b/d/b;-><init>(BI)V

    new-instance v0, La/b/d/h;

    const/16 v1, -0x41

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    iget-object v1, p0, La/g/a/h;->f:La/b/c/v;

    const/4 v2, 0x4

    new-array v2, v2, [La/b/d/c;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    const/4 v3, 0x2

    aput-object v8, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    invoke-virtual {v1, p2, v2}, La/b/c/v;->c(I[La/b/d/c;)V

    iget-object v0, p0, La/g/a/h;->c:La/b/d/a/d;

    if-eqz v0, :cond_54

    iget-object v7, p0, La/g/a/h;->c:La/b/d/a/d;

    move-object v2, p3

    move-object v3, p1

    move-object v5, v4

    move v6, p2

    invoke-virtual/range {v2 .. v7}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_54
    return-void
.end method

.method private a(La/b/c;ILa/b/d/g;)V
    .registers 14

    const/4 v3, 0x0

    iget v5, p3, La/b/d/g;->b:I

    iget-object v6, p3, La/b/d/g;->d:[I

    array-length v4, v6

    move v0, v4

    move v1, v3

    :goto_8
    if-ge v1, v4, :cond_13

    aget v2, v6, v1

    if-ne v2, v5, :cond_10

    add-int/lit8 v0, v0, -0x1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    if-ge v0, v4, :cond_21

    if-gtz v0, :cond_22

    new-instance v0, La/b/d/a;

    const/16 v1, -0x59

    invoke-direct {v0, v1, v5}, La/b/d/a;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget-object v7, p3, La/b/d/g;->a:[I

    new-array v8, v0, [I

    new-array v9, v0, [I

    move v2, v3

    move v1, v3

    :goto_2a
    if-ge v2, v4, :cond_3e

    aget v0, v6, v2

    if-eq v0, v5, :cond_46

    aget v0, v6, v2

    aput v0, v8, v1

    add-int/lit8 v0, v1, 0x1

    aget v3, v7, v2

    aput v3, v9, v1

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_2a

    :cond_3e
    iput-object v8, p3, La/b/d/g;->d:[I

    iput-object v9, p3, La/b/d/g;->a:[I

    invoke-direct {p0, p1, p2, p3, p3}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_21

    :cond_46
    move v0, v1

    goto :goto_3a
.end method

.method private a(La/b/c;ILa/b/d/i;)V
    .registers 10

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->m(I)La/d/a/ad;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/ad;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, La/d/a/ad;->a(I)I

    move-result v0

    sub-int v3, v0, p2

    iget-object v4, p3, La/b/d/i;->d:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_16
    array-length v5, v4

    if-ge v1, v5, :cond_28

    aget v5, v4, v1

    add-int/2addr v5, p2

    invoke-virtual {v2, v5}, La/d/a/ad;->b(I)Z

    move-result v5

    if-nez v5, :cond_25

    aput v3, v4, v1

    move-object v0, p3

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    iget v1, p3, La/b/d/i;->b:I

    add-int/2addr v1, p2

    invoke-virtual {v2, v1}, La/d/a/ad;->b(I)Z

    move-result v1

    if-nez v1, :cond_34

    iput v3, p3, La/b/d/i;->b:I

    move-object v0, p3

    :cond_34
    if-eqz v0, :cond_39

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    :cond_39
    return-void
.end method

.method private a(La/b/c;ILa/b/d/j;)V
    .registers 11

    const/4 v2, 0x0

    iget v3, p3, La/b/d/j;->b:I

    iget-object v4, p3, La/b/d/j;->d:[I

    array-length v5, v4

    move v1, v2

    :goto_7
    if-ge v1, v5, :cond_11

    aget v0, v4, v1

    if-ne v0, v3, :cond_11

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_11
    add-int/lit8 v0, v5, -0x1

    :goto_13
    if-ltz v0, :cond_1c

    aget v6, v4, v0

    if-ne v6, v3, :cond_1c

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_1c
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v5, :cond_2d

    if-gtz v0, :cond_2e

    new-instance v0, La/b/d/a;

    const/16 v1, -0x59

    invoke-direct {v0, v1, v3}, La/b/d/a;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    new-array v3, v0, [I

    invoke-static {v4, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p3, La/b/d/j;->d:[I

    iget v2, p3, La/b/d/j;->a:I

    add-int/2addr v2, v1

    iput v2, p3, La/b/d/j;->a:I

    iget v2, p3, La/b/d/j;->e:I

    sub-int v0, v5, v0

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    iput v0, p3, La/b/d/j;->e:I

    invoke-direct {p0, p1, p2, p3, p3}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_2d
.end method

.method private a(La/b/c;La/b/a/d;IILa/b/d/g;La/d/a/ap;)V
    .registers 14

    const/4 v3, 0x0

    new-instance v2, La/d/a/ao;

    invoke-direct {v2}, La/d/a/ao;-><init>()V

    iget-object v4, p5, La/b/d/g;->a:[I

    iget-object v6, p5, La/b/d/g;->d:[I

    invoke-virtual {p6, v2}, La/d/a/ap;->a(La/d/a/be;)La/d/a/ae;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ae;->e()I

    move-result v0

    new-array v5, v0, [I

    move v0, v3

    :goto_15
    array-length v1, v5

    if-ge v0, v1, :cond_34

    invoke-interface {v2, v0}, La/d/a/be;->a(I)La/d/a/ae;

    move-result-object v1

    invoke-virtual {p6, v1, v2}, La/d/a/ap;->a(La/d/a/ae;La/d/a/be;)La/d/a/ae;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ae;->e()I

    move-result v1

    invoke-static {v4, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_31

    aget v1, v6, v1

    :goto_2c
    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_31
    iget v1, p5, La/b/d/g;->b:I

    goto :goto_2c

    :cond_34
    new-instance v0, La/b/d/j;

    const/16 v1, -0x56

    iget v2, p5, La/b/d/g;->b:I

    array-length v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, La/b/d/j;-><init>(BIII[I)V

    invoke-direct {p0, p1, p3, p4, v0}, La/g/a/h;->a(La/b/c;IILa/b/d/i;)V

    invoke-direct {p0, p1, p4, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/i;)V

    invoke-direct {p0, p1, p4, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/j;)V

    return-void
.end method

.method private a(La/b/c;La/b/a/d;IILa/b/d/j;La/d/a/ap;)V
    .registers 14

    const/4 v1, 0x0

    new-instance v3, La/d/a/ao;

    invoke-direct {v3}, La/d/a/ao;-><init>()V

    iget-object v4, p5, La/b/d/j;->d:[I

    invoke-virtual {p6, v3}, La/d/a/ap;->a(La/d/a/be;)La/d/a/ae;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ae;->e()I

    move-result v0

    new-array v5, v0, [I

    move v0, v1

    :goto_13
    array-length v2, v5

    if-ge v0, v2, :cond_37

    invoke-interface {v3, v0}, La/d/a/be;->a(I)La/d/a/ae;

    move-result-object v2

    invoke-virtual {p6, v2, v3}, La/d/a/ap;->a(La/d/a/ae;La/d/a/be;)La/d/a/ae;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/ae;->e()I

    move-result v2

    iget v6, p5, La/b/d/j;->a:I

    if-lt v2, v6, :cond_34

    iget v6, p5, La/b/d/j;->e:I

    if-gt v2, v6, :cond_34

    iget v6, p5, La/b/d/j;->a:I

    sub-int/2addr v2, v6

    aget v2, v4, v2

    :goto_2f
    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_34
    iget v2, p5, La/b/d/j;->b:I

    goto :goto_2f

    :cond_37
    iput v1, p5, La/b/d/j;->a:I

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    iput v0, p5, La/b/d/j;->e:I

    iput-object v5, p5, La/b/d/j;->d:[I

    invoke-direct {p0, p1, p3, p4, p5}, La/g/a/h;->a(La/b/c;IILa/b/d/i;)V

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->a(La/b/c;ILa/b/d/i;)V

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->a(La/b/c;ILa/b/d/j;)V

    return-void
.end method

.method private a(La/b/c;La/b/a/d;ILa/b/d/g;)V
    .registers 12

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p3}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v2}, La/d/j;->f(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ad;->e()I

    move-result v1

    if-ne v1, v4, :cond_46

    invoke-virtual {v0, v2}, La/d/a/ad;->a(I)I

    move-result v3

    iget-object v0, p2, La/b/a/d;->f:[B

    aget-byte v0, v0, v3

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_46

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, v3}, La/b/c/v;->f(I)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, v3}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v4}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v6

    invoke-virtual {v6}, La/d/a/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_46

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, La/g/a/h;->a(La/b/c;La/b/a/d;IILa/b/d/g;La/d/a/ap;)V

    :cond_46
    return-void
.end method

.method private a(La/b/c;La/b/a/d;ILa/b/d/j;)V
    .registers 12

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p3}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v2}, La/d/j;->f(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->n_()La/d/a/ad;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ad;->e()I

    move-result v1

    if-ne v1, v4, :cond_46

    invoke-virtual {v0, v2}, La/d/a/ad;->a(I)I

    move-result v3

    iget-object v0, p2, La/b/a/d;->f:[B

    aget-byte v0, v0, v3

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_46

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, v3}, La/b/c/v;->f(I)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, v3}, La/g/a/v;->j(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v4}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v6

    invoke-virtual {v6}, La/d/a/ap;->c()Z

    move-result v0

    if-eqz v0, :cond_46

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, La/g/a/h;->a(La/b/c;La/b/a/d;IILa/b/d/j;La/d/a/ap;)V

    :cond_46
    return-void
.end method

.method private a(II)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v2, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v2

    invoke-virtual {v2, v0}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v2

    packed-switch p2, :pswitch_data_7c

    :cond_f
    :goto_f
    return v0

    :pswitch_10  #0x1
    invoke-virtual {v2}, La/d/a/bd;->j()I

    move-result v3

    if-ne v3, v1, :cond_f

    invoke-virtual {v2}, La/d/a/bd;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, La/d/a/bd;->r()La/d/a/ae;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/ae;->e()I

    move-result v2

    if-nez v2, :cond_f

    :cond_26
    move v0, v1

    goto :goto_f

    :pswitch_28  #0x2
    invoke-virtual {v2}, La/d/a/bd;->j()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    invoke-virtual {v2}, La/d/a/bd;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, La/d/a/bd;->k_()La/d/a/af;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/af;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    goto :goto_f

    :pswitch_44  #0x3
    invoke-virtual {v2}, La/d/a/bd;->j()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    invoke-virtual {v2}, La/d/a/bd;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, La/d/a/bd;->l()La/d/a/u;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/u;->o_()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_26

    goto :goto_f

    :pswitch_5f  #0x4
    invoke-virtual {v2}, La/d/a/bd;->j()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_f

    invoke-virtual {v2}, La/d/a/bd;->c()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v2}, La/d/a/bd;->i()La/d/a/t;

    move-result-object v2

    invoke-virtual {v2}, La/d/a/t;->m_()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_26

    goto :goto_f

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_10  #00000001
        :pswitch_28  #00000002
        :pswitch_44  #00000003
        :pswitch_5f  #00000004
    .end packed-switch
.end method

.method private b(La/b/c;ILa/b/d/c;)V
    .registers 5

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->h(I)La/d/k;

    move-result-object v0

    invoke-virtual {v0}, La/d/k;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;I)V

    return-void
.end method

.method private b(La/b/c;ILa/b/d/c;BI)V
    .registers 7

    new-instance v0, La/b/d/k;

    invoke-direct {v0, p4, p5}, La/b/d/k;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    return-void
.end method

.method private b(La/b/c;ILa/b/d/c;I)V
    .registers 13

    const/4 v5, 0x0

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v5}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v6

    invoke-virtual {v6}, La/d/a/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {v6}, La/d/a/bd;->k_()La/d/a/af;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/af;->e()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_25

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_30

    :cond_25
    const/16 v4, 0x9

    long-to-int v5, v2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->a(La/b/c;ILa/b/d/c;BI)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    new-instance v1, La/b/d/b;

    const/16 v4, 0x14

    new-instance v5, La/b/c/ae;

    move-object v0, p1

    check-cast v0, La/b/k;

    invoke-direct {v5, v0}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v5, v2, v3}, La/b/c/ae;->a(J)I

    move-result v0

    invoke-direct {v1, v4, v0}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v1}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_2f

    :cond_47
    invoke-virtual {v6}, La/d/a/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->h(I)La/d/k;

    move-result-object v7

    :goto_53
    if-ge v5, p4, :cond_2f

    invoke-virtual {v7, v5}, La/d/k;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v0}, La/d/k;->d(I)La/d/a/bd;

    move-result-object v0

    if-eqz v0, :cond_7d

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v0}, La/d/k;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->j()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7d

    const/16 v4, 0x16

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->b(La/b/c;ILa/b/d/c;BI)V

    :cond_7d
    add-int/lit8 v5, v5, 0x1

    goto :goto_53
.end method

.method private b(II)Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v1, p1}, La/g/a/v;->j(I)La/d/j;

    move-result-object v1

    invoke-virtual {v1, p2}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/bd;->j()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_23

    invoke-virtual {v1}, La/d/a/bd;->c()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v1

    invoke-virtual {v1}, La/d/a/ap;->m()I

    move-result v1

    if-ne v1, v0, :cond_23

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method private c(II)V
    .registers 8

    const/16 v3, 0x58

    const/16 v4, 0x57

    packed-switch p2, :pswitch_data_48

    div-int/lit8 v0, p2, 0x2

    rem-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    new-array v1, v0, [La/b/d/c;

    new-instance v2, La/b/d/h;

    invoke-direct {v2, v3}, La/b/d/h;-><init>(B)V

    const/4 v0, 0x0

    :goto_14
    div-int/lit8 v3, p2, 0x2

    if-ge v0, v3, :cond_33

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :pswitch_1d  #0x1
    new-instance v0, La/b/d/h;

    invoke-direct {v0, v4}, La/b/d/h;-><init>(B)V

    iget-object v1, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v1, p1, v0}, La/b/c/v;->a(ILa/b/d/c;)V

    :goto_27
    :pswitch_27  #0x0
    return-void

    :pswitch_28  #0x2
    new-instance v0, La/b/d/h;

    invoke-direct {v0, v3}, La/b/d/h;-><init>(B)V

    iget-object v1, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v1, p1, v0}, La/b/c/v;->a(ILa/b/d/c;)V

    goto :goto_27

    :cond_33
    rem-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    new-instance v0, La/b/d/h;

    invoke-direct {v0, v4}, La/b/d/h;-><init>(B)V

    div-int/lit8 v2, p2, 0x2

    aput-object v0, v1, v2

    :cond_41
    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p1, v1}, La/b/c/v;->b(I[La/b/d/c;)V

    goto :goto_27

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_1d  #00000001
        :pswitch_28  #00000002
    .end packed-switch
.end method

.method private c(La/b/c;ILa/b/d/c;)V
    .registers 5

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->h(I)La/d/k;

    move-result-object v0

    invoke-virtual {v0}, La/d/k;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->b(La/b/c;ILa/b/d/c;I)V

    return-void
.end method

.method private c(La/b/c;ILa/b/d/c;I)V
    .registers 13

    const/4 v5, 0x0

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v5}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v6

    invoke-virtual {v6}, La/d/a/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {v6}, La/d/a/bd;->l()La/d/a/u;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/u;->o_()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_26

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    sget v2, La/g/a/h;->a:I

    if-eq v0, v2, :cond_32

    :cond_26
    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_32

    const/high16 v0, 0x40000000  # 2.0f

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3d

    :cond_32
    const/16 v4, 0xb

    float-to-int v5, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->a(La/b/c;ILa/b/d/c;BI)V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance v2, La/b/d/b;

    const/16 v3, 0x12

    new-instance v4, La/b/c/ae;

    move-object v0, p1

    check-cast v0, La/b/k;

    invoke-direct {v4, v0}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v4, v1}, La/b/c/ae;->a(F)I

    move-result v0

    invoke-direct {v2, v3, v0}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v2}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_3c

    :cond_54
    invoke-virtual {v6}, La/d/a/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->h(I)La/d/k;

    move-result-object v7

    :goto_60
    if-ge v5, p4, :cond_3c

    invoke-virtual {v7, v5}, La/d/k;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/16 v4, 0x17

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->b(La/b/c;ILa/b/d/c;BI)V

    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_60
.end method

.method private d(La/b/c;ILa/b/d/c;)V
    .registers 5

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->h(I)La/d/k;

    move-result-object v0

    invoke-virtual {v0}, La/d/k;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->c(La/b/c;ILa/b/d/c;I)V

    return-void
.end method

.method private d(La/b/c;ILa/b/d/c;I)V
    .registers 13

    const/4 v5, 0x0

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v5}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v6

    invoke-virtual {v6}, La/d/a/bd;->c()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v6}, La/d/a/bd;->i()La/d/a/t;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/t;->m_()D

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_29

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sget-wide v4, La/g/a/h;->b:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2f

    :cond_29
    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_3a

    :cond_2f
    const/16 v4, 0xe

    double-to-int v5, v2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->a(La/b/c;ILa/b/d/c;BI)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    new-instance v1, La/b/d/b;

    const/16 v4, 0x14

    new-instance v5, La/b/c/ae;

    move-object v0, p1

    check-cast v0, La/b/k;

    invoke-direct {v5, v0}, La/b/c/ae;-><init>(La/b/k;)V

    invoke-virtual {v5, v2, v3}, La/b/c/ae;->a(D)I

    move-result v0

    invoke-direct {v1, v4, v0}, La/b/d/b;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v1}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_39

    :cond_51
    invoke-virtual {v6}, La/d/a/bd;->d()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->h(I)La/d/k;

    move-result-object v7

    :goto_5d
    if-ge v5, p4, :cond_39

    invoke-virtual {v7, v5}, La/d/k;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v0}, La/d/k;->d(I)La/d/a/bd;

    move-result-object v0

    if-eqz v0, :cond_87

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v7, v0}, La/d/k;->d(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->j()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_87

    const/16 v4, 0x18

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->b(La/b/c;ILa/b/d/c;BI)V

    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d
.end method

.method private e(La/b/c;ILa/b/d/c;)V
    .registers 5

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->h(I)La/d/k;

    move-result-object v0

    invoke-virtual {v0}, La/d/k;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/h;->d(La/b/c;ILa/b/d/c;I)V

    return-void
.end method

.method private f(La/b/c;ILa/b/d/c;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->k(I)La/d/j;

    move-result-object v0

    invoke-virtual {v0, v5}, La/d/j;->c(I)La/d/a/bd;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/bd;->l_()La/d/a/ap;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ap;->m()I

    move-result v0

    if-ne v0, v4, :cond_1d

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/h;->a(La/b/c;ILa/b/d/c;BI)V

    :cond_1d
    return-void
.end method

.method private g(La/b/c;ILa/b/d/c;)V
    .registers 6

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->d(I)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->l(I)La/d/a/ad;

    move-result-object v0

    invoke-virtual {v0}, La/d/a/ad;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    :cond_1d
    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p2}, La/b/c/v;->c(I)V

    :cond_22
    return-void
.end method

.method private h(La/b/c;ILa/b/d/c;)V
    .registers 7

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p2}, La/g/a/v;->m(I)La/d/a/ad;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, La/d/a/ad;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, La/d/a/ad;->a(I)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p3, p2}, La/b/d/c;->a(I)I

    move-result v1

    if-ne v0, v1, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    new-instance v1, La/b/d/a;

    const/16 v2, -0x59

    invoke-direct {v1, v2, v0}, La/b/d/a;-><init>(BI)V

    invoke-direct {p0, p1, p2, p3, v1}, La/g/a/h;->a(La/b/c;ILa/b/d/c;La/b/d/c;)V

    goto :goto_1b
.end method

.method private i(La/b/c;ILa/b/d/c;)V
    .registers 10

    const/4 v2, 0x0

    new-instance v0, La/b/d/a;

    const/16 v1, -0x59

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, La/b/d/a;-><init>(BI)V

    iget-object v1, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v1, p2, v0}, La/b/c/v;->b(ILa/b/d/c;)V

    iget-object v0, p0, La/g/a/h;->c:La/b/d/a/d;

    if-eqz v0, :cond_1b

    iget-object v5, p0, La/g/a/h;->c:La/b/d/a/d;

    move-object v0, p3

    move-object v1, p1

    move-object v3, v2

    move v4, p2

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, La/g/a/h;->b(La/b/c;La/b/j;La/b/a/d;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "Unexpected error while simplifying instructions after partial evaluation:"

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Class       = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Method      = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Exception   = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    const-string v0, "Not optimizing this method"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a;)V
    .registers 7

    iget-byte v0, p5, La/b/d/a;->c:B

    sparse-switch v0, :sswitch_data_e

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->h(La/b/c;ILa/b/d/c;)V

    :goto_8
    :sswitch_8
    return-void

    :sswitch_9
    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->a(La/b/c;ILa/b/d/a;)V

    goto :goto_8

    nop

    :sswitch_data_e
    .sparse-switch
        -0x59 -> :sswitch_8
        -0x58 -> :sswitch_9
        -0x38 -> :sswitch_8
        -0x37 -> :sswitch_9
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 12

    iget-byte v0, p5, La/b/d/b;->c:B

    packed-switch v0, :pswitch_data_38

    :cond_5
    :goto_5
    :pswitch_5  #0xffffffb3, 0xffffffb5, 0xffffffba, 0xffffffbb, 0xffffffbc, 0xffffffbd, 0xffffffbe, 0xffffffbf
    return-void

    :pswitch_6  #0xffffffb6, 0xffffffb7, 0xffffffb9
    sget-boolean v0, La/g/b/ap;->a:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p5, p1}, La/b/d/b;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/a/h;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "java/lang/NullPointerException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto :goto_5

    :cond_1c
    :pswitch_1c  #0xffffffb2, 0xffffffb4, 0xffffffb8
    invoke-virtual {p5, p1}, La/b/d/b;->b(La/b/c;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->a(La/b/c;ILa/b/d/c;)V

    goto :goto_5

    :pswitch_33  #0xffffffc0
    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->f(La/b/c;ILa/b/d/c;)V

    goto :goto_5

    nop

    :pswitch_data_38
    .packed-switch -0x4e
        :pswitch_1c  #ffffffb2
        :pswitch_5  #ffffffb3
        :pswitch_1c  #ffffffb4
        :pswitch_5  #ffffffb5
        :pswitch_6  #ffffffb6
        :pswitch_6  #ffffffb7
        :pswitch_1c  #ffffffb8
        :pswitch_6  #ffffffb9
        :pswitch_5  #ffffffba
        :pswitch_5  #ffffffbb
        :pswitch_5  #ffffffbc
        :pswitch_5  #ffffffbd
        :pswitch_5  #ffffffbe
        :pswitch_5  #ffffffbf
        :pswitch_33  #ffffffc0
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/g;)V
    .registers 7

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->h(La/b/c;ILa/b/d/c;)V

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p4}, La/b/c/v;->f(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, p1, p3, p4, p5}, La/g/a/h;->a(La/b/c;La/b/a/d;ILa/b/d/g;)V

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p4}, La/b/c/v;->f(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->a(La/b/c;ILa/b/d/i;)V

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->a(La/b/c;ILa/b/d/g;)V

    :cond_1c
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 12

    iget-byte v0, p5, La/b/d/h;->c:B

    sparse-switch v0, :sswitch_data_196

    :cond_5
    :goto_5
    return-void

    :sswitch_6
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->b(La/b/c;ILa/b/d/c;)V

    goto :goto_5

    :cond_17
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, La/g/a/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/ArithmeticException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_24
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->c(La/b/c;ILa/b/d/c;)V

    goto :goto_5

    :cond_35
    const/4 v0, 0x2

    invoke-direct {p0, p4, v0}, La/g/a/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/ArithmeticException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_42
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->d(La/b/c;ILa/b/d/c;)V

    goto :goto_5

    :cond_53
    const/4 v0, 0x3

    invoke-direct {p0, p4, v0}, La/g/a/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/ArithmeticException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_60
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_71

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->e(La/b/c;ILa/b/d/c;)V

    goto :goto_5

    :cond_71
    const/4 v0, 0x4

    invoke-direct {p0, p4, v0}, La/g/a/h;->a(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/ArithmeticException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto :goto_5

    :sswitch_7e
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->b(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :cond_90
    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/a/h;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/NullPointerException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_a3
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->b(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :sswitch_b5
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_c7

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->c(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :cond_c7
    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/a/h;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/NullPointerException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_da
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->c(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :sswitch_ec
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_fe

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->d(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :cond_fe
    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/a/h;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/NullPointerException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_111
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->d(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :sswitch_123
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_135

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->e(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :cond_135
    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/a/h;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/NullPointerException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_148
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->e(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :sswitch_15a
    iget-object v0, p0, La/g/a/h;->e:La/g/b/ap;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, La/g/b/ap;->b(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)Z

    move-result v0

    if-nez v0, :cond_16c

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->f(La/b/c;ILa/b/d/c;)V

    goto/16 :goto_5

    :cond_16c
    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/a/h;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/NullPointerException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_17f
    sget-boolean v0, La/g/b/ap;->a:Z

    if-eqz v0, :cond_5

    invoke-virtual {p5, p1}, La/b/d/h;->a(La/b/c;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p4, v0}, La/g/a/h;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "java/lang/NullPointerException"

    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;Ljava/lang/String;)V

    goto/16 :goto_5

    :sswitch_data_196
    .sparse-switch
        -0x80 -> :sswitch_a3
        -0x7f -> :sswitch_da
        -0x7e -> :sswitch_a3
        -0x7d -> :sswitch_da
        -0x7b -> :sswitch_da
        -0x7a -> :sswitch_111
        -0x79 -> :sswitch_148
        -0x78 -> :sswitch_a3
        -0x77 -> :sswitch_111
        -0x76 -> :sswitch_148
        -0x75 -> :sswitch_a3
        -0x74 -> :sswitch_da
        -0x73 -> :sswitch_148
        -0x72 -> :sswitch_a3
        -0x71 -> :sswitch_da
        -0x70 -> :sswitch_111
        -0x6f -> :sswitch_a3
        -0x6e -> :sswitch_a3
        -0x6d -> :sswitch_a3
        -0x42 -> :sswitch_7e
        0x2e -> :sswitch_7e
        0x2f -> :sswitch_b5
        0x30 -> :sswitch_ec
        0x31 -> :sswitch_123
        0x32 -> :sswitch_15a
        0x33 -> :sswitch_7e
        0x34 -> :sswitch_7e
        0x35 -> :sswitch_7e
        0x4f -> :sswitch_17f
        0x50 -> :sswitch_17f
        0x51 -> :sswitch_17f
        0x52 -> :sswitch_17f
        0x53 -> :sswitch_17f
        0x54 -> :sswitch_17f
        0x55 -> :sswitch_17f
        0x56 -> :sswitch_17f
        0x60 -> :sswitch_a3
        0x61 -> :sswitch_da
        0x62 -> :sswitch_111
        0x63 -> :sswitch_148
        0x64 -> :sswitch_a3
        0x65 -> :sswitch_da
        0x66 -> :sswitch_111
        0x67 -> :sswitch_148
        0x68 -> :sswitch_a3
        0x69 -> :sswitch_da
        0x6a -> :sswitch_111
        0x6b -> :sswitch_148
        0x6c -> :sswitch_6
        0x6d -> :sswitch_24
        0x6e -> :sswitch_42
        0x6f -> :sswitch_60
        0x70 -> :sswitch_6
        0x71 -> :sswitch_24
        0x72 -> :sswitch_42
        0x73 -> :sswitch_60
        0x74 -> :sswitch_a3
        0x75 -> :sswitch_da
        0x76 -> :sswitch_111
        0x77 -> :sswitch_148
        0x78 -> :sswitch_a3
        0x79 -> :sswitch_da
        0x7a -> :sswitch_a3
        0x7b -> :sswitch_da
        0x7c -> :sswitch_a3
        0x7d -> :sswitch_da
        0x7e -> :sswitch_a3
        0x7f -> :sswitch_da
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/j;)V
    .registers 7

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->h(La/b/c;ILa/b/d/c;)V

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p4}, La/b/c/v;->f(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, p1, p3, p4, p5}, La/g/a/h;->a(La/b/c;La/b/a/d;ILa/b/d/j;)V

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p4}, La/b/c/v;->f(I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->a(La/b/c;ILa/b/d/i;)V

    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->a(La/b/c;ILa/b/d/j;)V

    :cond_1c
    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/k;)V
    .registers 8

    iget v0, p5, La/b/d/k;->b:I

    iget-byte v1, p5, La/b/d/k;->c:B

    sparse-switch v1, :sswitch_data_24

    :goto_7
    return-void

    :sswitch_8
    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->a(La/b/c;ILa/b/d/c;I)V

    goto :goto_7

    :sswitch_c
    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->b(La/b/c;ILa/b/d/c;I)V

    goto :goto_7

    :sswitch_10
    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->c(La/b/c;ILa/b/d/c;I)V

    goto :goto_7

    :sswitch_14
    invoke-direct {p0, p1, p4, p5, v0}, La/g/a/h;->d(La/b/c;ILa/b/d/c;I)V

    goto :goto_7

    :sswitch_18
    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->f(La/b/c;ILa/b/d/c;)V

    goto :goto_7

    :sswitch_1c
    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->g(La/b/c;ILa/b/d/c;)V

    goto :goto_7

    :sswitch_20
    invoke-direct {p0, p1, p4, p5}, La/g/a/h;->h(La/b/c;ILa/b/d/c;)V

    goto :goto_7

    :sswitch_data_24
    .sparse-switch
        -0x57 -> :sswitch_20
        0x15 -> :sswitch_8
        0x16 -> :sswitch_c
        0x17 -> :sswitch_10
        0x18 -> :sswitch_14
        0x19 -> :sswitch_18
        0x1a -> :sswitch_8
        0x1b -> :sswitch_8
        0x1c -> :sswitch_8
        0x1d -> :sswitch_8
        0x1e -> :sswitch_c
        0x1f -> :sswitch_c
        0x20 -> :sswitch_c
        0x21 -> :sswitch_c
        0x22 -> :sswitch_10
        0x23 -> :sswitch_10
        0x24 -> :sswitch_10
        0x25 -> :sswitch_10
        0x26 -> :sswitch_14
        0x27 -> :sswitch_14
        0x28 -> :sswitch_14
        0x29 -> :sswitch_14
        0x2a -> :sswitch_18
        0x2b -> :sswitch_18
        0x2c -> :sswitch_18
        0x2d -> :sswitch_18
        0x3a -> :sswitch_1c
        0x4b -> :sswitch_1c
        0x4c -> :sswitch_1c
        0x4d -> :sswitch_1c
        0x4e -> :sswitch_1c
    .end sparse-switch
.end method

.method public b(La/b/c;La/b/j;La/b/a/d;)V
    .registers 11

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    iget v6, p3, La/b/a/d;->e:I

    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, v6}, La/b/c/v;->a(I)V

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v6, :cond_27

    iget-object v0, p0, La/g/a/h;->d:La/g/a/v;

    invoke-virtual {v0, v4}, La/g/a/v;->a(I)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p3, La/b/a/d;->f:[B

    invoke-static {v0, v4}, La/b/d/e;->a([BI)La/b/d/c;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_27
    iget-object v0, p0, La/g/a/h;->f:La/b/c/v;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    return-void
.end method
