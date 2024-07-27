.class public final Lcom/google/android/gms/internal/ads/Qx;
.super Lcom/google/android/gms/internal/ads/jy;


# static fields
.field private static final u7:Lcom/google/android/gms/internal/ads/ky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ky",
            "<",
            "Lcom/google/android/gms/internal/ads/dw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private EQ:Lcom/google/android/gms/internal/ads/Fp;

.field private final tp:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/ky;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ky;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/Qx;->u7:Lcom/google/android/gms/internal/ads/ky;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;IILandroid/content/Context;Lcom/google/android/gms/internal/ads/Fp;)V
    .registers 16

    const/16 v6, 0x1b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/jy;-><init>(Lcom/google/android/gms/internal/ads/Ax;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/br;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qx;->EQ:Lcom/google/android/gms/internal/ads/Fp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Qx;->tp:Landroid/content/Context;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/Qx;->EQ:Lcom/google/android/gms/internal/ads/Fp;

    return-void
.end method

.method private final FH()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->we()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->we()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->EQ()Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/br;->er:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/br;->er:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final j6()V
    .registers 11

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/Qx;->u7:Lcom/google/android/gms/internal/ads/ky;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qx;->tp:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ky;->j6(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dw;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    const-string v7, "E"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    const-string v3, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qx;->EQ:Lcom/google/android/gms/internal/ads/Fp;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x4

    move v3, v0

    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/Qx;->tp:Landroid/content/Context;

    if-ne v3, v5, :cond_b

    move v0, v1

    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->eN:Lcom/google/android/gms/internal/ads/e;

    const/4 v2, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v8

    const/4 v0, 0x2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v7, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/dw;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/dw;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    const-string v2, "E"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eq v3, v4, :cond_a

    const/4 v0, 0x4

    if-eq v3, v0, :cond_9

    :cond_2
    :goto_3
    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dw;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v1

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/br;->er:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/dw;->FH:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/br;->ei:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dw;->Hw:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/br;->P8:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dw;->v5:Ljava/lang/String;

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/br;->ef:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dw;->Zo:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/br;->Sf:Ljava/lang/String;

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qx;->EQ:Lcom/google/android/gms/internal/ads/Fp;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->u7()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->Ak:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->nl:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    if-eqz v0, :cond_8

    move v3, v4

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    move v3, v5

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_a
    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Qx;->FH()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_b
    move v0, v2

    goto/16 :goto_2
.end method
