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
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    return-object p0
.end method

.method private final j6()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/zzaft;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaft;->j6()V

    return-void
.end method


# virtual methods
.method public final j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/nD;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/lE<",
            "*>;)",
            "Lcom/google/android/gms/internal/ads/nD;"
        }
    .end annotation

    const-string v0, "ms"

    const-string v1, "Http assets remote cache took "

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafl;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/zzafl;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x34

    :try_start_13
    new-instance v6, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/Vb;

    invoke-direct {v7, p0, v6}, Lcom/google/android/gms/internal/ads/Vb;-><init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/Rm;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/Wb;

    invoke-direct {v8, p0, v6}, Lcom/google/android/gms/internal/ads/Wb;-><init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/Rm;)V

    new-instance v9, Lcom/google/android/gms/internal/ads/Lb;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzaft;->DW:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->U2()Lcom/google/android/gms/internal/ads/Ll;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/Ll;->DW()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v9, v10, v11, v7, v8}, Lcom/google/android/gms/internal/ads/Lb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/c$a;Lcom/google/android/gms/common/internal/c$b;)V

    iput-object v9, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaft;->j6:Lcom/google/android/gms/internal/ads/Lb;

    invoke-virtual {v7}, Lcom/google/android/gms/common/internal/c;->checkAvailabilityAndConnect()V

    new-instance v7, Lcom/google/android/gms/internal/ads/Sb;

    invoke-direct {v7, p0, p1}, Lcom/google/android/gms/internal/ads/Sb;-><init>(Lcom/google/android/gms/internal/ads/zzaft;Lcom/google/android/gms/internal/ads/zzafl;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    sget-object v6, Lcom/google/android/gms/internal/ads/p;->Sc:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v9, Lcom/google/android/gms/internal/ads/Lk;->FH:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object p1

    new-instance v6, Lcom/google/android/gms/internal/ads/Ub;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/Ub;-><init>(Lcom/google/android/gms/internal/ads/zzaft;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-interface {p1, v6, v7}, Lcom/google/android/gms/internal/ads/Hm;->j6(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_6c} :catch_f7
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_6c} :catch_f5
    .catchall {:try_start_13 .. :try_end_6c} :catchall_d5

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzasy;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzafn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzasy;->j6(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafn;

    if-nez p1, :cond_9a

    return-object v4

    :cond_9a
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzafn;->j6:Z

    if-nez v0, :cond_cd

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzafn;->v5:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzafn;->Zo:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_a7

    return-object v4

    :cond_a7
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_ad
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzafn;->v5:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_be

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzafn;->Zo:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_ad

    :cond_be
    new-instance v0, Lcom/google/android/gms/internal/ads/nD;

    iget v6, p1, Lcom/google/android/gms/internal/ads/zzafn;->FH:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzafn;->Hw:[B

    iget-boolean v9, p1, Lcom/google/android/gms/internal/ads/zzafn;->VH:Z

    iget-wide v10, p1, Lcom/google/android/gms/internal/ads/zzafn;->gn:J

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/nD;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    :cond_cd
    new-instance v0, Lcom/google/android/gms/internal/ads/db;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzafn;->DW:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/db;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_d5
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    throw p1

    :catch_f5
    move-exception p1

    goto :goto_f8

    :catch_f7
    move-exception p1

    :goto_f8
    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->we()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->DW()J

    move-result-wide v6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v6, v2

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    return-object v4
.end method
