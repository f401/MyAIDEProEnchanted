.class public La/b/e/a;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/g/aq;
.implements La/b/g/s;


# static fields
.field private static final a:[La/b/f;

.field private static final b:[La/b/h;


# instance fields
.field private final c:La/b/e/j;

.field private final d:Z

.field private final e:Z

.field private f:[La/b/b/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [La/b/f;

    sput-object v0, La/b/e/a;->a:[La/b/f;

    new-array v0, v1, [La/b/h;

    sput-object v0, La/b/e/a;->b:[La/b/h;

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInput;ZZ)V
    .registers 5

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/b/e/j;

    invoke-direct {v0, p1}, La/b/e/j;-><init>(Ljava/io/DataInput;)V

    iput-object v0, p0, La/b/e/a;->c:La/b/e/j;

    iput-boolean p2, p0, La/b/e/a;->d:Z

    iput-boolean p3, p0, La/b/e/a;->e:Z

    return-void
.end method

.method private a(C)I
    .registers 3

    sparse-switch p1, :sswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return v0

    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_7
    const/4 v0, 0x2

    goto :goto_4

    :sswitch_9
    const/4 v0, 0x4

    goto :goto_4

    :sswitch_b
    const/16 v0, 0x8

    goto :goto_4

    :sswitch_data_e
    .sparse-switch
        0x42 -> :sswitch_5
        0x43 -> :sswitch_7
        0x44 -> :sswitch_b
        0x46 -> :sswitch_9
        0x49 -> :sswitch_9
        0x4a -> :sswitch_b
        0x53 -> :sswitch_7
        0x5a -> :sswitch_5
    .end sparse-switch
.end method

.method private a()La/b/b/b;
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->i()I

    move-result v0

    packed-switch v0, :pswitch_data_88

    :pswitch_9  #0x2, 0xd, 0xe, 0x11
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown constant type ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] in constant pool"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_28  #0x3
    new-instance v0, La/b/b/f;

    invoke-direct {v0}, La/b/b/f;-><init>()V

    :goto_2d
    return-object v0

    :pswitch_2e  #0x4
    new-instance v0, La/b/b/e;

    invoke-direct {v0}, La/b/b/e;-><init>()V

    goto :goto_2d

    :pswitch_34  #0x5
    new-instance v0, La/b/b/i;

    invoke-direct {v0}, La/b/b/i;-><init>()V

    goto :goto_2d

    :pswitch_3a  #0x6
    new-instance v0, La/b/b/c;

    invoke-direct {v0}, La/b/b/c;-><init>()V

    goto :goto_2d

    :pswitch_40  #0x8
    new-instance v0, La/b/b/r;

    invoke-direct {v0}, La/b/b/r;-><init>()V

    goto :goto_2d

    :pswitch_46  #0x1
    new-instance v0, La/b/b/s;

    invoke-direct {v0}, La/b/b/s;-><init>()V

    goto :goto_2d

    :pswitch_4c  #0x12
    new-instance v0, La/b/b/h;

    invoke-direct {v0}, La/b/b/h;-><init>()V

    goto :goto_2d

    :pswitch_52  #0xf
    new-instance v0, La/b/b/j;

    invoke-direct {v0}, La/b/b/j;-><init>()V

    goto :goto_2d

    :pswitch_58  #0x9
    new-instance v0, La/b/b/d;

    invoke-direct {v0}, La/b/b/d;-><init>()V

    goto :goto_2d

    :pswitch_5e  #0xa
    new-instance v0, La/b/b/l;

    invoke-direct {v0}, La/b/b/l;-><init>()V

    goto :goto_2d

    :pswitch_64  #0xb
    new-instance v0, La/b/b/g;

    invoke-direct {v0}, La/b/b/g;-><init>()V

    goto :goto_2d

    :pswitch_6a  #0x7
    new-instance v0, La/b/b/a;

    invoke-direct {v0}, La/b/b/a;-><init>()V

    goto :goto_2d

    :pswitch_70  #0x10
    new-instance v0, La/b/b/k;

    invoke-direct {v0}, La/b/b/k;-><init>()V

    goto :goto_2d

    :pswitch_76  #0xc
    new-instance v0, La/b/b/n;

    invoke-direct {v0}, La/b/b/n;-><init>()V

    goto :goto_2d

    :pswitch_7c  #0x13
    new-instance v0, La/b/b/m;

    invoke-direct {v0}, La/b/b/m;-><init>()V

    goto :goto_2d

    :pswitch_82  #0x14
    new-instance v0, La/b/b/o;

    invoke-direct {v0}, La/b/b/o;-><init>()V

    goto :goto_2d

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_9  #00000002
        :pswitch_28  #00000003
        :pswitch_2e  #00000004
        :pswitch_34  #00000005
        :pswitch_3a  #00000006
        :pswitch_6a  #00000007
        :pswitch_40  #00000008
        :pswitch_58  #00000009
        :pswitch_5e  #0000000a
        :pswitch_64  #0000000b
        :pswitch_76  #0000000c
        :pswitch_9  #0000000d
        :pswitch_9  #0000000e
        :pswitch_52  #0000000f
        :pswitch_70  #00000010
        :pswitch_9  #00000011
        :pswitch_4c  #00000012
        :pswitch_7c  #00000013
        :pswitch_82  #00000014
    .end packed-switch
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, La/b/e/a;->f:[La/b/b/b;

    aget-object v0, v0, p1

    check-cast v0, La/b/b/a;

    iget v0, v0, La/b/b/a;->a:I

    invoke-direct {p0, v0}, La/b/e/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, La/b/e/a;->f:[La/b/b/b;

    aget-object v0, v0, p1

    check-cast v0, La/b/b/s;

    invoke-virtual {v0}, La/b/b/s;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_f

    invoke-direct {p0}, La/b/e/a;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_f
    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->f()I

    move-result v0

    iget-object v1, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v1, v0}, La/b/e/j;->a(I)I

    return-void
.end method


# virtual methods
.method public a(La/b/c;La/b/b/a;)V
    .registers 4

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v0

    iput v0, p2, La/b/b/a;->a:I

    return-void
.end method

.method public a(La/b/c;La/b/b/c;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/e;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/f;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/h;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/i;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/j;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/k;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/m;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/n;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/o;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/p;)V
    .registers 6

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->c()C

    move-result v0

    iget-object v1, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v1}, La/b/e/j;->f()I

    move-result v1

    iget-object v2, p0, La/b/e/a;->c:La/b/e/j;

    invoke-direct {p0, v0}, La/b/e/a;->a(C)I

    move-result v0

    mul-int/2addr v0, v1

    invoke-virtual {v2, v0}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method

.method public a(La/b/c;La/b/b/s;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v1, v0}, La/b/e/j;->a([B)V

    invoke-virtual {p2, v0}, La/b/b/s;->a([B)V

    return-void
.end method

.method public a(La/b/e;)V
    .registers 12

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->f()I

    move-result v0

    invoke-static {v0}, La/b/f/i;->a(I)V

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v0

    iget-object v1, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v1}, La/b/e/j;->j()I

    move-result v1

    invoke-static {v1, v0}, La/b/f/i;->a(II)I

    move-result v0

    invoke-static {v0}, La/b/f/i;->e(I)V

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v1

    new-array v0, v1, [La/b/b/b;

    iput-object v0, p0, La/b/e/a;->f:[La/b/b/b;

    move v0, v3

    :goto_2a
    if-ge v0, v1, :cond_4b

    invoke-direct {p0}, La/b/e/a;->a()La/b/b/b;

    move-result-object v4

    invoke-virtual {v4, p1, p0}, La/b/b/b;->a(La/b/c;La/b/b/a/f;)V

    invoke-virtual {v4}, La/b/b/b;->a()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_3c

    if-ne v6, v3, :cond_40

    :cond_3c
    iget-object v7, p0, La/b/e/a;->f:[La/b/b/b;

    aput-object v4, v7, v0

    :cond_40
    const/4 v4, 0x5

    if-eq v6, v4, :cond_46

    const/4 v4, 0x6

    if-ne v6, v4, :cond_48

    :cond_46
    add-int/lit8 v0, v0, 0x1

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4b
    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v0

    iput v0, p1, La/b/e;->a:I

    iget-boolean v0, p0, La/b/e/a;->d:Z

    if-eqz v0, :cond_63

    invoke-virtual {p1}, La/b/e;->a()I

    move-result v0

    invoke-static {v0}, La/b/f/a;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_63

    :goto_62
    return-void

    :cond_63
    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v0

    iget-object v1, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v1}, La/b/e/j;->j()I

    move-result v1

    invoke-direct {p0, v0}, La/b/e/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, La/b/e;->b:Ljava/lang/String;

    if-nez v1, :cond_98

    const/4 v0, 0x0

    :goto_78
    iput-object v0, p1, La/b/e;->c:Ljava/lang/String;

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p1, La/b/e;->d:[Ljava/lang/String;

    move v0, v5

    :goto_85
    if-ge v0, v1, :cond_9d

    iget-object v4, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v4}, La/b/e/j;->j()I

    move-result v4

    iget-object v6, p1, La/b/e;->d:[Ljava/lang/String;

    invoke-direct {p0, v4}, La/b/e/a;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_85

    :cond_98
    invoke-direct {p0, v1}, La/b/e/a;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_78

    :cond_9d
    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v6

    new-array v7, v6, [La/b/f;

    move v4, v5

    move v1, v5

    :goto_a7
    if-ge v4, v6, :cond_ca

    new-instance v8, La/b/f;

    invoke-direct {v8}, La/b/f;-><init>()V

    invoke-virtual {p0, p1, v8}, La/b/e/a;->a(La/b/e;La/b/g;)V

    invoke-virtual {v8}, La/b/f;->a()I

    move-result v0

    invoke-static {v0}, La/b/f/a;->a(I)I

    move-result v9

    iget-boolean v0, p0, La/b/e/a;->e:Z

    if-eqz v0, :cond_c8

    move v0, v2

    :goto_be
    if-lt v9, v0, :cond_11e

    add-int/lit8 v0, v1, 0x1

    aput-object v8, v7, v1

    :goto_c4
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_a7

    :cond_c8
    move v0, v3

    goto :goto_be

    :cond_ca
    if-nez v1, :cond_fb

    sget-object v0, La/b/e/a;->a:[La/b/f;

    iput-object v0, p1, La/b/e;->e:[La/b/f;

    :goto_d0
    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v6

    new-array v7, v6, [La/b/h;

    move v4, v5

    move v1, v5

    :goto_da
    if-ge v4, v6, :cond_107

    new-instance v8, La/b/h;

    invoke-direct {v8}, La/b/h;-><init>()V

    invoke-virtual {p0, p1, v8}, La/b/e/a;->a(La/b/e;La/b/g;)V

    invoke-virtual {v8}, La/b/h;->a()I

    move-result v0

    invoke-static {v0}, La/b/f/a;->a(I)I

    move-result v9

    iget-boolean v0, p0, La/b/e/a;->e:Z

    if-eqz v0, :cond_105

    move v0, v2

    :goto_f1
    if-lt v9, v0, :cond_11c

    add-int/lit8 v0, v1, 0x1

    aput-object v8, v7, v1

    :goto_f7
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_da

    :cond_fb
    new-array v0, v1, [La/b/f;

    iput-object v0, p1, La/b/e;->e:[La/b/f;

    iget-object v0, p1, La/b/e;->e:[La/b/f;

    invoke-static {v7, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d0

    :cond_105
    move v0, v3

    goto :goto_f1

    :cond_107
    if-nez v1, :cond_112

    sget-object v0, La/b/e/a;->b:[La/b/h;

    iput-object v0, p1, La/b/e;->f:[La/b/h;

    :goto_10d
    invoke-direct {p0}, La/b/e/a;->b()V

    goto/16 :goto_62

    :cond_112
    new-array v0, v1, [La/b/h;

    iput-object v0, p1, La/b/e;->f:[La/b/h;

    iget-object v0, p1, La/b/e;->f:[La/b/h;

    invoke-static {v7, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10d

    :cond_11c
    move v0, v1

    goto :goto_f7

    :cond_11e
    move v0, v1

    goto :goto_c4
.end method

.method public a(La/b/e;La/b/g;)V
    .registers 4

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v0

    iput v0, p2, La/b/g;->b:I

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v0

    invoke-direct {p0, v0}, La/b/e/a;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/b/g;->c:Ljava/lang/String;

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    invoke-virtual {v0}, La/b/e/j;->j()I

    move-result v0

    invoke-direct {p0, v0}, La/b/e/a;->b(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, La/b/g;->d:Ljava/lang/String;

    invoke-direct {p0}, La/b/e/a;->b()V

    return-void
.end method

.method public a(La/b/k;)V
    .registers 2

    return-void
.end method

.method public a(La/b/k;La/b/m;)V
    .registers 3

    return-void
.end method

.method public b(La/b/c;La/b/b/q;)V
    .registers 5

    iget-object v0, p0, La/b/e/a;->c:La/b/e/j;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, La/b/e/j;->a(I)I

    return-void
.end method
