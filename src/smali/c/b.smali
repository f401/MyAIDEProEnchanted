.class public abstract Lc/b;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/y;


# static fields
.field public static final a:[C


# instance fields
.field public final b:[B

.field public final c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lc/b;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([BI)V
    .registers 4

    invoke-direct {p0}, Lc/s;-><init>()V

    const-string v0, "data cannot be null"

    invoke-static {p1, v0}, Lc/aw$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_16

    if-nez p2, :cond_e

    goto :goto_16

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "zero length data with non-zero pad bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_16
    :goto_16
    const/4 v0, 0x7

    if-gt p2, v0, :cond_24

    if-ltz p2, :cond_24

    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lc/b;->b:[B

    iput p2, p0, Lc/b;->c:I

    return-void

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 5

    instance-of v0, p1, Lc/b;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lc/b;

    iget v0, p0, Lc/b;->c:I

    iget v2, p1, Lc/b;->c:I

    if-ne v0, v2, :cond_1d

    invoke-virtual {p0}, Lc/b;->k()[B

    move-result-object v0

    invoke-virtual {p1}, Lc/b;->k()[B

    move-result-object p1

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1
.end method

.method public final h()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lc/q;

    invoke-direct {v2, v1}, Lc/q;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v2, p0}, Lc/q;->j(Lc/e;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_3a

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    :goto_19
    array-length v2, v1

    if-eq v3, v2, :cond_35

    sget-object v2, Lc/b;->a:[C

    aget-byte v4, v1, v3

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v2, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v4, v1, v3

    and-int/lit8 v4, v4, 0xf

    aget-char v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_3a
    move-exception v0

    .line 1
    const-string v1, "Internal error encoding BitString: "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lc/r;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_53

    :goto_52
    throw v2

    :goto_53
    goto :goto_52
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lc/b;->c:I

    invoke-virtual {p0}, Lc/b;->k()[B

    move-result-object v1

    invoke-static {v1}, Lx/a;->c([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final i()Lc/s;
    .registers 4

    new-instance v0, Lc/ap;

    iget-object v1, p0, Lc/b;->b:[B

    iget v2, p0, Lc/b;->c:I

    invoke-direct {v0, v1, v2}, Lc/ap;-><init>([BI)V

    return-object v0
.end method

.method public final j()Lc/s;
    .registers 4

    new-instance v0, Lc/bl;

    iget-object v1, p0, Lc/b;->b:[B

    iget v2, p0, Lc/b;->c:I

    invoke-direct {v0, v1, v2}, Lc/bl;-><init>([BI)V

    return-object v0
.end method

.method public final k()[B
    .registers 5

    iget-object v0, p0, Lc/b;->b:[B

    iget v1, p0, Lc/b;->c:I

    invoke-static {v0}, Lx/a;->b([B)[B

    move-result-object v2

    if-lez v1, :cond_17

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v3, 0xff

    shl-int v1, v3, v1

    aget-byte v3, v2, v0

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    :cond_17
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lc/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
