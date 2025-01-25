.class Lio/fabric/sdk/android/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lio/fabric/sdk/android/l;",
        ">;>;"
    }
.end annotation


# instance fields
.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/f;->j6:Ljava/lang/String;

    return-void
.end method

.method private DW()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    const-string v1, "com.google.android.gms.ads.AdView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v1, Lio/fabric/sdk/android/l;

    const-string v2, "com.google.firebase.firebase-ads"

    const-string v3, "0.0.0"

    const-string v4, "binary"

    invoke-direct {v1, v2, v3, v4}, Lio/fabric/sdk/android/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lio/fabric/sdk/android/l;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Found kit: com.google.firebase.firebase-ads"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_29

    :catch_28
    move-exception v1

    :goto_29
    return-object v0
.end method

.method private FH()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lio/fabric/sdk/android/f;->j6()Ljava/util/zip/ZipFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "fabric/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-le v4, v5, :cond_d

    invoke-direct {p0, v3, v1}, Lio/fabric/sdk/android/f;->j6(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)Lio/fabric/sdk/android/l;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lio/fabric/sdk/android/l;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lio/fabric/sdk/android/l;->DW()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lio/fabric/sdk/android/l;->FH()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "Found kit:[%s] version:[%s]"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Fabric"

    invoke-interface {v4, v5, v3}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_5e
    if-eqz v1, :cond_65

    :try_start_60
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_65

    :catch_64
    move-exception v1

    :cond_65
    :goto_65
    return-object v0
.end method

.method private j6(Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipFile;)Lio/fabric/sdk/android/l;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_5} :catch_56
    .catchall {:try_start_1 .. :try_end_5} :catchall_54

    :try_start_5
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v2, "fabric-identifier"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fabric-version"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fabric-build-type"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    new-instance v4, Lio/fabric/sdk/android/l;

    invoke-direct {v4, v2, v3, v1}, Lio/fabric/sdk/android/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_30} :catch_52
    .catchall {:try_start_5 .. :try_end_30} :catchall_4f

    invoke-static {p2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-object v4

    :cond_34
    :try_start_34
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format of fabric file,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4f} :catch_52
    .catchall {:try_start_34 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception p1

    move-object v0, p2

    goto :goto_7a

    :catch_52
    move-exception v1

    goto :goto_58

    :catchall_54
    move-exception p1

    goto :goto_7a

    :catch_56
    move-exception v1

    move-object p2, v0

    :goto_58
    :try_start_58
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when parsing fabric properties "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Fabric"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catchall {:try_start_58 .. :try_end_76} :catchall_4f

    invoke-static {p2}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    return-object v0

    :goto_7a
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/fabric/sdk/android/f;->call()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/l;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0}, Lio/fabric/sdk/android/f;->DW()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Lio/fabric/sdk/android/f;->FH()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish scanning in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "Fabric"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected j6()Ljava/util/zip/ZipFile;
    .registers 3

    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lio/fabric/sdk/android/f;->j6:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
