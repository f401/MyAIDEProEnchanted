.class public final Ly/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    sput-object v0, Ly/a;->a:Lp/d;

    return-void
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Ly/a;->a:Lp/d;

    invoke-virtual {v1, p0, v0}, Lp/d;->d(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 1
    const-string v1, "exception decoding Hex string: "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lc/r;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public static c([B)[B
    .locals 7

    array-length v2, p0

    .line 1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v4, Ly/a;->a:Lp/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2
    aget-byte v5, p0, v1

    :try_start_1
    iget-object v0, v4, Lp/d;->b:Ljava/lang/Object;

    check-cast v0, [B

    and-int/lit16 v6, v5, 0xff

    ushr-int/lit8 v6, v6, 0x4

    aget-byte v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, v4, Lp/d;->b:Ljava/lang/Object;

    check-cast v0, [B

    and-int/lit8 v5, v5, 0xf

    aget-byte v0, v0, v5

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    const-string v1, "exception encoding Hex string: "

    invoke-static {v1}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lc/r;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v2, v1, v0, v3}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method
