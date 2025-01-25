.class public final Lcom/google/android/gms/internal/ads/xo;
.super Lcom/google/android/gms/internal/ads/po;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final Hw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final v5:Ljava/text/DecimalFormat;


# instance fields
.field private VH:Z

.field private Zo:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/xo;->Hw:Ljava/util/Set;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/xo;->v5:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Dn;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/Dn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/po;->j6:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_11

    const-string p1, "Context.getCacheDir() returned null"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Ljava/io/File;

    const-string v1, "admobVideoStreams"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Could not create preload cache directory at "

    if-eqz v1, :cond_40

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    :cond_40
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_45
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    return-void

    :cond_4b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_5f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result p1

    if-nez p1, :cond_5e

    goto :goto_5f

    :cond_5e
    return-void

    :cond_5f
    :goto_5f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Could not set cache file permissions at "

    if-eqz v1, :cond_76

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7b

    :cond_76
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7b
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    return-void
.end method

.method private final j6(Ljava/io/File;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final DW()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/xo;->VH:Z

    return-void
.end method

.method public final j6(Ljava/lang/String;)Z
    .registers 32

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_10

    const-string v0, "noCacheDir"

    :goto_c
    invoke-virtual {v8, v9, v10, v0, v10}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v11

    :cond_10
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    if-nez v0, :cond_16

    const/4 v2, 0x0

    goto :goto_32

    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v1, :cond_32

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".done"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    add-int/lit8 v2, v2, 0x1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_32
    :goto_32
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->er:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v2, v0, :cond_94

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    if-nez v0, :cond_49

    goto :goto_88

    :cond_49
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    move-object v5, v10

    const/4 v4, 0x0

    :goto_55
    if-ge v4, v1, :cond_72

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v12, ".done"

    invoke-virtual {v7, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6f

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v7, v12, v2

    if-gez v7, :cond_6f

    move-object v5, v6

    move-wide v2, v12

    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_72
    if-eqz v5, :cond_88

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    invoke-direct {v8, v5}, Lcom/google/android/gms/internal/ads/xo;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_89

    :cond_88
    :goto_88
    const/4 v0, 0x0

    :cond_89
    :goto_89
    if-nez v0, :cond_10

    const-string v0, "Unable to expire stream cache"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    const-string v0, "expireFailed"

    goto/16 :goto_c

    :cond_94
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/po;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/io/File;

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    invoke-direct {v12, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v12}, Lcom/google/android/gms/internal/ads/xo;->j6(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_d8

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c6

    const-string v2, "Stream cache hit at "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_cd

    :cond_c6
    new-instance v0, Ljava/lang/String;

    const-string v2, "Stream cache hit at "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_cd
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    return v13

    :cond_d8
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/xo;->Zo:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_f8

    :cond_f2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v14, v2

    :goto_f8
    sget-object v1, Lcom/google/android/gms/internal/ads/xo;->Hw:Ljava/util/Set;

    monitor-enter v1

    :try_start_fb
    invoke-interface {v1, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_112

    const-string v2, "Stream cache already in progress at "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_119

    :cond_112
    new-instance v0, Ljava/lang/String;

    const-string v2, "Stream cache already in progress at "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_119
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inProgress"

    invoke-virtual {v8, v9, v0, v2, v10}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    return v11

    :cond_127
    invoke-interface {v1, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_12b
    .catchall {:try_start_fb .. :try_end_12b} :catchall_5da

    const-string v15, "error"

    :try_start_12d
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->aM()Lcom/google/android/gms/internal/ads/Sm;

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->P8:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_146
    add-int/2addr v3, v13

    const/16 v4, 0x14

    if-gt v3, v4, :cond_52b

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v6, v5, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_522

    check-cast v5, Ljava/net/HttpURLConnection;

    new-instance v6, Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/cm;-><init>()V

    invoke-virtual {v6, v5, v10}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/net/HttpURLConnection;I)V

    div-int/lit8 v7, v7, 0x64
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_16f} :catch_53b
    .catch Ljava/lang/RuntimeException; {:try_start_12d .. :try_end_16f} :catch_538

    const/4 v6, 0x3

    if-ne v7, v6, :cond_1ea

    :try_start_172
    const-string v4, "Location"

    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1dc

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v2, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d4

    const-string v7, "http"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b3

    const-string v7, "https"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b3

    new-instance v0, Ljava/io/IOException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1a8

    const-string v2, "Unsupported scheme: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1af

    :cond_1a8
    new-instance v1, Ljava/lang/String;

    const-string v2, "Unsupported scheme: "

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1af
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1c4

    const-string v4, "Redirecting to "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1cb

    :cond_1c4
    new-instance v2, Ljava/lang/String;

    const-string v4, "Redirecting to "

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1cb
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v2, v6

    goto/16 :goto_146

    :cond_1d4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1dc
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Missing Location header in redirect"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_1e4} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_172 .. :try_end_1e4} :catch_1e4

    :catch_1e4
    move-exception v0

    goto/16 :goto_2e4

    :catch_1e7
    move-exception v0

    goto/16 :goto_2e4

    :cond_1ea
    :try_start_1ea
    instance-of v1, v5, Ljava/net/HttpURLConnection;
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1ec} :catch_53b
    .catch Ljava/lang/RuntimeException; {:try_start_1ea .. :try_end_1ec} :catch_538

    if-eqz v1, :cond_245

    :try_start_1ee
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f2} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_1ee .. :try_end_1f2} :catch_1e4

    const/16 v2, 0x190

    if-lt v1, v2, :cond_245

    const-string v15, "badUrl"

    :try_start_1f8
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_20e

    const-string v2, "HTTP request failed. Code: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_20c
    move-object v2, v0

    goto :goto_216

    :cond_20e
    new-instance v0, Ljava/lang/String;

    const-string v2, "HTTP request failed. Code: "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_215} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_1f8 .. :try_end_215} :catch_1e4

    goto :goto_20c

    :goto_216
    :try_start_216
    new-instance v0, Ljava/io/IOException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "HTTP status code "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_216 .. :try_end_23f} :catch_242
    .catch Ljava/lang/RuntimeException; {:try_start_216 .. :try_end_23f} :catch_23f

    :catch_23f
    move-exception v0

    goto/16 :goto_2e5

    :catch_242
    move-exception v0

    goto/16 :goto_2e5

    :cond_245
    :try_start_245
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7
    :try_end_249
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_249} :catch_53b
    .catch Ljava/lang/RuntimeException; {:try_start_245 .. :try_end_249} :catch_538

    if-gez v7, :cond_275

    :try_start_24b
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_25c

    const-string v1, "Stream cache aborted, missing content-length header at "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_263

    :cond_25c
    new-instance v0, Ljava/lang/String;

    const-string v1, "Stream cache aborted, missing content-length header at "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_263
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentLengthMissing"

    invoke-virtual {v8, v9, v0, v1, v10}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/xo;->Hw:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_274
    .catch Ljava/io/IOException; {:try_start_24b .. :try_end_274} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_24b .. :try_end_274} :catch_1e4

    return v11

    :cond_275
    :try_start_275
    sget-object v1, Lcom/google/android/gms/internal/ads/xo;->v5:Ljava/text/DecimalFormat;

    int-to-long v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/p;->yS:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_28c
    .catch Ljava/io/IOException; {:try_start_275 .. :try_end_28c} :catch_53b
    .catch Ljava/lang/RuntimeException; {:try_start_275 .. :try_end_28c} :catch_538

    if-le v7, v3, :cond_2ea

    :try_start_28e
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Content length "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " exceeds limit at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2ce

    const-string v1, "File too big for full file cache. Size: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d5

    :cond_2ce
    new-instance v0, Ljava/lang/String;

    const-string v1, "File too big for full file cache. Size: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2d5
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sizeExceeded"

    invoke-virtual {v8, v9, v1, v2, v0}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/xo;->Hw:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2e3
    .catch Ljava/io/IOException; {:try_start_28e .. :try_end_2e3} :catch_1e7
    .catch Ljava/lang/RuntimeException; {:try_start_28e .. :try_end_2e3} :catch_1e4

    return v11

    :goto_2e4
    move-object v2, v10

    :goto_2e5
    move-object v3, v2

    move-object v1, v14

    move-object v2, v0

    goto/16 :goto_542

    :cond_2ea
    :try_start_2ea
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/2addr v2, v4

    add-int v2, v2, v16

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Caching "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v6

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_326
    .catch Ljava/io/IOException; {:try_start_2ea .. :try_end_326} :catch_53b
    .catch Ljava/lang/RuntimeException; {:try_start_2ea .. :try_end_326} :catch_538

    :try_start_326
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    const/high16 v1, 0x100000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v18

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->vy:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_344
    .catch Ljava/io/IOException; {:try_start_326 .. :try_end_344} :catch_519
    .catch Ljava/lang/RuntimeException; {:try_start_326 .. :try_end_344} :catch_514

    move-object v10, v14

    :try_start_345
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    new-instance v1, Lcom/google/android/gms/internal/ads/Ol;

    invoke-direct {v1, v13, v14}, Lcom/google/android/gms/internal/ads/Ol;-><init>(J)V

    sget-object v13, Lcom/google/android/gms/internal/ads/p;->BT:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :goto_35e
    invoke-interface {v6, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v20
    :try_end_362
    .catch Ljava/io/IOException; {:try_start_345 .. :try_end_362} :catch_512
    .catch Ljava/lang/RuntimeException; {:try_start_345 .. :try_end_362} :catch_50b

    if-ltz v20, :cond_48d

    add-int v11, v11, v20

    if-le v11, v3, :cond_39e

    const-string v15, "sizeExceeded"

    :try_start_36a
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_380

    const-string v1, "File too big for full file cache. Size: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_37e
    move-object v1, v0

    goto :goto_388

    :cond_380
    new-instance v0, Ljava/lang/String;

    const-string v1, "File too big for full file cache. Size: "

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_387
    .catch Ljava/io/IOException; {:try_start_36a .. :try_end_387} :catch_396
    .catch Ljava/lang/RuntimeException; {:try_start_36a .. :try_end_387} :catch_394

    goto :goto_37e

    :goto_388
    :try_start_388
    new-instance v0, Ljava/io/IOException;

    const-string v2, "stream cache file size limit exceeded"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_390
    .catch Ljava/io/IOException; {:try_start_388 .. :try_end_390} :catch_392
    .catch Ljava/lang/RuntimeException; {:try_start_388 .. :try_end_390} :catch_390

    :catch_390
    move-exception v0

    goto :goto_398

    :catch_392
    move-exception v0

    goto :goto_398

    :catch_394
    move-exception v0

    goto :goto_397

    :catch_396
    move-exception v0

    :goto_397
    const/4 v1, 0x0

    :goto_398
    move-object v2, v0

    move-object v3, v1

    move-object v1, v10

    move-object v10, v5

    goto/16 :goto_542

    :cond_39e
    :try_start_39e
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_3a1
    invoke-virtual {v4, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v20

    if-gtz v20, :cond_479

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {v16 .. v16}, Lcom/google/android/gms/common/util/e;->j6()J

    move-result-wide v20

    sub-long v20, v20, v18

    const-wide/16 v22, 0x3e8

    mul-long v22, v22, v13

    cmp-long v24, v20, v22

    if-gtz v24, :cond_438

    move-object/from16 v20, v2

    iget-boolean v2, v8, Lcom/google/android/gms/internal/ads/xo;->VH:Z

    if-nez v2, :cond_425

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ol;->j6()Z

    move-result v2

    if-eqz v2, :cond_3ff

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    sget-object v2, Lcom/google/android/gms/internal/ads/Zl;->j6:Landroid/os/Handler;
    :try_end_3ca
    .catch Ljava/io/IOException; {:try_start_39e .. :try_end_3ca} :catch_485
    .catch Ljava/lang/RuntimeException; {:try_start_39e .. :try_end_3ca} :catch_47d

    move-object/from16 v22, v15

    :try_start_3cc
    new-instance v15, Lcom/google/android/gms/internal/ads/qo;
    :try_end_3ce
    .catch Ljava/io/IOException; {:try_start_3cc .. :try_end_3ce} :catch_3f9
    .catch Ljava/lang/RuntimeException; {:try_start_3cc .. :try_end_3ce} :catch_3f3

    const/16 v23, 0x0

    move-object/from16 v24, v1

    move-object v1, v15

    move-object/from16 v25, v10

    move-object v10, v2

    move-object/from16 v2, p0

    move/from16 v26, v3

    move-object/from16 v3, p1

    move-object/from16 v27, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v5

    move v5, v11

    move-object/from16 v17, v6

    const/16 v28, 0x3

    move v6, v7

    move/from16 v29, v7

    move/from16 v7, v23

    :try_start_3ec
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/qo;-><init>(Lcom/google/android/gms/internal/ads/po;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v10, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3f2
    .catch Ljava/io/IOException; {:try_start_3ec .. :try_end_3f2} :catch_4d7
    .catch Ljava/lang/RuntimeException; {:try_start_3ec .. :try_end_3f2} :catch_4d5

    goto :goto_411

    :catch_3f3
    move-exception v0

    :goto_3f4
    move-object/from16 v21, v5

    move-object/from16 v25, v10

    goto :goto_3fb

    :catch_3f9
    move-exception v0

    goto :goto_3f4

    :goto_3fb
    move-object/from16 v1, v25

    goto/16 :goto_51b

    :cond_3ff
    move-object/from16 v24, v1

    move/from16 v26, v3

    move-object/from16 v27, v4

    move-object/from16 v21, v5

    move-object/from16 v17, v6

    move/from16 v29, v7

    move-object/from16 v25, v10

    move-object/from16 v22, v15

    const/16 v28, 0x3

    :goto_411
    move-object/from16 v6, v17

    move-object/from16 v2, v20

    move-object/from16 v5, v21

    move-object/from16 v15, v22

    move-object/from16 v1, v24

    move-object/from16 v10, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    move/from16 v7, v29

    goto/16 :goto_35e

    :cond_425
    move-object/from16 v21, v5

    move-object/from16 v25, v10

    const-string v1, "externalAbort"

    :try_start_42b
    new-instance v0, Ljava/io/IOException;

    const-string v2, "abort requested"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_433
    .catch Ljava/io/IOException; {:try_start_42b .. :try_end_433} :catch_436
    .catch Ljava/lang/RuntimeException; {:try_start_42b .. :try_end_433} :catch_433

    :catch_433
    move-exception v0

    :goto_434
    move-object v15, v1

    goto :goto_489

    :catch_436
    move-exception v0

    goto :goto_434

    :cond_438
    move-object/from16 v21, v5

    move-object/from16 v25, v10

    const-string v15, "downloadTimeout"

    :try_start_43e
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1d

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Timeout exceeded. Limit: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_462
    .catch Ljava/io/IOException; {:try_start_43e .. :try_end_462} :catch_477
    .catch Ljava/lang/RuntimeException; {:try_start_43e .. :try_end_462} :catch_475

    :try_start_462
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream cache time limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46a
    .catch Ljava/io/IOException; {:try_start_462 .. :try_end_46a} :catch_46c
    .catch Ljava/lang/RuntimeException; {:try_start_462 .. :try_end_46a} :catch_46a

    :catch_46a
    move-exception v0

    goto :goto_46d

    :catch_46c
    move-exception v0

    :goto_46d
    move-object v2, v0

    move-object v3, v10

    move-object/from16 v10, v21

    move-object/from16 v1, v25

    goto/16 :goto_542

    :catch_475
    move-exception v0

    goto :goto_489

    :catch_477
    move-exception v0

    goto :goto_489

    :cond_479
    const/16 v28, 0x3

    goto/16 :goto_3a1

    :catch_47d
    move-exception v0

    :goto_47e
    move-object/from16 v21, v5

    move-object/from16 v25, v10

    move-object/from16 v22, v15

    goto :goto_487

    :catch_485
    move-exception v0

    goto :goto_47e

    :goto_487
    move-object/from16 v15, v22

    :goto_489
    move-object/from16 v1, v25

    goto/16 :goto_51d

    :cond_48d
    move-object/from16 v21, v5

    move-object/from16 v25, v10

    move-object/from16 v22, v15

    const/16 v28, 0x3

    :try_start_495
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V

    invoke-static/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/jm;->j6(I)Z

    move-result v1
    :try_end_49c
    .catch Ljava/io/IOException; {:try_start_495 .. :try_end_49c} :catch_508
    .catch Ljava/lang/RuntimeException; {:try_start_495 .. :try_end_49c} :catch_505

    if-eqz v1, :cond_4d9

    :try_start_49e
    sget-object v1, Lcom/google/android/gms/internal/ads/xo;->v5:Ljava/text/DecimalFormat;

    int-to-long v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x16

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preloaded "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes from "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V
    :try_end_4d4
    .catch Ljava/io/IOException; {:try_start_49e .. :try_end_4d4} :catch_4d7
    .catch Ljava/lang/RuntimeException; {:try_start_49e .. :try_end_4d4} :catch_4d5

    goto :goto_4d9

    :catch_4d5
    move-exception v0

    goto :goto_487

    :catch_4d7
    move-exception v0

    goto :goto_487

    :cond_4d9
    :goto_4d9
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_4db
    invoke-virtual {v12, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_4e2
    .catch Ljava/io/IOException; {:try_start_4db .. :try_end_4e2} :catch_508
    .catch Ljava/lang/RuntimeException; {:try_start_4db .. :try_end_4e2} :catch_505

    if-eqz v1, :cond_4ec

    :try_start_4e4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_4eb
    .catch Ljava/io/IOException; {:try_start_4e4 .. :try_end_4eb} :catch_4d7
    .catch Ljava/lang/RuntimeException; {:try_start_4e4 .. :try_end_4eb} :catch_4d5

    goto :goto_4f1

    :cond_4ec
    :try_start_4ec
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_4ef
    .catch Ljava/io/IOException; {:try_start_4ec .. :try_end_4ef} :catch_4f0
    .catch Ljava/lang/RuntimeException; {:try_start_4ec .. :try_end_4ef} :catch_4d5

    goto :goto_4f1

    :catch_4f0
    move-exception v0

    :goto_4f1
    :try_start_4f1
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v11}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/gms/internal/ads/xo;->Hw:Ljava/util/Set;
    :try_end_4fa
    .catch Ljava/io/IOException; {:try_start_4f1 .. :try_end_4fa} :catch_508
    .catch Ljava/lang/RuntimeException; {:try_start_4f1 .. :try_end_4fa} :catch_505

    move-object/from16 v1, v25

    :try_start_4fc
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_4ff
    .catch Ljava/io/IOException; {:try_start_4fc .. :try_end_4ff} :catch_503
    .catch Ljava/lang/RuntimeException; {:try_start_4fc .. :try_end_4ff} :catch_501

    const/4 v1, 0x1

    return v1

    :catch_501
    move-exception v0

    goto :goto_51b

    :catch_503
    move-exception v0

    goto :goto_51b

    :catch_505
    move-exception v0

    goto/16 :goto_3fb

    :catch_508
    move-exception v0

    goto/16 :goto_3fb

    :catch_50b
    move-exception v0

    :goto_50c
    move-object/from16 v21, v5

    move-object v1, v10

    :goto_50f
    move-object/from16 v22, v15

    goto :goto_51b

    :catch_512
    move-exception v0

    goto :goto_50c

    :catch_514
    move-exception v0

    :goto_515
    move-object/from16 v21, v5

    move-object v1, v14

    goto :goto_50f

    :catch_519
    move-exception v0

    goto :goto_515

    :goto_51b
    move-object/from16 v15, v22

    :goto_51d
    move-object v2, v0

    move-object/from16 v10, v21

    const/4 v3, 0x0

    goto :goto_542

    :cond_522
    move-object v1, v14

    :try_start_523
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid protocol."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52b
    move-object v1, v14

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Too many redirects (20)"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_534
    .catch Ljava/io/IOException; {:try_start_523 .. :try_end_534} :catch_536
    .catch Ljava/lang/RuntimeException; {:try_start_523 .. :try_end_534} :catch_534

    :catch_534
    move-exception v0

    goto :goto_53d

    :catch_536
    move-exception v0

    goto :goto_53d

    :catch_538
    move-exception v0

    :goto_539
    move-object v1, v14

    goto :goto_53d

    :catch_53b
    move-exception v0

    goto :goto_539

    :goto_53d
    const-string v15, "error"

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_542
    instance-of v0, v2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_54f

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    const-string v4, "VideoStreamFullFileCache.preload"

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/internal/ads/pk;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_54f
    :try_start_54f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_552
    .catch Ljava/io/IOException; {:try_start_54f .. :try_end_552} :catch_555
    .catch Ljava/lang/NullPointerException; {:try_start_54f .. :try_end_552} :catch_553

    goto :goto_556

    :catch_553
    move-exception v0

    goto :goto_556

    :catch_555
    move-exception v0

    :goto_556
    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/xo;->VH:Z

    if-eqz v0, :cond_57e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Preload aborted for URL \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;)V

    goto :goto_5a1

    :cond_57e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Preload failed for URL \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5a1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5cc

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_5cc

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5c2

    const-string v2, "Could not delete partial cache file at "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5c9

    :cond_5c2
    new-instance v0, Ljava/lang/String;

    const-string v2, "Could not delete partial cache file at "

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5c9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    :cond_5cc
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0, v15, v3}, Lcom/google/android/gms/internal/ads/po;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/xo;->Hw:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    return v1

    :catchall_5da
    move-exception v0

    :try_start_5db
    monitor-exit v1
    :try_end_5dc
    .catchall {:try_start_5db .. :try_end_5dc} :catchall_5da

    goto :goto_5de

    :goto_5dd
    throw v0

    :goto_5de
    goto :goto_5dd
.end method
