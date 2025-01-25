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

    :try_start_2
    iput-boolean v0, p0, Labcd/Ez;->Hw:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_22

    :try_start_4
    iget-object v0, p0, Labcd/Ez;->DW:Labcd/Lz;

    invoke-static {v0}, Labcd/Kz;->j6(Labcd/Lz;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iget-object v1, p0, Labcd/Ez;->j6:Lio/fabric/sdk/android/m;

    const-string v2, "Fabric"

    const-string v3, "Custom SSL pinning enabled"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_15
    .catchall {:try_start_4 .. :try_end_13} :catchall_22

    monitor-exit p0

    return-object v0

    :catch_15
    move-exception v0

    :try_start_16
    iget-object v1, p0, Labcd/Ez;->j6:Lio/fabric/sdk/android/m;

    const-string v2, "Fabric"

    const-string v3, "Exception while validating pinned certs"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_22

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private FH()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Labcd/Ez;->Hw:Z

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/Ez;->FH:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j6()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Labcd/Ez;->FH:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_f

    iget-boolean v0, p0, Labcd/Ez;->Hw:Z

    if-nez v0, :cond_f

    invoke-direct {p0}, Labcd/Ez;->DW()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Labcd/Ez;->FH:Ljavax/net/ssl/SSLSocketFactory;

    :cond_f
    iget-object v0, p0, Labcd/Ez;->FH:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j6(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_12

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method


# virtual methods
.method public j6(Labcd/Fz;Ljava/lang/String;)Labcd/Hz;
    .registers 4

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Labcd/Ez;->j6(Labcd/Fz;Ljava/lang/String;Ljava/util/Map;)Labcd/Hz;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Fz;Ljava/lang/String;Ljava/util/Map;)Labcd/Hz;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Fz;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Labcd/Hz;"
        }
    .end annotation

    sget-object v0, Labcd/Dz;->j6:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_26

    const/4 p3, 0x3

    if-eq p1, p3, :cond_21

    const/4 p3, 0x4

    if-ne p1, p3, :cond_19

    invoke-static {p2}, Labcd/Hz;->j6(Ljava/lang/CharSequence;)Labcd/Hz;

    move-result-object p1

    goto :goto_2f

    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported HTTP method!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    invoke-static {p2}, Labcd/Hz;->v5(Ljava/lang/CharSequence;)Labcd/Hz;

    move-result-object p1

    goto :goto_2f

    :cond_26
    invoke-static {p2, p3, v0}, Labcd/Hz;->DW(Ljava/lang/CharSequence;Ljava/util/Map;Z)Labcd/Hz;

    move-result-object p1

    goto :goto_2f

    :cond_2b
    invoke-static {p2, p3, v0}, Labcd/Hz;->j6(Ljava/lang/CharSequence;Ljava/util/Map;Z)Labcd/Hz;

    move-result-object p1

    :goto_2f
    invoke-direct {p0, p2}, Labcd/Ez;->j6(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_48

    iget-object p2, p0, Labcd/Ez;->DW:Labcd/Lz;

    if-eqz p2, :cond_48

    invoke-direct {p0}, Labcd/Ez;->j6()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p2

    if-eqz p2, :cond_48

    invoke-virtual {p1}, Labcd/Hz;->tp()Ljava/net/HttpURLConnection;

    move-result-object p3

    check-cast p3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {p3, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_48
    return-object p1
.end method

.method public j6(Labcd/Lz;)V
    .registers 3

    iget-object v0, p0, Labcd/Ez;->DW:Labcd/Lz;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Labcd/Ez;->DW:Labcd/Lz;

    invoke-direct {p0}, Labcd/Ez;->FH()V

    :cond_9
    return-void
.end method
