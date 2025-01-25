.class public Labcd/VP;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Labcd/UP;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/WP;

    invoke-direct {v0}, Labcd/WP;-><init>()V

    sput-object v0, Labcd/VP;->j6:Labcd/UP;

    return-void
.end method

.method public static j6(Ljava/lang/String;)[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v1, Labcd/VP;->j6:Labcd/UP;

    invoke-interface {v1, p0, v0}, Labcd/UP;->j6(Ljava/lang/String;Ljava/io/OutputStream;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_f

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_f
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception decoding Hex string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j6([B)[B
    .registers 3

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Labcd/VP;->j6([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static j6([BII)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    sget-object v1, Labcd/VP;->j6:Labcd/UP;

    invoke-interface {v1, p0, p1, p2, v0}, Labcd/UP;->j6([BIILjava/io/OutputStream;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_f

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "exception encoding Hex string: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
