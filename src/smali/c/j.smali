.class public final Lc/j;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lc/bu;->d(Ljava/io/InputStream;)I

    move-result v0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Lc/j;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/j;->b:Z

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lc/j;->c:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    .line 2
    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v1, p0, Lc/j;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/j;->b:Z

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lc/j;->c:[[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    .line 3
    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v1, p0, Lc/j;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/j;->b:Z

    const/16 v0, 0xb

    new-array v0, v0, [[B

    iput-object v0, p0, Lc/j;->c:[[B

    return-void
.end method

.method public static d(ILc/bn;[[B)Lc/s;
    .locals 6

    const/16 v5, 0xff

    const/16 v4, 0xc

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_b

    if-eq p0, v4, :cond_a

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_7

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {p1, p2}, Lc/j;->e(Lc/bn;[[B)[B

    move-result-object v1

    sget-object v0, Lc/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    new-instance v0, Lc/n$a;

    invoke-direct {v0, v1}, Lc/n$a;-><init>([B)V

    sget-object v2, Lc/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/n;

    if-nez v0, :cond_0

    new-instance v0, Lc/n;

    invoke-direct {v0, v1}, Lc/n;-><init>([B)V

    .line 12
    :cond_0
    :goto_0
    return-object v0

    .line 2
    :pswitch_1
    sget-object v0, Lc/ax;->a:Lc/ax;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lc/az;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/az;-><init>([B)V

    goto :goto_0

    .line 3
    :pswitch_3
    iget v0, p1, Lc/bn;->c:I

    if-lt v0, v3, :cond_3

    .line 4
    invoke-virtual {p1}, Lc/bn;->read()I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    new-array v3, v2, [B

    if-eqz v2, :cond_2

    invoke-static {p1, v3}, Lb/b;->a(Ljava/io/InputStream;[B)I

    move-result v4

    if-ne v4, v2, :cond_1

    if-lez v1, :cond_2

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v3, v0

    shl-int v2, v5, v1

    and-int/2addr v2, v0

    int-to-byte v2, v2

    if-eq v0, v2, :cond_2

    new-instance v0, Lc/bl;

    invoke-direct {v0, v3, v1}, Lc/bl;-><init>([BI)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of BIT STRING"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lc/ap;

    invoke-direct {v0, v3, v1}, Lc/ap;-><init>([BI)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_4
    new-instance v0, Lc/k;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lc/k;-><init>([BZ)V

    goto :goto_0

    :pswitch_5
    invoke-static {p1, p2}, Lc/j;->e(Lc/bn;[[B)[B

    move-result-object v2

    sget-object v0, Lc/c;->a:[B

    .line 6
    array-length v0, v2

    if-ne v0, v3, :cond_6

    aget-byte v0, v2, v1

    if-nez v0, :cond_4

    sget-object v0, Lc/c;->c:Lc/c;

    goto :goto_0

    :cond_4
    and-int/lit16 v0, v0, 0xff

    if-ne v0, v5, :cond_5

    sget-object v0, Lc/c;->h:Lc/c;

    goto :goto_0

    :cond_5
    new-instance v0, Lc/c;

    invoke-direct {v0, v2}, Lc/c;-><init>([B)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :pswitch_6
    new-instance v0, Lc/bi;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/bi;-><init>([B)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lc/at;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/at;-><init>([B)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lc/bk;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/bk;-><init>([B)V

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Lc/av;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/av;-><init>([B)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Lc/i;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/i;-><init>([B)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Lc/aa;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aa;-><init>([B)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Lc/aw;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aw;-><init>([B)V

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Lc/bj;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/bj;-><init>([B)V

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Lc/be;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/be;-><init>([B)V

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Lc/bb;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/bb;-><init>([B)V

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Lc/ay;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/ay;-><init>([B)V

    goto/16 :goto_0

    .line 9
    :cond_7
    iget v0, p1, Lc/bn;->c:I

    .line 10
    div-int/lit8 v2, v0, 0x2

    new-array v3, v2, [C

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_8

    invoke-virtual {p1}, Lc/bn;->read()I

    move-result v1

    if-gez v1, :cond_9

    .line 11
    :cond_8
    new-instance v0, Lc/ao;

    invoke-direct {v0, v3}, Lc/ao;-><init>([C)V

    goto/16 :goto_0

    .line 10
    :cond_9
    invoke-virtual {p1}, Lc/bn;->read()I

    move-result v4

    if-ltz v4, :cond_8

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_a
    new-instance v0, Lc/bh;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/bh;-><init>([B)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p1, p2}, Lc/j;->e(Lc/bn;[[B)[B

    move-result-object v2

    .line 12
    array-length v0, v2

    if-le v0, v3, :cond_c

    new-instance v0, Lc/g;

    invoke-direct {v0, v2}, Lc/g;-><init>([B)V

    goto/16 :goto_0

    :cond_c
    array-length v0, v2

    if-eqz v0, :cond_e

    aget-byte v0, v2, v1

    and-int/lit16 v1, v0, 0xff

    sget-object v3, Lc/g;->a:[Lc/g;

    if-lt v1, v4, :cond_d

    new-instance v0, Lc/g;

    invoke-static {v2}, Lx/a;->b([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/g;-><init>([B)V

    goto/16 :goto_0

    :cond_d
    aget-object v0, v3, v1

    if-nez v0, :cond_0

    new-instance v0, Lc/g;

    invoke-static {v2}, Lx/a;->b([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lc/g;-><init>([B)V

    aput-object v0, v3, v1

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ENUMERATED has zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4294967295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static e(Lc/bn;[[B)[B
    .locals 2

    .line 1
    iget v1, p0, Lc/bn;->c:I

    .line 2
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v0, p1, v1

    if-nez v0, :cond_0

    new-array v0, v1, [B

    aput-object v0, p1, v1

    :cond_0
    invoke-static {p0, v0}, Lb/b;->a(Ljava/io/InputStream;[B)I

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lc/bn;->e()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static f(Ljava/io/InputStream;I)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_6

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    and-int/lit8 v3, v0, 0x7f

    const/4 v0, 0x4

    if-gt v3, v0, :cond_5

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_2

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found reading length"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ltz v0, :cond_4

    if-lt v0, p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - out of bounds length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - negative length found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DER length more than 4 bytes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found when length expected"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Ljava/io/InputStream;I)I
    .locals 3

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit8 v0, v1, 0x7f

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ltz v1, :cond_0

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_0

    :cond_0
    if-ltz v1, :cond_2

    and-int/lit8 v1, v1, 0x7f

    or-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF found inside tag value."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "corrupted stream - invalid high tag number found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final h(Lc/bn;)Lc/f;
    .locals 3

    new-instance v0, Lc/j;

    invoke-direct {v0, p1}, Lc/j;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lc/f;

    invoke-direct {v1}, Lc/f;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lc/j;->j()Lc/s;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lc/f;->b(Lc/e;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final i(III)Lc/s;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Lc/bn;

    invoke-direct {v3, p0, p3}, Lc/bn;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_1

    new-instance v1, Lc/ab;

    invoke-virtual {v3}, Lc/bn;->e()[B

    move-result-object v2

    invoke-direct {v1, v0, p2, v2}, Lc/ab;-><init>(ZI[B)V

    move-object v0, v1

    .line 4
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 4294967295
    goto :goto_0

    :cond_1
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_2

    new-instance v1, Lc/x;

    invoke-direct {v1, v3}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0, p2}, Lc/x;->e(ZI)Lc/s;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_9

    const/16 v0, 0x8

    if-eq p2, v0, :cond_8

    const/16 v0, 0x10

    if-eq p2, v0, :cond_5

    const/16 v0, 0x11

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, v3}, Lc/j;->h(Lc/bn;)Lc/f;

    move-result-object v2

    sget-object v0, Lc/as;->a:Lc/bc;

    .line 1
    invoke-virtual {v2}, Lc/f;->d()I

    move-result v0

    if-ge v0, v1, :cond_3

    sget-object v0, Lc/as;->b:Lc/bd;

    goto :goto_1

    :cond_3
    new-instance v0, Lc/bd;

    invoke-direct {v0, v2}, Lc/bd;-><init>(Lc/f;)V

    goto :goto_1

    .line 2
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown tag "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " encountered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-boolean v0, p0, Lc/j;->b:Z

    if-eqz v0, :cond_6

    new-instance v0, Lc/br;

    invoke-virtual {v3}, Lc/bn;->e()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/br;-><init>([B)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3}, Lc/j;->h(Lc/bn;)Lc/f;

    move-result-object v2

    sget-object v0, Lc/as;->a:Lc/bc;

    .line 3
    invoke-virtual {v2}, Lc/f;->d()I

    move-result v0

    if-ge v0, v1, :cond_7

    sget-object v0, Lc/as;->a:Lc/bc;

    goto :goto_1

    :cond_7
    new-instance v0, Lc/bc;

    invoke-direct {v0, v2, v1}, Lc/bc;-><init>(Lc/f;I)V

    goto :goto_1

    .line 4
    :cond_8
    new-instance v0, Lc/aq;

    invoke-virtual {p0, v3}, Lc/j;->h(Lc/bn;)Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aq;-><init>(Lc/f;)V

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v3}, Lc/j;->h(Lc/bn;)Lc/f;

    move-result-object v1

    invoke-virtual {v1}, Lc/f;->d()I

    move-result v3

    new-array v4, v3, [Lc/o;

    :goto_2
    if-eq v2, v3, :cond_a

    invoke-virtual {v1, v2}, Lc/f;->c(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/o;

    aput-object v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    new-instance v0, Lc/ae;

    invoke-direct {v0, v4}, Lc/ae;-><init>([Lc/o;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lc/j;->c:[[B

    invoke-static {p2, v3, v0}, Lc/j;->d(ILc/bn;[[B)Lc/s;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public final j()Lc/s;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-gtz v3, :cond_1

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0

    .line 4294967295
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v3}, Lc/j;->g(Ljava/io/InputStream;I)I

    move-result v4

    and-int/lit8 v0, v3, 0x20

    if-eqz v0, :cond_2

    move v0, v1

    .line 1
    :goto_1
    iget v5, p0, Lc/j;->a:I

    invoke-static {p0, v5}, Lc/j;->f(Ljava/io/InputStream;I)I

    move-result v5

    if-gez v5, :cond_a

    if-eqz v0, :cond_9

    .line 2
    new-instance v5, Lc/x;

    new-instance v0, Lc/bp;

    iget v6, p0, Lc/j;->a:I

    invoke-direct {v0, p0, v6}, Lc/bp;-><init>(Ljava/io/InputStream;I)V

    iget v6, p0, Lc/j;->a:I

    invoke-direct {v5, v0, v6}, Lc/x;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v0, v3, 0x40

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Lc/ab;

    invoke-virtual {v5}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lc/ab;-><init>(ILc/f;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 4294967295
    goto :goto_1

    .line 3
    :cond_3
    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v5, v1, v4}, Lc/x;->e(ZI)Lc/s;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-eq v4, v0, :cond_8

    const/16 v0, 0x8

    if-eq v4, v0, :cond_7

    const/16 v0, 0x10

    if-eq v4, v0, :cond_6

    const/16 v0, 0x11

    if-ne v4, v0, :cond_5

    .line 5
    new-instance v0, Lc/aj;

    invoke-virtual {v5}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aj;-><init>(Lc/f;)V

    goto :goto_0

    .line 6
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_6
    new-instance v0, Lc/ah;

    invoke-virtual {v5}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/ah;-><init>(Lc/f;)V

    goto :goto_0

    .line 8
    :cond_7
    :try_start_0
    new-instance v0, Lc/aq;

    invoke-virtual {v5}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aq;-><init>(Lc/f;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0, v2}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 9
    :cond_8
    new-instance v0, Lc/ag;

    invoke-direct {v0, v5, v2}, Lc/ag;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lc/ag;->c()Lc/s;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_1
    invoke-virtual {p0, v3, v4, v5}, Lc/j;->i(III)Lc/s;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lc/h;

    const-string v3, "corrupted stream detected"

    invoke-direct {v1, v3, v0, v2}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
