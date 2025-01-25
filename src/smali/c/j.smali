.class public final Lc/j;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Lc/bu;->d(Ljava/io/InputStream;)I

    move-result v0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput v0, p0, Lc/j;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/j;->b:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lc/j;->c:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    .line 2
    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p1, p0, Lc/j;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/j;->b:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lc/j;->c:[[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 3

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    .line 3
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p1, p0, Lc/j;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/j;->b:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lc/j;->c:[[B

    return-void
.end method

.method public static d(ILc/bn;[[B)Lc/s;
    .registers 8

    const/16 v0, 0xa

    const/16 v1, 0xc

    const/16 v2, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p0, v0, :cond_165

    if-eq p0, v1, :cond_15b

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_134

    packed-switch p0, :pswitch_data_1a2

    packed-switch p0, :pswitch_data_1b2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "unknown tag "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " encountered"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2f  #0x6
    invoke-static {p1, p2}, Lc/j;->e(Lc/bn;[[B)[B

    move-result-object p0

    sget-object p1, Lc/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1
    new-instance p1, Lc/n$a;

    invoke-direct {p1, p0}, Lc/n$a;-><init>([B)V

    sget-object p2, Lc/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/n;

    if-nez p1, :cond_49

    new-instance p1, Lc/n;

    invoke-direct {p1, p0}, Lc/n;-><init>([B)V

    :cond_49
    return-object p1

    .line 2
    :pswitch_4a  #0x5
    sget-object p0, Lc/ax;->a:Lc/ax;

    return-object p0

    :pswitch_4d  #0x4
    new-instance p0, Lc/az;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/az;-><init>([B)V

    return-object p0

    .line 3
    :pswitch_57  #0x3
    iget p0, p1, Lc/bn;->c:I

    if-lt p0, v3, :cond_8f

    .line 4
    invoke-virtual {p1}, Lc/bn;->read()I

    move-result p2

    add-int/lit8 v0, p0, -0x1

    new-array v1, v0, [B

    if-eqz v0, :cond_89

    invoke-static {p1, v1}, Lb/b;->a(Ljava/io/InputStream;[B)I

    move-result p1

    if-ne p1, v0, :cond_81

    if-lez p2, :cond_89

    const/16 p1, 0x8

    if-ge p2, p1, :cond_89

    add-int/lit8 p0, p0, -0x2

    aget-byte p0, v1, p0

    shl-int p1, v2, p2

    and-int/2addr p1, p0

    int-to-byte p1, p1

    if-eq p0, p1, :cond_89

    new-instance p0, Lc/bl;

    invoke-direct {p0, v1, p2}, Lc/bl;-><init>([BI)V

    goto :goto_8e

    :cond_81
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF encountered in middle of BIT STRING"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    new-instance p0, Lc/ap;

    invoke-direct {p0, v1, p2}, Lc/ap;-><init>([BI)V

    :goto_8e
    return-object p0

    :cond_8f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "truncated BIT STRING detected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :pswitch_97  #0x2
    new-instance p0, Lc/k;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lc/k;-><init>([BZ)V

    return-object p0

    :pswitch_a1  #0x1
    invoke-static {p1, p2}, Lc/j;->e(Lc/bn;[[B)[B

    move-result-object p0

    sget-object p1, Lc/c;->a:[B

    .line 6
    array-length p1, p0

    if-ne p1, v3, :cond_be

    aget-byte p1, p0, v4

    if-nez p1, :cond_b1

    sget-object p0, Lc/c;->c:Lc/c;

    goto :goto_bd

    :cond_b1
    and-int/2addr p1, v2

    if-ne p1, v2, :cond_b7

    sget-object p0, Lc/c;->h:Lc/c;

    goto :goto_bd

    :cond_b7
    new-instance p1, Lc/c;

    invoke-direct {p1, p0}, Lc/c;-><init>([B)V

    move-object p0, p1

    :goto_bd
    return-object p0

    :cond_be
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_c6  #0x1c
    new-instance p0, Lc/bi;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/bi;-><init>([B)V

    return-object p0

    :pswitch_d0  #0x1b
    new-instance p0, Lc/at;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/at;-><init>([B)V

    return-object p0

    :pswitch_da  #0x1a
    new-instance p0, Lc/bk;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/bk;-><init>([B)V

    return-object p0

    :pswitch_e4  #0x19
    new-instance p0, Lc/av;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/av;-><init>([B)V

    return-object p0

    :pswitch_ee  #0x18
    new-instance p0, Lc/i;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/i;-><init>([B)V

    return-object p0

    :pswitch_f8  #0x17
    new-instance p0, Lc/aa;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/aa;-><init>([B)V

    return-object p0

    :pswitch_102  #0x16
    new-instance p0, Lc/aw;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/aw;-><init>([B)V

    return-object p0

    :pswitch_10c  #0x15
    new-instance p0, Lc/bj;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/bj;-><init>([B)V

    return-object p0

    :pswitch_116  #0x14
    new-instance p0, Lc/be;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/be;-><init>([B)V

    return-object p0

    :pswitch_120  #0x13
    new-instance p0, Lc/bb;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/bb;-><init>([B)V

    return-object p0

    :pswitch_12a  #0x12
    new-instance p0, Lc/ay;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/ay;-><init>([B)V

    return-object p0

    .line 9
    :cond_134
    iget p0, p1, Lc/bn;->c:I

    .line 10
    div-int/lit8 p0, p0, 0x2

    new-array p2, p0, [C

    :goto_13a
    if-ge v4, p0, :cond_155

    invoke-virtual {p1}, Lc/bn;->read()I

    move-result v0

    if-gez v0, :cond_143

    goto :goto_155

    :cond_143
    invoke-virtual {p1}, Lc/bn;->read()I

    move-result v1

    if-gez v1, :cond_14a

    goto :goto_155

    :cond_14a
    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    aput-char v0, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_13a

    .line 11
    :cond_155
    :goto_155
    new-instance p0, Lc/ao;

    invoke-direct {p0, p2}, Lc/ao;-><init>([C)V

    return-object p0

    :cond_15b
    new-instance p0, Lc/bh;

    invoke-virtual {p1}, Lc/bn;->e()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lc/bh;-><init>([B)V

    return-object p0

    :cond_165
    invoke-static {p1, p2}, Lc/j;->e(Lc/bn;[[B)[B

    move-result-object p0

    .line 12
    array-length p1, p0

    if-le p1, v3, :cond_172

    new-instance p1, Lc/g;

    invoke-direct {p1, p0}, Lc/g;-><init>([B)V

    goto :goto_196

    :cond_172
    array-length p1, p0

    if-eqz p1, :cond_197

    aget-byte p1, p0, v4

    and-int/2addr p1, v2

    sget-object p2, Lc/g;->a:[Lc/g;

    if-lt p1, v1, :cond_186

    new-instance p1, Lc/g;

    invoke-static {p0}, Lx/a;->b([B)[B

    move-result-object p0

    invoke-direct {p1, p0}, Lc/g;-><init>([B)V

    goto :goto_196

    :cond_186
    aget-object v0, p2, p1

    if-nez v0, :cond_195

    new-instance v0, Lc/g;

    invoke-static {p0}, Lx/a;->b([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lc/g;-><init>([B)V

    aput-object v0, p2, p1

    :cond_195
    move-object p1, v0

    :goto_196
    return-object p1

    :cond_197
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ENUMERATED has zero length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1a0

    :goto_19f
    throw p0

    :goto_1a0
    goto :goto_19f

    nop

    :pswitch_data_1a2
    .packed-switch 0x1
        :pswitch_a1  #00000001
        :pswitch_97  #00000002
        :pswitch_57  #00000003
        :pswitch_4d  #00000004
        :pswitch_4a  #00000005
        :pswitch_2f  #00000006
    .end packed-switch

    :pswitch_data_1b2
    .packed-switch 0x12
        :pswitch_12a  #00000012
        :pswitch_120  #00000013
        :pswitch_116  #00000014
        :pswitch_10c  #00000015
        :pswitch_102  #00000016
        :pswitch_f8  #00000017
        :pswitch_ee  #00000018
        :pswitch_e4  #00000019
        :pswitch_da  #0000001a
        :pswitch_d0  #0000001b
        :pswitch_c6  #0000001c
    .end packed-switch
.end method

.method public static e(Lc/bn;[[B)[B
    .registers 4

    .line 1
    iget v0, p0, Lc/bn;->c:I

    .line 2
    array-length v1, p1

    if-ge v0, v1, :cond_11

    aget-object v1, p1, v0

    if-nez v1, :cond_d

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_d
    invoke-static {p0, v1}, Lb/b;->a(Ljava/io/InputStream;[B)I

    return-object v1

    :cond_11
    invoke-virtual {p0}, Lc/bn;->e()[B

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/io/InputStream;I)I
    .registers 6

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_58

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    const/4 p0, -0x1

    return p0

    :cond_c
    const/16 v1, 0x7f

    if-le v0, v1, :cond_57

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_43

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_2d

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_25

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_25
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    if-ltz v1, :cond_3b

    if-ge v1, p1, :cond_33

    move v0, v1

    goto :goto_57

    :cond_33
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - out of bounds length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - negative length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DER length more than 4 bytes: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_57
    :goto_57
    return v0

    :cond_58
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_61

    :goto_60
    throw p0

    :goto_61
    goto :goto_60
.end method

.method public static g(Ljava/io/InputStream;I)I
    .registers 4

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_35

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    and-int/lit8 v0, p1, 0x7f

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    :goto_e
    if-ltz p1, :cond_1e

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_1e

    and-int/lit8 p1, p1, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    goto :goto_e

    :cond_1e
    if-ltz p1, :cond_25

    and-int/lit8 p0, p1, 0x7f

    or-int p1, v0, p0

    goto :goto_35

    :cond_25
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found inside tag value."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    :goto_35
    return p1
.end method


# virtual methods
.method public final h(Lc/bn;)Lc/f;
    .registers 4

    new-instance v0, Lc/j;

    invoke-direct {v0, p1}, Lc/j;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lc/f;

    invoke-direct {p1}, Lc/f;-><init>()V

    :goto_a
    invoke-virtual {v0}, Lc/j;->j()Lc/s;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, v1}, Lc/f;->b(Lc/e;)V

    goto :goto_a

    :cond_14
    return-object p1
.end method

.method public final i(III)Lc/s;
    .registers 8

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    new-instance v3, Lc/bn;

    invoke-direct {v3, p0, p3}, Lc/bn;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p3, p1, 0x40

    if-eqz p3, :cond_1c

    new-instance p1, Lc/ab;

    invoke-virtual {v3}, Lc/bn;->e()[B

    move-result-object p3

    invoke-direct {p1, v0, p2, p3}, Lc/ab;-><init>(ZI[B)V

    return-object p1

    :cond_1c
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2a

    new-instance p1, Lc/x;

    invoke-direct {p1, v3}, Lc/x;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v0, p2}, Lc/x;->e(ZI)Lc/s;

    move-result-object p1

    return-object p1

    :cond_2a
    if-eqz v0, :cond_b5

    const/4 p1, 0x4

    if-eq p2, p1, :cond_98

    const/16 p1, 0x8

    if-eq p2, p1, :cond_8e

    const/16 p1, 0x10

    if-eq p2, p1, :cond_6a

    const/16 p1, 0x11

    if-ne p2, p1, :cond_51

    invoke-virtual {p0, v3}, Lc/j;->h(Lc/bn;)Lc/f;

    move-result-object p1

    sget-object p2, Lc/as;->a:Lc/bc;

    .line 1
    invoke-virtual {p1}, Lc/f;->d()I

    move-result p2

    if-ge p2, v1, :cond_4a

    sget-object p1, Lc/as;->b:Lc/bd;

    goto :goto_50

    :cond_4a
    new-instance p2, Lc/bd;

    invoke-direct {p2, p1}, Lc/bd;-><init>(Lc/f;)V

    move-object p1, p2

    :goto_50
    return-object p1

    .line 2
    :cond_51
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "unknown tag "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6a
    iget-boolean p1, p0, Lc/j;->b:Z

    if-eqz p1, :cond_78

    new-instance p1, Lc/br;

    invoke-virtual {v3}, Lc/bn;->e()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lc/br;-><init>([B)V

    return-object p1

    :cond_78
    invoke-virtual {p0, v3}, Lc/j;->h(Lc/bn;)Lc/f;

    move-result-object p1

    sget-object p2, Lc/as;->a:Lc/bc;

    .line 3
    invoke-virtual {p1}, Lc/f;->d()I

    move-result p2

    if-ge p2, v1, :cond_87

    sget-object p1, Lc/as;->a:Lc/bc;

    goto :goto_8d

    :cond_87
    new-instance p2, Lc/bc;

    invoke-direct {p2, p1, v1}, Lc/bc;-><init>(Lc/f;I)V

    move-object p1, p2

    :goto_8d
    return-object p1

    .line 4
    :cond_8e
    new-instance p1, Lc/aq;

    invoke-virtual {p0, v3}, Lc/j;->h(Lc/bn;)Lc/f;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/aq;-><init>(Lc/f;)V

    return-object p1

    :cond_98
    invoke-virtual {p0, v3}, Lc/j;->h(Lc/bn;)Lc/f;

    move-result-object p1

    invoke-virtual {p1}, Lc/f;->d()I

    move-result p2

    new-array p3, p2, [Lc/o;

    :goto_a2
    if-eq v2, p2, :cond_af

    invoke-virtual {p1, v2}, Lc/f;->c(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/o;

    aput-object v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    :cond_af
    new-instance p1, Lc/ae;

    invoke-direct {p1, p3}, Lc/ae;-><init>([Lc/o;)V

    return-object p1

    :cond_b5
    iget-object p1, p0, Lc/j;->c:[[B

    invoke-static {p2, v3, p1}, Lc/j;->d(ILc/bn;[[B)Lc/s;

    move-result-object p1

    return-object p1
.end method

.method public final j()Lc/s;
    .registers 8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gtz v0, :cond_12

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {p0, v0}, Lc/j;->g(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 1
    :goto_1f
    iget v5, p0, Lc/j;->a:I

    invoke-static {p0, v5}, Lc/j;->f(Ljava/io/InputStream;I)I

    move-result v5

    if-gez v5, :cond_a0

    if-eqz v2, :cond_98

    .line 2
    new-instance v2, Lc/x;

    new-instance v5, Lc/bp;

    iget v6, p0, Lc/j;->a:I

    invoke-direct {v5, p0, v6}, Lc/bp;-><init>(Ljava/io/InputStream;I)V

    iget v6, p0, Lc/j;->a:I

    invoke-direct {v2, v5, v6}, Lc/x;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_45

    .line 3
    new-instance v0, Lc/ab;

    invoke-virtual {v2}, Lc/x;->f()Lc/f;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/ab;-><init>(ILc/f;)V

    return-object v0

    :cond_45
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4e

    .line 4
    invoke-virtual {v2, v3, v1}, Lc/x;->e(ZI)Lc/s;

    move-result-object v0

    return-object v0

    :cond_4e
    const/4 v0, 0x4

    if-eq v1, v0, :cond_8e

    const/16 v0, 0x8

    if-eq v1, v0, :cond_79

    const/16 v0, 0x10

    if-eq v1, v0, :cond_6f

    const/16 v0, 0x11

    if-ne v1, v0, :cond_67

    .line 5
    new-instance v0, Lc/aj;

    invoke-virtual {v2}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aj;-><init>(Lc/f;)V

    return-object v0

    .line 6
    :cond_67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_6f
    new-instance v0, Lc/ah;

    invoke-virtual {v2}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/ah;-><init>(Lc/f;)V

    return-object v0

    .line 8
    :cond_79
    :try_start_79
    new-instance v0, Lc/aq;

    invoke-virtual {v2}, Lc/x;->f()Lc/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/aq;-><init>(Lc/f;)V
    :try_end_82
    .catch Ljava/lang/IllegalArgumentException; {:try_start_79 .. :try_end_82} :catch_83

    return-object v0

    :catch_83
    move-exception v0

    new-instance v1, Lc/h;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v4}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 9
    :cond_8e
    new-instance v0, Lc/ag;

    invoke-direct {v0, v2, v4}, Lc/ag;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Lc/ag;->c()Lc/s;

    move-result-object v0

    return-object v0

    :cond_98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    :try_start_a0
    invoke-virtual {p0, v0, v1, v5}, Lc/j;->i(III)Lc/s;

    move-result-object v0
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_a4} :catch_a5

    return-object v0

    :catch_a5
    move-exception v0

    new-instance v1, Lc/h;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0, v4}, Lc/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method
