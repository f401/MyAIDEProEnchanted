.class public Labcd/Ez;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Jz;


# instance fields
.field private DW:Labcd/Lz;

.field private FH:Ljavax/net/ssl/SSLSocketFactory;

.field private Hw:Z

.field private final j6:Lio/fabric/sdk/android/m;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lio/fabric/sdk/android/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/b;-><init>()V

    invoke-direct {p0, v0}, Labcd/Ez;-><init>(Lio/fabric/sdk/android/m;)V

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Ez;->j6:Lio/fabric/sdk/android/m;

    return-void
.end method

.method private DW()Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Labcd/Ez;->Hw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Labcd/Ez;->DW:Labcd/Lz;

    invoke-static {v0}, Labcd/Kz;->j6(Labcd/Lz;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Labcd/Ez;->j6:Lio/fabric/sdk/android/m;

    const-string v2, "Fabric"

    const-string v3, "Custom SSL pinning enabled"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Labcd/Ez;->j6:Lio/fabric/sdk/android/m;

    const-string v2, "Fabric"

    const-string v3, "Exception while validating pinned certs"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private FH()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Labcd/Ez;->Hw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ez;->FH:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j6()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Labcd/Ez;->FH:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Labcd/Ez;->Hw:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Labcd/Ez;->DW()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Labcd/Ez;->FH:Ljavax/net/ssl/SSLSocketFactory;

    :cond_0
    iget-object v0, p0, Labcd/Ez;->FH:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public j6(Labcd/Fz;Ljava/lang/String;)Labcd/Hz;
    .registers 4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Labcd/Ez;->j6(Labcd/Fz;Ljava/lang/String;Ljava/util/Map;)Labcd/Hz;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Fz;Ljava/lang/String;Ljava/util/Map;)Labcd/Hz;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Fz;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Labcd/Hz;"
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v0, Labcd/Dz;->j6:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Labcd/Hz;->j6(Ljava/lang/CharSequence;)Labcd/Hz;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-direct {p0, p2}, Labcd/Ez;->j6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/Ez;->DW:Labcd/Lz;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Labcd/Ez;->j6()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported HTTP method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p2}, Labcd/Hz;->v5(Ljava/lang/CharSequence;)Labcd/Hz;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-static {p2, p3, v2}, Labcd/Hz;->DW(Ljava/lang/CharSequence;Ljava/util/Map;Z)Labcd/Hz;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_4
    invoke-static {p2, p3, v2}, Labcd/Hz;->j6(Ljava/lang/CharSequence;Ljava/util/Map;Z)Labcd/Hz;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public j6(Labcd/Lz;)V
    .registers 3

    iget-object v0, p0, Labcd/Ez;->DW:Labcd/Lz;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Labcd/Ez;->DW:Labcd/Lz;

    invoke-direct {p0}, Labcd/Ez;->FH()V

    :cond_0
    return-void
.end method
