.class Lcom/crashlytics/android/core/La;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/La$a;,
        Lcom/crashlytics/android/core/La$b;,
        Lcom/crashlytics/android/core/La$c;,
        Lcom/crashlytics/android/core/La$d;,
        Lcom/crashlytics/android/core/La$e;
    }
.end annotation


# static fields
.field private static final DW:[S

.field static final j6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final FH:Ljava/lang/Object;

.field private final Hw:Lcom/crashlytics/android/core/ka;

.field private final VH:Lcom/crashlytics/android/core/La$b;

.field private final Zo:Lcom/crashlytics/android/core/La$c;

.field private gn:Ljava/lang/Thread;

.field private final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/La;->j6:Ljava/util/Map;

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_14

    sput-object v0, Lcom/crashlytics/android/core/La;->DW:[S

    return-void

    nop

    :array_14
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/crashlytics/android/core/ka;Lcom/crashlytics/android/core/La$c;Lcom/crashlytics/android/core/La$b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/La;->FH:Ljava/lang/Object;

    if-eqz p2, :cond_15

    iput-object p2, p0, Lcom/crashlytics/android/core/La;->Hw:Lcom/crashlytics/android/core/ka;

    iput-object p1, p0, Lcom/crashlytics/android/core/La;->v5:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/La;->Zo:Lcom/crashlytics/android/core/La$c;

    iput-object p4, p0, Lcom/crashlytics/android/core/La;->VH:Lcom/crashlytics/android/core/La$b;

    return-void

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "createReportCall must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/La;)Lcom/crashlytics/android/core/La$b;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/core/La;->VH:Lcom/crashlytics/android/core/La$b;

    return-object p0
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/La;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/core/La;->gn:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic j6()[S
    .registers 1

    sget-object v0, Lcom/crashlytics/android/core/La;->DW:[S

    return-object v0
.end method


# virtual methods
.method DW()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/crashlytics/android/core/Ka;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Checking for crash reports..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/La;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/crashlytics/android/core/La;->Zo:Lcom/crashlytics/android/core/La$c;

    invoke-interface {v1}, Lcom/crashlytics/android/core/La$c;->FH()[Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/La;->Zo:Lcom/crashlytics/android/core/La$c;

    invoke-interface {v2}, Lcom/crashlytics/android/core/La$c;->DW()[Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/crashlytics/android/core/La;->Zo:Lcom/crashlytics/android/core/La$c;

    invoke-interface {v3}, Lcom/crashlytics/android/core/La$c;->j6()[Ljava/io/File;

    move-result-object v3

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_f0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    if-eqz v1, :cond_58

    array-length v5, v1

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v5, :cond_58

    aget-object v7, v1, v6

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found crash report "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "CrashlyticsCore"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v10, v9}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/crashlytics/android/core/Oa;

    invoke-direct {v8, v7}, Lcom/crashlytics/android/core/Oa;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v2, :cond_83

    array-length v5, v2

    const/4 v6, 0x0

    :goto_61
    if-ge v6, v5, :cond_83

    aget-object v7, v2, v6

    invoke-static {v7}, Lcom/crashlytics/android/core/W;->j6(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_77

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    :cond_83
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found invalid session: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "CrashlyticsCore"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Lcom/crashlytics/android/core/sa;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/io/File;

    invoke-interface {v6, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/io/File;

    invoke-direct {v7, v5, v6}, Lcom/crashlytics/android/core/sa;-><init>(Ljava/lang/String;[Ljava/io/File;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_cc
    if-eqz v3, :cond_de

    array-length v1, v3

    :goto_cf
    if-ge v4, v1, :cond_de

    new-instance v2, Lcom/crashlytics/android/core/Ca;

    aget-object v5, v3, v4

    invoke-direct {v2, v5}, Lcom/crashlytics/android/core/Ca;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    :cond_de
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "No reports found."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ef
    return-object v0

    :catchall_f0
    move-exception v1

    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    goto :goto_f4

    :goto_f3
    throw v1

    :goto_f4
    goto :goto_f3
.end method

.method public j6(FLcom/crashlytics/android/core/La$d;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/core/La;->gn:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string p2, "CrashlyticsCore"

    const-string v0, "Report upload has already been started."

    invoke-interface {p1, p2, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_25

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    new-instance v0, Lcom/crashlytics/android/core/La$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/core/La$e;-><init>(Lcom/crashlytics/android/core/La;FLcom/crashlytics/android/core/La$d;)V

    new-instance p1, Ljava/lang/Thread;

    const-string p2, "Crashlytics Report Uploader"

    invoke-direct {p1, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/crashlytics/android/core/La;->gn:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method j6(Lcom/crashlytics/android/core/Ka;)Z
    .registers 7

    iget-object v0, p0, Lcom/crashlytics/android/core/La;->FH:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/crashlytics/android/core/ja;

    iget-object v2, p0, Lcom/crashlytics/android/core/La;->v5:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/crashlytics/android/core/ja;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/Ka;)V

    iget-object v2, p0, Lcom/crashlytics/android/core/La;->Hw:Lcom/crashlytics/android/core/ka;

    invoke-interface {v2, v1}, Lcom/crashlytics/android/core/ka;->j6(Lcom/crashlytics/android/core/ja;)Z

    move-result v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashlytics report upload "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_41
    .catchall {:try_start_3 .. :try_end_1e} :catchall_3f

    if-eqz v1, :cond_23

    const-string v4, "complete: "

    goto :goto_25

    :cond_23
    const-string v4, "FAILED: "

    :goto_25
    :try_start_25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/crashlytics/android/core/Ka;->DW()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CrashlyticsCore"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lio/fabric/sdk/android/m;->v5(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5c

    invoke-interface {p1}, Lcom/crashlytics/android/core/Ka;->remove()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3d} :catch_41
    .catchall {:try_start_25 .. :try_end_3d} :catchall_3f

    const/4 p1, 0x1

    goto :goto_5d

    :catchall_3f
    move-exception p1

    goto :goto_5f

    :catch_41
    move-exception v1

    :try_start_42
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred sending report "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "CrashlyticsCore"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    const/4 p1, 0x0

    :goto_5d
    monitor-exit v0

    return p1

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_3f

    throw p1
.end method
