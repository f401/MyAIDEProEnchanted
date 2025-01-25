.class public final Lc/n;
.super Lc/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/n$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lc/n$a;",
            "Lc/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public c:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lc/n;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lc/s;-><init>()V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lc/n;->k(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object p1, p1, Lc/n;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/n;->b:Ljava/lang/String;

    return-void

    :cond_23
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "string "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not a valid OID branch"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lc/s;-><init>()V

    if-eqz p1, :cond_47

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt v0, v1, :cond_29

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_17

    goto :goto_29

    :cond_17
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_29

    const/16 v1, 0x32

    if-le v0, v1, :cond_24

    goto :goto_29

    :cond_24
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lc/n;->k(Ljava/lang/String;I)Z

    move-result v2

    :cond_29
    :goto_29
    if-eqz v2, :cond_2e

    .line 2
    iput-object p1, p0, Lc/n;->b:Ljava/lang/String;

    return-void

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not an OID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'identifier\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lc/s;-><init>()V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    move-wide v9, v6

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_12
    array-length v12, v1

    if-eq v8, v12, :cond_8a

    aget-byte v12, v1, v8

    const-wide v13, 0xffffffffffff80L

    const/16 v15, 0x32

    const/16 v4, 0x2e

    const/4 v5, 0x7

    const-wide/16 v16, 0x50

    cmp-long v18, v9, v13

    if-gtz v18, :cond_57

    and-int/lit8 v13, v12, 0x7f

    int-to-long v13, v13

    add-long/2addr v9, v13

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_55

    if-eqz v3, :cond_4e

    const-wide/16 v12, 0x28

    cmp-long v3, v9, v12

    if-gez v3, :cond_3d

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4d

    :cond_3d
    cmp-long v3, v9, v16

    if-gez v3, :cond_48

    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-long/2addr v9, v12

    goto :goto_4d

    :cond_48
    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sub-long v9, v9, v16

    :goto_4d
    const/4 v3, 0x0

    :cond_4e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_81

    :cond_55
    shl-long/2addr v9, v5

    goto :goto_87

    :cond_57
    if-nez v11, :cond_5d

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    :cond_5d
    and-int/lit8 v13, v12, 0x7f

    int-to-long v13, v13

    invoke-static {v13, v14}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    and-int/lit16 v12, v12, 0x80

    if-nez v12, :cond_83

    if-eqz v3, :cond_7a

    invoke-virtual {v2, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    const/4 v3, 0x0

    :cond_7a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    :goto_81
    move-wide v9, v6

    goto :goto_87

    :cond_83
    invoke-virtual {v11, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    :goto_87
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_8a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lc/n;->b:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lx/a;->b([B)[B

    move-result-object v1

    iput-object v1, v0, Lc/n;->c:[B

    return-void
.end method

.method public static h(Ljava/lang/Object;)Lc/n;
    .registers 3

    if-eqz p0, :cond_5d

    instance-of v0, p0, Lc/n;

    if-eqz v0, :cond_7

    goto :goto_5d

    :cond_7
    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_1d

    move-object v0, p0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v1

    instance-of v1, v1, Lc/n;

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object p0

    check-cast p0, Lc/n;

    return-object p0

    :cond_1d
    instance-of v0, p0, [B

    if-eqz v0, :cond_42

    check-cast p0, [B

    :try_start_23
    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object p0

    check-cast p0, Lc/n;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    .line 1
    const-string v0, "failed to construct object identifier from byte[]: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_42
    const-string v0, "illegal object in getInstance: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    :goto_5d
    check-cast p0, Lc/n;

    return-object p0
.end method

.method public static k(Ljava/lang/String;I)Z
    .registers 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_18

    const/16 v4, 0x39

    if-gt v3, v4, :cond_18

    const/4 v2, 0x1

    goto :goto_6

    :cond_18
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_1e

    if-nez v2, :cond_4

    :cond_1e
    return v1

    :cond_1f
    return v2
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lc/n;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    iget-object v0, p0, Lc/n;->b:Ljava/lang/String;

    check-cast p1, Lc/n;

    iget-object p1, p1, Lc/n;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e(Lc/q;)V
    .registers 4

    invoke-virtual {p0}, Lc/n;->p()[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lc/q;->d(I)V

    array-length v1, v0

    invoke-virtual {p1, v1}, Lc/q;->i(I)V

    invoke-virtual {p1, v0}, Lc/q;->e([B)V

    return-void
.end method

.method public final f()I
    .registers 3

    invoke-virtual {p0}, Lc/n;->p()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lc/n;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/io/ByteArrayOutputStream;)V
    .registers 9

    new-instance v0, Lc/bt;

    iget-object v1, p0, Lc/n;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lc/bt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/bt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x28

    invoke-virtual {v0}, Lc/bt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x12

    if-gt v3, v4, :cond_26

    int-to-long v5, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v1, v5

    move-wide v2, v1

    move-object v1, p0

    goto :goto_4b

    :cond_26
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lc/n;->s(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    move-object v1, p0

    .line 1
    :goto_38
    iget v2, v0, Lc/bt;->b:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_58

    .line 2
    invoke-virtual {v0}, Lc/bt;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v4, :cond_4f

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3
    :goto_4b
    invoke-virtual {v1, p1, v2, v3}, Lc/n;->r(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_38

    .line 4
    :cond_4f
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3}, Lc/n;->s(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_38

    :cond_58
    return-void
.end method

.method public final p()[B
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/n;->c:[B

    if-nez v0, :cond_13

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lc/n;->o(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lc/n;->c:[B

    :cond_13
    iget-object v0, p0, Lc/n;->c:[B
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()Lc/n;
    .registers 4

    new-instance v0, Lc/n$a;

    invoke-virtual {p0}, Lc/n;->p()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lc/n$a;-><init>([B)V

    sget-object v1, Lc/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/n;

    if-nez v2, :cond_1d

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lc/n;

    if-nez v2, :cond_1d

    move-object v2, p0

    :cond_1d
    return-object v2
.end method

.method public final r(Ljava/io/ByteArrayOutputStream;J)V
    .registers 9

    const/16 v0, 0x9

    new-array v0, v0, [B

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    :goto_c
    const-wide/16 v3, 0x80

    cmp-long v1, p2, v3

    if-ltz v1, :cond_1f

    const/4 v1, 0x7

    shr-long/2addr p2, v1

    add-int/lit8 v2, v2, -0x1

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_c

    :cond_1f
    rsub-int/lit8 p2, v2, 0x9

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public final s(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .registers 10

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    const/4 v1, 0x7

    div-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_f

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_32

    :cond_f
    new-array v3, v0, [B

    add-int/lit8 v4, v0, -0x1

    move v5, v4

    :goto_14
    if-ltz v5, :cond_28

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x7f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v5, v5, -0x1

    goto :goto_14

    :cond_28
    aget-byte p2, v3, v4

    and-int/lit8 p2, p2, 0x7f

    int-to-byte p2, p2

    aput-byte p2, v3, v4

    invoke-virtual {p1, v3, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_32
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lc/n;->b:Ljava/lang/String;

    return-object v0
.end method
