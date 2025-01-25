.class public final Lcom/a/b/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/a/b/g/e;

.field private final b:Lcom/a/b/e/c/af;

.field private final c:[I

.field private d:I

.field private e:Lcom/a/b/a/e/j;


# direct methods
.method public constructor <init>(Lcom/a/b/g/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    iput-object p1, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    new-instance v1, Lcom/a/b/e/c/af;

    invoke-direct {v1, v0}, Lcom/a/b/e/c/af;-><init>(I)V

    iput-object v1, p0, Lcom/a/b/a/c/a;->b:Lcom/a/b/e/c/af;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/a/b/a/c/a;->c:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/a/c/a;->d:I

    return-void
.end method

.method private a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;
    .registers 8

    iget-object v0, p0, Lcom/a/b/a/c/a;->b:Lcom/a/b/e/c/af;

    invoke-virtual {v0, p1}, Lcom/a/b/e/c/af;->c(I)Lcom/a/b/e/c/a;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/a/b/a/c/a;->c:[I

    aget v3, v0, p1

    :try_start_d
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    invoke-virtual {v0, v3}, Lcom/a/b/g/e;->e(I)I

    move-result v0

    packed-switch v0, :pswitch_data_216

    :pswitch_16  #0x2, 0xd, 0xe, 0x11
    new-instance v1, Lcom/a/b/a/e/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "unknown tag byte: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2f
    .catch Lcom/a/b/a/e/i; {:try_start_d .. :try_end_2f} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_2f} :catch_178

    :catch_2f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing cst "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v0

    :pswitch_55  #0x1
    :try_start_55
    invoke-direct {p0, v3}, Lcom/a/b/a/c/a;->a(I)Lcom/a/b/e/c/ad;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V
    :try_end_5c
    .catch Lcom/a/b/a/e/i; {:try_start_55 .. :try_end_5c} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_5c} :catch_178

    :goto_5c
    iget-object v1, p0, Lcom/a/b/a/c/a;->b:Lcom/a/b/e/c/af;

    invoke-virtual {v1, p1, v0}, Lcom/a/b/e/c/af;->a(ILcom/a/b/e/c/a;)V

    goto :goto_8

    :pswitch_62  #0x3
    :try_start_62
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/p;->a(I)Lcom/a/b/e/c/p;

    move-result-object v0

    goto :goto_5c

    :pswitch_6f  #0x4
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->c(I)I

    move-result v0

    invoke-static {v0}, Lcom/a/b/e/c/o;->a(I)Lcom/a/b/e/c/o;

    move-result-object v0

    goto :goto_5c

    :pswitch_7c  #0x5
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/a/b/e/c/w;->a(J)Lcom/a/b/e/c/w;

    move-result-object v0

    goto :goto_5c

    :pswitch_89  #0x6
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/a/b/e/c/l;->a(J)Lcom/a/b/e/c/l;

    move-result-object v0

    goto :goto_5c

    :pswitch_96  #0x7
    new-instance v1, Lcom/a/b/e/c/ae;

    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {v0, v2}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    invoke-virtual {v0}, Lcom/a/b/e/c/ad;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/e/d/c;->c(Ljava/lang/String;)Lcom/a/b/e/d/c;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/b/e/c/ae;-><init>(Lcom/a/b/e/d/c;)V

    move-object v0, v1

    goto :goto_5c

    :pswitch_b3  #0x8
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    goto :goto_5c

    :pswitch_c0  #0x9
    new-instance v2, Lcom/a/b/e/c/n;

    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    iget-object v1, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Lcom/a/b/g/e;->f(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/c/aa;

    invoke-direct {v2, v0, v1}, Lcom/a/b/e/c/n;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    move-object v0, v2

    goto/16 :goto_5c

    :pswitch_e4  #0xa
    new-instance v2, Lcom/a/b/e/c/z;

    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    iget-object v1, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Lcom/a/b/g/e;->f(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/c/aa;

    invoke-direct {v2, v0, v1}, Lcom/a/b/e/c/z;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    move-object v0, v2

    goto/16 :goto_5c

    :pswitch_108  #0xb
    new-instance v2, Lcom/a/b/e/c/q;

    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ae;

    iget-object v1, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Lcom/a/b/g/e;->f(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/c/aa;

    invoke-direct {v2, v0, v1}, Lcom/a/b/e/c/q;-><init>(Lcom/a/b/e/c/ae;Lcom/a/b/e/c/aa;)V

    move-object v0, v2

    goto/16 :goto_5c

    :pswitch_12c  #0xc
    new-instance v2, Lcom/a/b/e/c/aa;

    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    iget-object v1, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v4, v3, 0x3

    invoke-virtual {v1, v4}, Lcom/a/b/g/e;->f(I)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v1

    check-cast v1, Lcom/a/b/e/c/ad;

    invoke-direct {v2, v0, v1}, Lcom/a/b/e/c/aa;-><init>(Lcom/a/b/e/c/ad;Lcom/a/b/e/c/ad;)V

    move-object v0, v2

    goto/16 :goto_5c

    :pswitch_150  #0xf
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->e(I)I

    move-result v1

    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v2, v3, 0x2

    invoke-virtual {v0, v2}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    packed-switch v1, :pswitch_data_23e

    new-instance v0, Lcom/a/b/a/e/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported MethodHandle kind: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_178
    .catch Lcom/a/b/a/e/i; {:try_start_62 .. :try_end_178} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_178} :catch_178

    :catch_178
    move-exception v0

    new-instance v1, Lcom/a/b/a/e/i;

    invoke-direct {v1, v0}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "...while parsing cst "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v1

    :pswitch_1a3  #0x1, 0x2, 0x3, 0x4
    :try_start_1a3
    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/n;

    :cond_1a9
    :goto_1a9
    invoke-static {v1}, Lcom/a/b/a/c/a;->b(I)I

    move-result v1

    invoke-static {v1, v0}, Lcom/a/b/e/c/y;->a(ILcom/a/b/e/c/a;)Lcom/a/b/e/c/y;

    move-result-object v0

    goto/16 :goto_5c

    :pswitch_1b3  #0x5, 0x8
    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/z;

    goto :goto_1a9

    :pswitch_1ba  #0x6, 0x7
    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    instance-of v2, v0, Lcom/a/b/e/c/z;

    if-nez v2, :cond_1a9

    instance-of v2, v0, Lcom/a/b/e/c/q;

    if-nez v2, :cond_1a9

    new-instance v1, Lcom/a/b/a/e/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported ref constant type for MethodHandle "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1df  #0x9
    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/q;

    goto :goto_1a9

    :pswitch_1e6  #0x10
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/ad;

    invoke-static {v0}, Lcom/a/b/e/c/ab;->a(Lcom/a/b/e/c/ad;)Lcom/a/b/e/c/ab;

    move-result-object v0

    goto/16 :goto_5c

    :pswitch_1fa  #0x12
    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v1

    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v2, v3, 0x3

    invoke-virtual {v0, v2}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    move-result-object v0

    check-cast v0, Lcom/a/b/e/c/aa;

    invoke-static {v1, v0}, Lcom/a/b/e/c/r;->a(ILcom/a/b/e/c/aa;)Lcom/a/b/e/c/r;
    :try_end_213
    .catch Lcom/a/b/a/e/i; {:try_start_1a3 .. :try_end_213} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_1a3 .. :try_end_213} :catch_178

    move-result-object v0

    goto/16 :goto_5c

    :pswitch_data_216
    .packed-switch 0x1
        :pswitch_55  #00000001
        :pswitch_16  #00000002
        :pswitch_62  #00000003
        :pswitch_6f  #00000004
        :pswitch_7c  #00000005
        :pswitch_89  #00000006
        :pswitch_96  #00000007
        :pswitch_b3  #00000008
        :pswitch_c0  #00000009
        :pswitch_e4  #0000000a
        :pswitch_108  #0000000b
        :pswitch_12c  #0000000c
        :pswitch_16  #0000000d
        :pswitch_16  #0000000e
        :pswitch_150  #0000000f
        :pswitch_1e6  #00000010
        :pswitch_16  #00000011
        :pswitch_1fa  #00000012
    .end packed-switch

    :pswitch_data_23e
    .packed-switch 0x1
        :pswitch_1a3  #00000001
        :pswitch_1a3  #00000002
        :pswitch_1a3  #00000003
        :pswitch_1a3  #00000004
        :pswitch_1b3  #00000005
        :pswitch_1ba  #00000006
        :pswitch_1ba  #00000007
        :pswitch_1b3  #00000008
        :pswitch_1df  #00000009
    .end packed-switch
.end method

.method private a(I)Lcom/a/b/e/c/ad;
    .registers 5

    iget-object v0, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/a/b/g/e;->f(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/2addr v0, v1

    invoke-virtual {v2, v1, v0}, Lcom/a/b/g/e;->a(II)Lcom/a/b/g/e;

    move-result-object v0

    :try_start_11
    new-instance v1, Lcom/a/b/e/c/ad;

    invoke-direct {v1, v0}, Lcom/a/b/e/c/ad;-><init>(Lcom/a/b/g/e;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v0

    new-instance v1, Lcom/a/b/a/e/i;

    invoke-direct {v1, v0}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b(I)I
    .registers 4

    packed-switch p0, :pswitch_data_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid kind: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18  #0x1
    const/4 v0, 0x3

    :goto_19
    return v0

    :pswitch_1a  #0x2
    const/4 v0, 0x1

    goto :goto_19

    :pswitch_1c  #0x3
    const/4 v0, 0x2

    goto :goto_19

    :pswitch_1e  #0x4
    const/4 v0, 0x0

    goto :goto_19

    :pswitch_20  #0x5
    const/4 v0, 0x5

    goto :goto_19

    :pswitch_22  #0x6
    const/4 v0, 0x4

    goto :goto_19

    :pswitch_24  #0x7
    const/4 v0, 0x7

    goto :goto_19

    :pswitch_26  #0x8
    const/4 v0, 0x6

    goto :goto_19

    :pswitch_28  #0x9
    const/16 v0, 0x8

    goto :goto_19

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_18  #00000001
        :pswitch_1a  #00000002
        :pswitch_1c  #00000003
        :pswitch_1e  #00000004
        :pswitch_20  #00000005
        :pswitch_22  #00000006
        :pswitch_24  #00000007
        :pswitch_26  #00000008
        :pswitch_28  #00000009
    .end packed-switch
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lcom/a/b/a/c/a;->d:I

    if-gez v0, :cond_7

    invoke-direct {p0}, Lcom/a/b/a/c/a;->d()V

    :cond_7
    return-void
.end method

.method private d()V
    .registers 9

    const/4 v7, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/a/b/a/c/a;->e()V

    iget-object v0, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    iget-object v2, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    const/16 v3, 0x8

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "constant_pool_count: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/a/b/a/c/a;->c:[I

    array-length v6, v6

    invoke-static {v6}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    iget-object v2, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    const/16 v3, 0xa

    const-string v4, "\nconstant_pool:"

    invoke-interface {v0, v2, v3, v7, v4}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    invoke-interface {v0, v1}, Lcom/a/b/a/e/j;->a(I)V

    :cond_39
    new-instance v4, Ljava/util/BitSet;

    iget-object v0, p0, Lcom/a/b/a/c/a;->c:[I

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/BitSet;-><init>(I)V

    move v0, v1

    :goto_42
    iget-object v2, p0, Lcom/a/b/a/c/a;->c:[I

    array-length v2, v2

    if-lt v0, v2, :cond_62

    iget-object v0, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    if-eqz v0, :cond_61

    :goto_4b
    iget-object v0, p0, Lcom/a/b/a/c/a;->c:[I

    array-length v0, v0

    if-lt v1, v0, :cond_76

    iget-object v0, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/a/b/a/e/j;->a(I)V

    iget-object v0, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    iget-object v1, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    iget v2, p0, Lcom/a/b/a/c/a;->d:I

    const-string v3, "end constant_pool"

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    :cond_61
    return-void

    :cond_62
    iget-object v2, p0, Lcom/a/b/a/c/a;->c:[I

    aget v2, v2, v0

    if-eqz v2, :cond_73

    iget-object v2, p0, Lcom/a/b/a/c/a;->b:Lcom/a/b/e/c/af;

    invoke-virtual {v2, v0}, Lcom/a/b/e/c/af;->c(I)Lcom/a/b/e/c/a;

    move-result-object v2

    if-nez v2, :cond_73

    invoke-direct {p0, v0, v4}, Lcom/a/b/a/c/a;->a(ILjava/util/BitSet;)Lcom/a/b/e/c/a;

    :cond_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_76
    iget-object v0, p0, Lcom/a/b/a/c/a;->b:Lcom/a/b/e/c/af;

    invoke-virtual {v0, v1}, Lcom/a/b/e/c/af;->c(I)Lcom/a/b/e/c/a;

    move-result-object v5

    if-nez v5, :cond_81

    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_81
    iget-object v0, p0, Lcom/a/b/a/c/a;->c:[I

    aget v6, v0, v1

    iget v2, p0, Lcom/a/b/a/c/a;->d:I

    add-int/lit8 v0, v1, 0x1

    :goto_89
    iget-object v3, p0, Lcom/a/b/a/c/a;->c:[I

    array-length v3, v3

    if-lt v0, v3, :cond_c3

    move v0, v2

    :goto_8f
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_ce

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": utf8{\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/a/b/e/c/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_ba
    iget-object v3, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    iget-object v5, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    sub-int/2addr v0, v6

    invoke-interface {v3, v5, v6, v0, v2}, Lcom/a/b/a/e/j;->a(Lcom/a/b/g/e;IILjava/lang/String;)V

    goto :goto_7e

    :cond_c3
    iget-object v3, p0, Lcom/a/b/a/c/a;->c:[I

    aget v3, v3, v0

    if-eqz v3, :cond_cb

    move v0, v3

    goto :goto_8f

    :cond_cb
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    :cond_ce
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_ba
.end method

.method private e()V
    .registers 7

    const/4 v1, 0x1

    const/16 v2, 0xa

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/a/b/a/c/a;->c:[I

    array-length v3, v3

    if-lt v0, v3, :cond_c

    iput v2, p0, Lcom/a/b/a/c/a;->d:I

    return-void

    :cond_c
    iget-object v3, p0, Lcom/a/b/a/c/a;->c:[I

    aput v2, v3, v0

    iget-object v3, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    invoke-virtual {v3, v2}, Lcom/a/b/g/e;->e(I)I

    move-result v3

    packed-switch v3, :pswitch_data_7e

    :pswitch_19  #0x2, 0xd, 0xe, 0x11
    :try_start_19
    new-instance v1, Lcom/a/b/a/e/i;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unknown tag byte: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/a/b/g/k;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/a/b/a/e/i;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_32
    .catch Lcom/a/b/a/e/i; {:try_start_19 .. :try_end_32} :catch_32

    :catch_32
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "...while preparsing cst "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/a/b/g/k;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at offset "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/a/b/g/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/a/b/a/e/i;->a(Ljava/lang/String;)V

    throw v1

    :pswitch_58  #0x3, 0x4, 0x9, 0xa, 0xb, 0xc
    add-int/lit8 v2, v2, 0x5

    move v3, v1

    :goto_5b
    add-int/2addr v0, v3

    goto :goto_4

    :pswitch_5d  #0x5, 0x6
    const/4 v3, 0x2

    add-int/lit8 v2, v2, 0x9

    goto :goto_5b

    :pswitch_61  #0x7, 0x8
    add-int/lit8 v2, v2, 0x3

    move v3, v1

    goto :goto_5b

    :pswitch_65  #0x1
    :try_start_65
    iget-object v3, p0, Lcom/a/b/a/c/a;->a:Lcom/a/b/g/e;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/a/b/g/e;->f(I)I
    :try_end_6c
    .catch Lcom/a/b/a/e/i; {:try_start_65 .. :try_end_6c} :catch_32

    move-result v3

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    move v3, v1

    goto :goto_5b

    :pswitch_72  #0xf
    add-int/lit8 v2, v2, 0x4

    move v3, v1

    goto :goto_5b

    :pswitch_76  #0x10
    add-int/lit8 v2, v2, 0x3

    move v3, v1

    goto :goto_5b

    :pswitch_7a  #0x12
    add-int/lit8 v2, v2, 0x5

    move v3, v1

    goto :goto_5b

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_65  #00000001
        :pswitch_19  #00000002
        :pswitch_58  #00000003
        :pswitch_58  #00000004
        :pswitch_5d  #00000005
        :pswitch_5d  #00000006
        :pswitch_61  #00000007
        :pswitch_61  #00000008
        :pswitch_58  #00000009
        :pswitch_58  #0000000a
        :pswitch_58  #0000000b
        :pswitch_58  #0000000c
        :pswitch_19  #0000000d
        :pswitch_19  #0000000e
        :pswitch_72  #0000000f
        :pswitch_76  #00000010
        :pswitch_19  #00000011
        :pswitch_7a  #00000012
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/c/a;->c()V

    iget v0, p0, Lcom/a/b/a/c/a;->d:I

    return v0
.end method

.method public a(Lcom/a/b/a/e/j;)V
    .registers 2

    iput-object p1, p0, Lcom/a/b/a/c/a;->e:Lcom/a/b/a/e/j;

    return-void
.end method

.method public b()Lcom/a/b/e/c/af;
    .registers 2

    invoke-direct {p0}, Lcom/a/b/a/c/a;->c()V

    iget-object v0, p0, Lcom/a/b/a/c/a;->b:Lcom/a/b/e/c/af;

    return-object v0
.end method
