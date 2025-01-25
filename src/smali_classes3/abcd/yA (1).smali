.class public Labcd/yA;
.super Ljava/lang/Object;


# static fields
.field static DW:Ljava/lang/Object;

.field static FH:Ljava/lang/reflect/Method;

.field static Hw:Labcd/tA;

.field static j6:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v0, " is available."

    const-class v1, [B

    const-string v2, "encode"

    const-class v3, Labcd/yA;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Labcd/uA;->j6(Ljava/lang/String;)Labcd/tA;

    move-result-object v3

    sput-object v3, Labcd/yA;->Hw:Labcd/tA;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_15
    const-string v6, "android.util.Base64"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v1, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v6, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Labcd/yA;->j6:Ljava/lang/reflect/Method;

    sget-object v7, Labcd/yA;->Hw:Labcd/tA;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Labcd/tA;->Hw(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_41} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_41} :catch_42

    goto :goto_4c

    :catch_42
    move-exception v6

    sget-object v7, Labcd/yA;->Hw:Labcd/tA;

    const-string v8, "Failed to initialize use of android.util.Base64"

    invoke-interface {v7, v8, v6}, Labcd/tA;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    :catch_4b
    move-exception v6

    :goto_4c
    :try_start_4c
    const-string v6, "org.bouncycastle.util.encoders.Base64Encoder"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    sput-object v7, Labcd/yA;->DW:Ljava/lang/Object;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v1, v7, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v7, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v7, v5

    const-class v1, Ljava/io/OutputStream;

    const/4 v3, 0x3

    aput-object v1, v7, v3

    invoke-virtual {v6, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Labcd/yA;->FH:Ljava/lang/reflect/Method;

    sget-object v1, Labcd/yA;->Hw:Labcd/tA;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Labcd/tA;->Hw(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_88} :catch_92
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_88} :catch_89

    goto :goto_93

    :catch_89
    move-exception v0

    sget-object v1, Labcd/yA;->Hw:Labcd/tA;

    const-string v2, "Failed to initialize use of org.bouncycastle.util.encoders.Base64Encoder"

    invoke-interface {v1, v2, v0}, Labcd/tA;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_93

    :catch_92
    move-exception v0

    :goto_93
    sget-object v0, Labcd/yA;->j6:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a4

    sget-object v0, Labcd/yA;->FH:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9c

    goto :goto_a4

    :cond_9c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No base64 encoder implementation is available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    :goto_a4
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6([B)Ljava/lang/String;
    .registers 8

    :try_start_0
    sget-object v0, Labcd/yA;->j6:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1e

    new-instance v4, Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v1

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([B)V

    return-object v4

    :cond_1e
    sget-object v0, Labcd/yA;->FH:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4d

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Labcd/yA;->FH:Ljava/lang/reflect/Method;

    sget-object v5, Labcd/yA;->DW:Ljava/lang/Object;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v3

    const/4 p0, 0x3

    aput-object v0, v6, p0

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_55

    return-object p0

    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No base64 encoder implementation is available."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_55
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
