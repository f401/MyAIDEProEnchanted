.class final Lcom/google/android/gms/measurement/internal/zzba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final url:Ljava/net/URL;

.field private final zzamr:[B

.field private final zzams:Lcom/google/android/gms/measurement/internal/zzay;

.field private final zzamt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzamu:Lcom/google/android/gms/measurement/internal/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzay;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzay;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzba;->url:Ljava/net/URL;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamr:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzams:Lcom/google/android/gms/measurement/internal/zzay;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamt:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgh()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v3

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamt:Ljava/util/Map;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    move-object v2, v5

    :goto_2
    move-object v10, v1

    move-object v12, v5

    :goto_3
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_4
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v1

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzams:Lcom/google/android/gms/measurement/internal/zzay;

    move-object v11, v5

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzay;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzax;)V

    move-object v2, v1

    :goto_5
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamr:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamr:[B

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb([B)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v4, "Uploading data. size"

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v2, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v3, v2, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v2

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v4

    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v7

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/net/HttpURLConnection;)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v6

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v9

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzams:Lcom/google/android/gms/measurement/internal/zzay;

    move-object v8, v5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzay;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzax;)V

    move-object v2, v9

    move-object v6, v1

    goto :goto_5

    :catchall_0
    move-exception v4

    move-object v1, v3

    move-object v6, v4

    :goto_6
    move-object v3, v1

    move-object v10, v6

    move-object v7, v5

    move v4, v9

    :goto_7
    if-eqz v2, :cond_5

    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    :goto_8
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v9

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzams:Lcom/google/android/gms/measurement/internal/zzay;

    move-object v6, v5

    move-object v8, v5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzay;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzax;)V

    invoke-virtual {v9, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    throw v10

    :catchall_1
    move-exception v1

    move-object v2, v5

    move-object v10, v1

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v2, v5

    move-object v10, v1

    move-object v7, v5

    goto :goto_7

    :catch_1
    move-exception v1

    move-object v7, v5

    :goto_9
    move-object v2, v5

    move-object v10, v1

    move-object v12, v7

    move v9, v4

    goto/16 :goto_3

    :catchall_3
    move-exception v4

    move-object v1, v3

    move-object v2, v5

    move-object v6, v4

    goto :goto_6

    :catchall_4
    move-exception v3

    move-object v1, v5

    move-object v2, v5

    move-object v6, v3

    goto :goto_6

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v6, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v6, v8, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :catch_3
    move-exception v1

    move-object v3, v5

    goto/16 :goto_1

    :catch_4
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    const-string v4, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v4, v6, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto/16 :goto_2
.end method
