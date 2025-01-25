.class Lcom/crashlytics/android/core/xa;
.super Ljava/lang/Object;


# static fields
.field private static final j6:Ljava/nio/charset/Charset;


# instance fields
.field private final DW:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/xa;->j6:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/xa;->DW:Ljava/io/File;

    return-void
.end method

.method private static Hw(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/crashlytics/android/core/Ta;

    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/xa;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "userName"

    invoke-static {v0, v2}, Lcom/crashlytics/android/core/xa;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "userEmail"

    invoke-static {v0, v3}, Lcom/crashlytics/android/core/xa;->j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/crashlytics/android/core/Ta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static j6(Lcom/crashlytics/android/core/Ta;)Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/crashlytics/android/core/wa;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/core/wa;-><init>(Lcom/crashlytics/android/core/Ta;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Ljava/util/Map;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j6(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method


# virtual methods
.method public DW(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/core/xa;->DW:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "user"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".meta"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public FH(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;
    .registers 7

    const-string v0, "Failed to close user metadata file."

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/xa;->DW(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    sget-object p1, Lcom/crashlytics/android/core/Ta;->j6:Lcom/crashlytics/android/core/Ta;

    return-object p1

    :cond_f
    const/4 v1, 0x0

    :try_start_10
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_28
    .catchall {:try_start_10 .. :try_end_15} :catchall_26

    :try_start_15
    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/crashlytics/android/core/xa;->Hw(Ljava/lang/String;)Lcom/crashlytics/android/core/Ta;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_23
    .catchall {:try_start_15 .. :try_end_1d} :catchall_21

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p1

    :catchall_21
    move-exception p1

    goto :goto_3b

    :catch_23
    move-exception p1

    move-object v1, v2

    goto :goto_29

    :catchall_26
    move-exception p1

    goto :goto_3a

    :catch_28
    move-exception p1

    :goto_29
    :try_start_29
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    const-string v4, "Error deserializing user metadata."

    invoke-interface {v2, v3, v4, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_26

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    sget-object p1, Lcom/crashlytics/android/core/Ta;->j6:Lcom/crashlytics/android/core/Ta;

    return-object p1

    :goto_3a
    move-object v2, v1

    :goto_3b
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/core/xa;->DW:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "keys"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".meta"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public j6(Ljava/lang/String;Lcom/crashlytics/android/core/Ta;)V
    .registers 8

    const-string v0, "Failed to close user metadata file."

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/xa;->DW(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_7
    invoke-static {p2}, Lcom/crashlytics/android/core/xa;->j6(Lcom/crashlytics/android/core/Ta;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/crashlytics/android/core/xa;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_2d
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2b

    :try_start_1c
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_28
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_3c

    :catchall_26
    move-exception p1

    goto :goto_3e

    :catch_28
    move-exception p1

    move-object v1, v2

    goto :goto_2e

    :catchall_2b
    move-exception p1

    goto :goto_3d

    :catch_2d
    move-exception p1

    :goto_2e
    :try_start_2e
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error serializing user metadata."

    invoke-interface {p2, v2, v3, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_2b

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_3c
    return-void

    :goto_3d
    move-object v2, v1

    :goto_3e
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method

.method public j6(Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Failed to close key/value metadata file."

    invoke-virtual {p0, p1}, Lcom/crashlytics/android/core/xa;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_7
    invoke-static {p2}, Lcom/crashlytics/android/core/xa;->j6(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Lcom/crashlytics/android/core/xa;->j6:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_2d
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2b

    :try_start_1c
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_28
    .catchall {:try_start_1c .. :try_end_22} :catchall_26

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_3c

    :catchall_26
    move-exception p1

    goto :goto_3e

    :catch_28
    move-exception p1

    move-object v1, v2

    goto :goto_2e

    :catchall_2b
    move-exception p1

    goto :goto_3d

    :catch_2d
    move-exception p1

    :goto_2e
    :try_start_2e
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    const-string v2, "CrashlyticsCore"

    const-string v3, "Error serializing key/value metadata."

    invoke-interface {p2, v2, v3, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_2b

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_3c
    return-void

    :goto_3d
    move-object v2, v1

    :goto_3e
    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1
.end method
