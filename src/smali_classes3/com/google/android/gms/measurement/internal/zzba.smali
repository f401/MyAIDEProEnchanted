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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzamu:Lcom/google/android/gms/measurement/internal/zzaw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzay;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
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
    .registers 15

    const-string v0, "Error closing HTTP compressed POST connection output stream. appId"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgh()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzba;->url:Ljava/net/URL;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzb(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_fb
    .catchall {:try_start_9 .. :try_end_11} :catchall_bd

    :try_start_11
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamt:Ljava/util/Map;

    if-eqz v4, :cond_39

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_39
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamr:[B

    if-eqz v4, :cond_7f

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzjr()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamr:[B

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzfu;->zzb([B)[B

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzjo()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v5

    const-string v6, "Uploading data. size"

    array-length v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzau;->zzg(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v5, v4

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_73} :catch_bb
    .catchall {:try_start_11 .. :try_end_73} :catchall_b8

    :try_start_73
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_79} :catch_7c
    .catchall {:try_start_73 .. :try_end_79} :catchall_7a

    goto :goto_7f

    :catchall_7a
    move-exception v4

    goto :goto_c1

    :catch_7c
    move-exception v4

    goto/16 :goto_ff

    :cond_7f
    :goto_7f
    :try_start_7f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_83} :catch_bb
    .catchall {:try_start_7f .. :try_end_83} :catchall_b8

    :try_start_83
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_87} :catch_b2
    .catchall {:try_start_83 .. :try_end_87} :catchall_ae

    :try_start_87
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {v1, v3}, Lcom/google/android/gms/measurement/internal/zzaw;->zza(Lcom/google/android/gms/measurement/internal/zzaw;Ljava/net/HttpURLConnection;)[B

    move-result-object v10
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8d} :catch_ac
    .catchall {:try_start_87 .. :try_end_8d} :catchall_a8

    if-eqz v3, :cond_92

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzams:Lcom/google/android/gms/measurement/internal/zzay;

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzay;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzax;)V

    :goto_a4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    return-void

    :catchall_a8
    move-exception v1

    move v9, v8

    move-object v12, v11

    goto :goto_c5

    :catch_ac
    move-exception v1

    goto :goto_b4

    :catchall_ae
    move-exception v1

    move-object v12, v2

    move v9, v8

    goto :goto_c5

    :catch_b2
    move-exception v1

    move-object v11, v2

    :goto_b4
    move-object v10, v1

    move v9, v8

    move-object v12, v11

    goto :goto_103

    :catchall_b8
    move-exception v4

    move-object v5, v2

    goto :goto_c1

    :catch_bb
    move-exception v4

    goto :goto_fe

    :catchall_bd
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    move-object v5, v3

    :goto_c1
    move-object v12, v2

    move-object v1, v4

    move-object v2, v5

    const/4 v9, 0x0

    :goto_c5
    if-eqz v2, :cond_df

    :try_start_c7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_cb

    goto :goto_df

    :catch_cb
    move-exception v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5, v2}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_df
    :goto_df
    if-eqz v3, :cond_e4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_e4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzams:Lcom/google/android/gms/measurement/internal/zzay;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzay;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzax;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzbr;->zzc(Ljava/lang/Runnable;)V

    throw v1

    :catch_fb
    move-exception v3

    move-object v4, v3

    move-object v3, v2

    :goto_fe
    move-object v5, v2

    :goto_ff
    move-object v12, v2

    move-object v10, v4

    move-object v2, v5

    const/4 v9, 0x0

    :goto_103
    if-eqz v2, :cond_11d

    :try_start_105
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_11d

    :catch_109
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgt()Lcom/google/android/gms/measurement/internal/zzas;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzas;->zzjg()Lcom/google/android/gms/measurement/internal/zzau;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzas;->zzbw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v1}, Lcom/google/android/gms/measurement/internal/zzau;->zze(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11d
    :goto_11d
    if-eqz v3, :cond_122

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_122
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzamu:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->zzgs()Lcom/google/android/gms/measurement/internal/zzbr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaz;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzba;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/zzba;->zzams:Lcom/google/android/gms/measurement/internal/zzay;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/measurement/internal/zzaz;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzay;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzax;)V

    goto/16 :goto_a4
.end method
