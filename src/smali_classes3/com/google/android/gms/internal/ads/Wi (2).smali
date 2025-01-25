.class public final Lcom/google/android/gms/internal/ads/Wi;
.super Lcom/google/android/gms/internal/ads/fj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private final DW:Ljava/lang/Object;

.field private final FH:Lcom/google/android/gms/internal/ads/zzbbi;

.field private final Hw:Lcom/google/android/gms/internal/ads/Xi;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 12

    new-instance v6, Lcom/google/android/gms/internal/ads/Xi;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwf;->DW()Lcom/google/android/gms/internal/ads/zzwf;

    move-result-object v3

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/Xi;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/ta;Lcom/google/android/gms/internal/ads/zzwf;Lcom/google/android/gms/internal/ads/Ge;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-direct {p0, p1, p4, v6}, Lcom/google/android/gms/internal/ads/Wi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/Xi;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Lcom/google/android/gms/internal/ads/Xi;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/fj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Wi;->j6:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Wi;->FH:Lcom/google/android/gms/internal/ads/zzbbi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    return-void
.end method


# virtual methods
.method public final J0(Labcd/ox;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->j6:Landroid/content/Context;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Vi;

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Wi;->zf()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_19

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    check-cast v0, Lcom/google/android/gms/internal/ads/Vi;

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vi;->j6(Landroid/app/Activity;)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_19

    const/4 p1, 0x0

    throw p1

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final N0()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xi;->N0()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final P8(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->pO:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/a;->nw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final XL(Labcd/ox;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    :try_start_7
    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    :goto_d
    if-eqz p1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Xi;->DW(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_17
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_1d

    :catchall_15
    move-exception p1

    goto :goto_24

    :catch_17
    move-exception p1

    :try_start_18
    const-string v1, "Unable to extract updated context."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Xi;->er()V

    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_15

    throw p1
.end method

.method public final cb()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/aa;->cb()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Wi;->er(Labcd/ox;)V

    return-void
.end method

.method public final e9()Landroid/os/Bundle;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->sg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/a;->e9()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw v1

    :cond_20
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final er()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Wi;->XL(Labcd/ox;)V

    return-void
.end method

.method public final er(Labcd/ox;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xi;->destroy()V

    monitor-exit p1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final gW(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->j6:Landroid/content/Context;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/Vi;

    if-nez v1, :cond_7

    goto :goto_15

    :cond_7
    :try_start_7
    check-cast v0, Lcom/google/android/gms/internal/ads/Vi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/Vi;->j6(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_c} :catch_e

    const/4 p1, 0x0

    throw p1

    :catch_e
    move-exception p1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-gt p1, v0, :cond_16

    :goto_15
    return-void

    :cond_16
    new-instance p1, Landroid/os/RemoteException;

    const-class v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final gn(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Xi;->gn(Z)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final j3(Labcd/ox;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xi;->pause()V

    monitor-exit p1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final j3(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/a;->j3(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/NH;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->sg:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/NH;)V

    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p1

    :cond_1f
    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/cj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/cj;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/jj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/a;->j6(Lcom/google/android/gms/internal/ads/jj;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/zzavh;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Xi;->j6(Lcom/google/android/gms/internal/ads/zzavh;)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Wi;->j3(Labcd/ox;)V

    return-void
.end method

.method public final zf()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Wi;->DW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Wi;->Hw:Lcom/google/android/gms/internal/ads/Xi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xi;->zg()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
