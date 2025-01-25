.class public final Ly/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp/d;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lp/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lp/d;-><init>(I)V

    sput-object v0, Ly/a;->a:Lp/d;

    return-void
.end method

.method public static b(Ljava/lang/String;)[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v1, Ly/a;->a:Lp/d;

    invoke-virtual {v1, p0, v0}, Lp/d;->d(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_f

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_f
    move-exception p0

    .line 1
    const-string v0, "exception decoding Hex string: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/r;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method public static c([B)[B
    .registers 8

    array-length v0, p0

    .line 1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_6
    sget-object v2, Ly/a;->a:Lp/d;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_30

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_2b

    .line 2
    aget-byte v4, p0, v3

    :try_start_10
    iget-object v5, v2, Lp/d;->b:Ljava/lang/Object;

    check-cast v5, [B

    and-int/lit16 v6, v4, 0xff

    ushr-int/lit8 v6, v6, 0x4

    aget-byte v5, v5, v6

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v5, v2, Lp/d;->b:Ljava/lang/Object;

    check-cast v5, [B

    and-int/lit8 v4, v4, 0xf

    aget-byte v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write(I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_28} :catch_30

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3
    :cond_2b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_30
    move-exception p0

    .line 4
    const-string v0, "exception encoding Hex string: "

    invoke-static {v0}, Lb/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lc/r;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, p0, v2}, Lc/r;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_4a

    :goto_49
    throw v1

    :goto_4a
    goto :goto_49
.end method
