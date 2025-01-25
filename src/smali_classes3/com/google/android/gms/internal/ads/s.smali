.class public final Lcom/google/android/gms/internal/ads/s;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Ljava/util/concurrent/ExecutorService;

.field private FH:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/w;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Ljava/lang/String;

.field private Zo:Landroid/content/Context;

.field private gn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j6:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/google/android/gms/internal/ads/D;",
            ">;"
        }
    .end annotation
.end field

.field private u7:Ljava/io/File;

.field private v5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s;->j6:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s;->FH:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/s;->Hw:Ljava/util/Map;

    return-void
.end method

.method private final j6()V
    .registers 7

    const-string v0, "CsiReporter: Cannot close file: sdk_csi_data.txt."

    :cond_2
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s;->j6:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/D;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/D;->DW()Ljava/lang/String;

    move-result-object v2
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_e} :catch_c2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/s;->FH:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/D;->FH()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/internal/ads/s;->j6(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/s;->v5:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_30

    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&it="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/s;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/s;->u7:Ljava/io/File;

    if-eqz v2, :cond_af

    const/4 v3, 0x0

    :try_start_72
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_78} :catch_96
    .catchall {:try_start_72 .. :try_end_78} :catchall_94

    :try_start_78
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v1, 0xa

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_84} :catch_91
    .catchall {:try_start_78 .. :try_end_84} :catchall_8f

    :try_start_84
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_89

    goto/16 :goto_2

    :catch_89
    move-exception v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catchall_8f
    move-exception v1

    goto :goto_a4

    :catch_91
    move-exception v1

    move-object v3, v4

    goto :goto_97

    :catchall_94
    move-exception v1

    goto :goto_a3

    :catch_96
    move-exception v1

    :goto_97
    :try_start_97
    const-string v2, "CsiReporter: Cannot write to file: sdk_csi_data.txt."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_94

    if-eqz v3, :cond_2

    :try_start_9e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_89

    goto/16 :goto_2

    :goto_a3
    move-object v4, v3

    :goto_a4
    if-eqz v4, :cond_ae

    :try_start_a6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_ae

    :catch_aa
    move-exception v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ae
    :goto_ae
    throw v1

    :cond_af
    const-string v1, "CsiReporter: File doesn\'t exists. Cannot write CSI data to file."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b6
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/s;->Zo:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/s;->VH:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/Nk;->j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_c2
    move-exception v0

    const-string v1, "CsiReporter:reporter interrupted"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/s;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/s;->j6()V

    return-void
.end method


# virtual methods
.method public final j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/w;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s;->Hw:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/w;

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/ads/w;->j6:Lcom/google/android/gms/internal/ads/w;

    return-object p1
.end method

.method final j6(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    if-nez p2, :cond_8

    return-object v0

    :cond_8
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/s;->j6(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/w;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/google/android/gms/internal/ads/w;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_3a
    return-object v0
.end method

.method public final j6(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->Zo:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s;->VH:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/s;->v5:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object p2, Lcom/google/android/gms/internal/ads/p;->kQ:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s;->gn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_38

    new-instance p2, Ljava/io/File;

    const-string p3, "sdk_csi_data.txt"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s;->u7:Ljava/io/File;

    :cond_38
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/s;->FH:Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p4, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_5e
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s;->DW:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/android/gms/internal/ads/t;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/t;-><init>(Lcom/google/android/gms/internal/ads/s;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s;->Hw:Ljava/util/Map;

    const-string p2, "action"

    sget-object p3, Lcom/google/android/gms/internal/ads/w;->DW:Lcom/google/android/gms/internal/ads/w;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s;->Hw:Ljava/util/Map;

    const-string p2, "ad_format"

    sget-object p3, Lcom/google/android/gms/internal/ads/w;->DW:Lcom/google/android/gms/internal/ads/w;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s;->Hw:Ljava/util/Map;

    const-string p2, "e"

    sget-object p3, Lcom/google/android/gms/internal/ads/w;->FH:Lcom/google/android/gms/internal/ads/w;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final j6(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_15

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s;->FH:Ljava/util/LinkedHashMap;

    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/D;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s;->j6:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
