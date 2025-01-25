.class public final Lcom/google/android/gms/internal/ads/Qx;
.super Lcom/google/android/gms/internal/ads/jy;


# static fields
.field private static final u7:Lcom/google/android/gms/internal/ads/ky;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ky<",
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

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qx;->EQ:Lcom/google/android/gms/internal/ads/Fp;

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

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->we()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Ax;->EQ()Lcom/google/android/gms/internal/ads/br;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/br;->er:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/br;->er:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1f} :catch_22
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1f} :catch_20

    return-object v0

    :catch_20
    move-exception v0

    goto :goto_23

    :catch_22
    move-exception v0

    :cond_23
    :goto_23
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final j6()V
    .registers 14

    sget-object v0, Lcom/google/android/gms/internal/ads/Qx;->u7:Lcom/google/android/gms/internal/ads/ky;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qx;->tp:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ky;->j6(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dw;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_36

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    const-string v5, "E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    const-string v4, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_36

    :cond_34
    const/4 v1, 0x0

    goto :goto_37

    :cond_36
    :goto_36
    const/4 v1, 0x1

    :goto_37
    if-eqz v1, :cond_dc

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v4, :cond_45

    const/4 v4, 0x4

    goto :goto_86

    :cond_45
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_85

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/jy;->DW:Lcom/google/android/gms/internal/ads/Ax;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ax;->u7()Z

    move-result v4

    if-eqz v4, :cond_80

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->Ak:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_80

    sget-object v4, Lcom/google/android/gms/internal/ads/p;->nl:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_80

    const/4 v4, 0x1

    goto :goto_81

    :cond_80
    const/4 v4, 0x0

    :goto_81
    if-eqz v4, :cond_85

    const/4 v4, 0x3

    goto :goto_86

    :cond_85
    const/4 v4, 0x2

    :goto_86
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/jy;->Zo:Ljava/lang/reflect/Method;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/Qx;->tp:Landroid/content/Context;

    if-ne v4, v7, :cond_8e

    const/4 v10, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v10, 0x0

    :goto_8f
    sget-object v11, Lcom/google/android/gms/internal/ads/p;->eN:Lcom/google/android/gms/internal/ads/e;

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v9, v12, v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v12, v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v12, v7

    invoke-virtual {v8, v1, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/dw;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/dw;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c2

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    const-string v3, "E"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    :cond_c2
    if-eq v4, v6, :cond_cd

    if-eq v4, v5, :cond_c7

    goto :goto_d9

    :cond_c7
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_cd
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Qx;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Hx;->DW(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d9

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    :cond_d9
    :goto_d9
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_dc
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dw;

    monitor-exit v0
    :try_end_e3
    .catchall {:try_start_d .. :try_end_e3} :catchall_10f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    monitor-enter v2

    if-eqz v1, :cond_10a

    :try_start_e8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dw;->DW:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/br;->er:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/dw;->FH:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/br;->ei:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dw;->Hw:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/br;->P8:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/dw;->v5:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/br;->ef:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy;->v5:Lcom/google/android/gms/internal/ads/br;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dw;->Zo:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/br;->Sf:Ljava/lang/String;

    :cond_10a
    monitor-exit v2

    return-void

    :catchall_10c
    move-exception v0

    monitor-exit v2
    :try_end_10e
    .catchall {:try_start_e8 .. :try_end_10e} :catchall_10c

    throw v0

    :catchall_10f
    move-exception v1

    :try_start_110
    monitor-exit v0
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_10f

    throw v1
.end method
