.class public final Lcom/google/android/gms/internal/ads/bg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static DW:Z

.field private static FH:Z

.field private static final j6:Ljava/lang/Object;


# instance fields
.field private Hw:Lcom/google/android/gms/internal/ads/bq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/bg;->j6:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/bg;->DW:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/bg;->FH:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final FH(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/bg;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->w2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-boolean v1, Lcom/google/android/gms/internal/ads/bg;->FH:Z
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_31

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    :try_start_1a
    sput-boolean v1, Lcom/google/android/gms/internal/ads/bg;->FH:Z

    const-string v1, "com.google.android.gms.ads.omid.DynamiteOmid"

    sget-object v2, Lcom/google/android/gms/internal/ads/cg;->j6:Lcom/google/android/gms/internal/ads/lm;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/km;->j6(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/lm;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/bq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bg;->Hw:Lcom/google/android/gms/internal/ads/bq;
    :try_end_28
    .catch Lcom/google/android/gms/internal/ads/mm; {:try_start_1a .. :try_end_28} :catch_29
    .catchall {:try_start_1a .. :try_end_28} :catchall_31

    goto :goto_2f

    :catch_29
    move-exception p1

    :try_start_2a
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2f
    :goto_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw p1
.end method


# virtual methods
.method public final DW(Labcd/ox;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/bg;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->w2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-boolean v1, Lcom/google/android/gms/internal/ads/bg;->DW:Z

    if-nez v1, :cond_1a

    goto :goto_2a

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->Hw:Lcom/google/android/gms/internal/ads/bq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bq;->tp(Labcd/ox;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    goto :goto_24

    :catch_23
    move-exception p1

    :goto_24
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final DW(Landroid/content/Context;)Z
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/bg;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->w2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    monitor-exit v0

    return v2

    :cond_18
    sget-boolean v1, Lcom/google/android/gms/internal/ads/bg;->DW:Z

    if-eqz v1, :cond_1f

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3a

    const/4 p1, 0x1

    return p1

    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bg;->FH(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bg;->Hw:Lcom/google/android/gms/internal/ads/bq;

    invoke-static {p1}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/bq;->QX(Labcd/ox;)Z

    move-result p1

    sput-boolean p1, Lcom/google/android/gms/internal/ads/bg;->DW:Z
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2e} :catch_32
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_2e} :catch_30
    .catchall {:try_start_1f .. :try_end_2e} :catchall_3a

    :try_start_2e
    monitor-exit v0

    return p1

    :catch_30
    move-exception p1

    goto :goto_33

    :catch_32
    move-exception p1

    :goto_33
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v0

    return v2

    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method public final j6(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/ox;
    .registers 13

    const-string v6, "Google"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/bg;->j6(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/ox;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/ox;
    .registers 18

    sget-object v1, Lcom/google/android/gms/internal/ads/bg;->j6:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/p;->w2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    sget-boolean v0, Lcom/google/android/gms/internal/ads/bg;->DW:Z

    if-nez v0, :cond_1b

    goto :goto_38

    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_3b

    move-object v3, p0

    :try_start_1d
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/bg;->Hw:Lcom/google/android/gms/internal/ads/bq;

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v6

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/bq;->j6(Ljava/lang/String;Labcd/ox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Labcd/ox;

    move-result-object v0
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2e} :catch_31
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_2e} :catch_2f

    return-object v0

    :catch_2f
    move-exception v0

    goto :goto_32

    :catch_31
    move-exception v0

    :goto_32
    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_38
    :goto_38
    move-object v3, p0

    :try_start_39
    monitor-exit v1

    return-object v2

    :catchall_3b
    move-exception v0

    move-object v3, p0

    :goto_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_3f

    throw v0

    :catchall_3f
    move-exception v0

    goto :goto_3d
.end method

.method public final j6(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->w2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return-object v1

    :cond_14
    :try_start_14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/bg;->FH(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/bg;->Hw:Lcom/google/android/gms/internal/ads/bq;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/bq;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_25} :catch_34

    const-string v2, "a."

    if-eqz v0, :cond_2e

    :try_start_29
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_33} :catch_34

    return-object p1

    :catch_34
    move-exception p1

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final j6(Labcd/ox;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/bg;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->w2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-boolean v1, Lcom/google/android/gms/internal/ads/bg;->DW:Z

    if-nez v1, :cond_1a

    goto :goto_2a

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_2c

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->Hw:Lcom/google/android/gms/internal/ads/bq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/bq;->VH(Labcd/ox;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    goto :goto_24

    :catch_23
    move-exception p1

    :goto_24
    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public final j6(Labcd/ox;Landroid/view/View;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/bg;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/p;->w2:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-boolean v1, Lcom/google/android/gms/internal/ads/bg;->DW:Z

    if-nez v1, :cond_1a

    goto :goto_2e

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_30

    :try_start_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bg;->Hw:Lcom/google/android/gms/internal/ads/bq;

    invoke-static {p2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/bq;->j6(Labcd/ox;Labcd/ox;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_24} :catch_27
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    goto :goto_28

    :catch_27
    move-exception p1

    :goto_28
    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw p1
.end method
