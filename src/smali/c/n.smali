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
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
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
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lc/n;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lc/s;-><init>()V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lc/n;->k(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v1, p1, Lc/n;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/n;->b:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not a valid OID branch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lc/s;-><init>()V

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lc/n;->b:Ljava/lang/String;

    return-void

    .line 1
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x32

    if-gt v1, v2, :cond_0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lc/n;->k(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 2
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "string "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not an OID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'identifier\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 10

    invoke-direct {p0}, Lc/s;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v6, p1

    if-eq v4, v6, :cond_8

    aget-byte v6, p1, v4

    const-wide v8, 0xffffffffffff80L

    cmp-long v7, v2, v8

    if-gtz v7, :cond_4

    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    add-long/2addr v2, v8

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_3

    if-eqz v1, :cond_0

    const-wide/16 v6, 0x28

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    const/16 v1, 0x30

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    const/4 v1, 0x0

    :cond_0
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_2
    const-wide/16 v2, 0x0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x50

    cmp-long v1, v2, v6

    if-gez v1, :cond_2

    const/16 v1, 0x31

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v6, 0x28

    sub-long/2addr v2, v6

    goto :goto_1

    :cond_2
    const/16 v1, 0x32

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v6, 0x50

    sub-long/2addr v2, v6

    goto :goto_1

    :cond_3
    const/4 v6, 0x7

    shl-long/2addr v2, v6

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    :cond_5
    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_7

    if-eqz v1, :cond_6

    const/16 v1, 0x32

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-wide/16 v2, 0x50

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    :cond_6
    const/16 v2, 0x2e

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/n;->b:Ljava/lang/String;

    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object v0

    iput-object v0, p0, Lc/n;->c:[B

    return-void
.end method

.method public static h(Ljava/lang/Object;)Lc/n;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lc/n;

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    check-cast p0, Lc/n;

    move-object v0, p0

    :goto_0
    return-object v0

    .line 4294967295
    :cond_1
    instance-of v0, p0, Lc/e;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lc/e;

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v1

    instance-of v1, v1, Lc/n;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lc/e;->l()Lc/s;

    move-result-object v0

    check-cast v0, Lc/n;

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    check-cast p0, [B

    :try_start_0
    invoke-static {p0}, Lc/s;->t([B)Lc/s;

    move-result-object v0

    check-cast v0, Lc/n;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1
    const-string v1, "failed to construct object identifier from byte[]: "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_3
    const-string v0, "illegal object in getInstance: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static k(Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    move v2, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-gt v4, v3, :cond_1

    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v4, 0x2e

    if-ne v3, v4, :cond_2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    :goto_1
    return v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lc/n;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/n;->b:Ljava/lang/String;

    check-cast p1, Lc/n;

    iget-object v1, p1, Lc/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final e(Lc/q;)V
    .locals 2

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
    .locals 2

    invoke-virtual {p0}, Lc/n;->p()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc/n;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/io/ByteArrayOutputStream;)V
    .locals 7

    const/16 v6, 0x12

    new-instance v2, Lc/bt;

    iget-object v0, p0, Lc/n;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lc/bt;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lc/bt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x28

    invoke-virtual {v2}, Lc/bt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_0

    int-to-long v4, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v4

    .line 3
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lc/n;->r(Ljava/io/ByteArrayOutputStream;J)V

    .line 1
    :goto_1
    iget v0, v2, Lc/bt;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 2
    invoke-virtual {v2}, Lc/bt;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 4294967295
    :cond_0
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc/n;->s(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lc/n;->s(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final p()[B
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/n;->c:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lc/n;->o(Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lc/n;->c:[B

    :cond_0
    iget-object v0, p0, Lc/n;->c:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()Lc/n;
    .locals 3

    new-instance v1, Lc/n$a;

    invoke-virtual {p0}, Lc/n;->p()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lc/n$a;-><init>([B)V

    sget-object v2, Lc/n;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/n;

    if-nez v0, :cond_0

    invoke-virtual {v2, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/n;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public final r(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4

    const/16 v0, 0x8

    const/16 v1, 0x9

    new-array v1, v1, [B

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x7

    shr-long/2addr p2, v2

    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public final s(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v2, v0, 0x7

    if-nez v2, :cond_0

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    new-array v3, v2, [B

    add-int/lit8 v1, v2, -0x1

    move v0, v1

    :goto_1
    if-ltz v0, :cond_1

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/4 v4, 0x7

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    aget-byte v0, v3, v1

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    invoke-virtual {p1, v3, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/n;->b:Ljava/lang/String;

    return-object v0
.end method
