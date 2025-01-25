.class public final Lc/bi;
.super Lc/s;
.source "SourceFile"

# interfaces
.implements Lc/y;


# static fields
.field public static final a:[C


# instance fields
.field public final b:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lc/bi;->a:[C

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

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Lc/s;-><init>()V

    invoke-static {p1}, Lx/a;->b([B)[B

    move-result-object p1

    iput-object p1, p0, Lc/bi;->b:[B

    return-void
.end method


# virtual methods
.method public final d(Lc/s;)Z
    .registers 3

    instance-of v0, p1, Lc/bi;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Lc/bi;->b:[B

    check-cast p1, Lc/bi;

    iget-object p1, p1, Lc/bi;->b:[B

    invoke-static {v0, p1}, Lx/a;->a([B[B)Z

    move-result p1

    return p1
.end method

.method public final e(Lc/q;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc/bi;->b:[B

    invoke-static {v0}, Lx/a;->b([B)[B

    move-result-object v0

    .line 2
    const/16 v1, 0x1c

    invoke-virtual {p1, v1, v0}, Lc/q;->g(I[B)V

    return-void
.end method

.method public final f()I
    .registers 3

    iget-object v0, p0, Lc/bi;->b:[B

    array-length v0, v0

    invoke-static {v0}, Lc/bu;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lc/bi;->b:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
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

    :try_start_11
    invoke-virtual {v2, p0}, Lc/q;->j(Lc/e;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_3a

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_19
    array-length v3, v1

    if-eq v2, v3, :cond_35

    sget-object v3, Lc/bi;->a:[C

    aget-byte v4, v1, v2

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v4, v1, v2

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_3a
    move-exception v0

    new-instance v0, Lc/r;

    const-string v1, "internal error encoding BitString"

    invoke-direct {v0, v1}, Lc/r;-><init>(Ljava/lang/String;)V

    goto :goto_44

    :goto_43
    throw v0

    :goto_44
    goto :goto_43
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lc/bi;->b:[B

    invoke-static {v0}, Lx/a;->c([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lc/bi;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
