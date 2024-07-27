.class public final Lcom/google/android/gms/internal/ads/zzaft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/MB;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Landroid/content/Context;

.field private volatile j6:Lcom/google/android/gms/internal/ads/Lb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaft;->DW:Landroid/content/Context;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/zzaft;)Lcom/google/android/gms/internal/ads/Lb;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    return-object v0
.end method

.method private final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    goto :goto_0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/zzaft;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaft;->j6()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/nD;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE",
            "<*>;)",
            "Lcom/google/android/gms/internal/ads/nD;"
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v10, 0x34

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafl;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/zzafl;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/Vb;

    invoke-direct {v5, p0, v4}, Lcom/google/android/gms/internal/ads/Vb;-><init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/Rm;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/Wb;

    invoke-direct {v6, p0, v4}, Lcom/google/android/gms/internal/ads/Wb;-><init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/Rm;)V

    new-instance v7, Lcom/google/android/gms/internal/ads/Lb;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzaft;->DW:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, v8, v9, v5, v6}, Lcom/google/android/gms/internal/ads/Lb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/c;->checkAvailabilityAndConnect()V

    new-instance v5, Lcom/google/android/gms/internal/ads/Sb;

    invoke-direct {v5, p0, v0}, Lcom/google/android/gms/internal/ads/Sb;-><init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/zzafl;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-static {v4, v5, v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Sc:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v5, Lcom/google/android/gms/internal/ads/Lk;->FH:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v4, v6, v7, v0, v5}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/internal/ads/Ub;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/ads/Ub;-><init>(Lcom/google/android/gms/internal/ads/zzaft;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Http assets remote cache took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzasy;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzasy;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzafn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzasy;->j6(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzafn;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->j6:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->v5:[Ljava/lang/String;

    array-length v2, v2

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafn;->Zo:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->v5:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafn;->Zo:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/nD;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzafn;->FH:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzafn;->Hw:[B

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzafn;->VH:Z

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzafn;->gn:J

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BLjava/util/Map;ZJ)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/db;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzafn;->DW:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/db;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Http assets remote cache took "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Http assets remote cache took "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method
