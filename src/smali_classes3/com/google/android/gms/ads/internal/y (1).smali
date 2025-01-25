.class public final Lcom/google/android/gms/ads/internal/y;
.super Lcom/google/android/gms/internal/ads/aI;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static DW:Lcom/google/android/gms/ads/internal/y;

.field private static final j6:Ljava/lang/Object;


# instance fields
.field private final FH:Landroid/content/Context;

.field private final Hw:Ljava/lang/Object;

.field private Zo:Lcom/google/android/gms/internal/ads/zzbbi;

.field private v5:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/y;->j6:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/aI;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/y;->Hw:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/y;->Zo:Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/y;->v5:Z

    return-void
.end method

.method public static j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/ads/internal/y;
    .registers 4

    sget-object v0, Lcom/google/android/gms/ads/internal/y;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/ads/internal/y;->DW:Lcom/google/android/gms/ads/internal/y;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/android/gms/ads/internal/y;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/y;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    sput-object v1, Lcom/google/android/gms/ads/internal/y;->DW:Lcom/google/android/gms/ads/internal/y;

    :cond_12
    sget-object p0, Lcom/google/android/gms/ads/internal/y;->DW:Lcom/google/android/gms/ads/internal/y;

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method


# virtual methods
.method public final AR()F
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gl;->j6()F

    move-result v0

    return v0
.end method

.method public final DW(Ljava/lang/String;Labcd/ox;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->gM:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->e3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->e3:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4e

    new-instance v0, Lcom/google/android/gms/ads/internal/z;

    invoke-static {p2}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/ads/internal/z;-><init>(Lcom/google/android/gms/ads/internal/y;Ljava/lang/Runnable;)V

    const/4 p2, 0x1

    move-object p2, v0

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    const/4 p2, 0x0

    :goto_4f
    if-eqz v0, :cond_5c

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->J0()Lcom/google/android/gms/ads/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/y;->Zo:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/ads/internal/e;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_5c
    return-void
.end method

.method public final EQ(Z)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl;->j6(Z)V

    return-void
.end method

.method public final GT()Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/gl;->DW()Z

    move-result v0

    return v0
.end method

.method public final KD(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->gM:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->J0()Lcom/google/android/gms/ads/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/y;->Zo:Lcom/google/android/gms/internal/ads/zzbbi;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/ads/internal/e;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_29
    return-void
.end method

.method public final Od()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/y;->Zo:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    return-object v0
.end method

.method public final SI(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final iW()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/ads/internal/y;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/y;->v5:Z

    if-eqz v1, :cond_e

    const-string v1, "Mobile ads is initialized already."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/y;->v5:Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/y;->Zo:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/pk;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->EQ()Lcom/google/android/gms/internal/ads/DF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/DF;->j6(Landroid/content/Context;)V

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public final j6(F)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->tp()Lcom/google/android/gms/internal/ads/gl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/gl;->j6(F)V

    return-void
.end method

.method public final j6(Labcd/ox;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "Wrapped context is null. Failed to open debug menu."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_16

    const-string p1, "Context is null. Failed to open debug menu."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jm;->j6(Ljava/lang/String;)V

    return-void

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzazc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzazc;->j6(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/y;->Zo:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzazc;->DW(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazc;->j6()V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Ge;)V
    .registers 2

    return-void
.end method

.method final synthetic j6(Ljava/lang/Runnable;)V
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/y;->FH:Landroid/content/Context;

    const-string v1, "Adapters must be initialized on the main thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->u7()Lcom/google/android/gms/internal/ads/pk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pk;->we()Lcom/google/android/gms/internal/ads/Hk;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Hk;->VH()Lcom/google/android/gms/internal/ads/ok;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ok;->v5()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_10f

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    goto/16 :goto_10f

    :cond_21
    if-eqz p1, :cond_2e

    :try_start_23
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2e

    :catchall_27
    move-exception p1

    const-string v0, "Could not initialize rewarded ads."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2e
    :goto_2e
    invoke-static {}, Lcom/google/android/gms/internal/ads/Xi;->s0()Lcom/google/android/gms/internal/ads/Xi;

    move-result-object p1

    if-eqz p1, :cond_10f

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/qe;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/qe;->j6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/pe;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/pe;->EQ:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/pe;->FH:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6b
    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_85

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_85
    if-eqz v5, :cond_6b

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_91
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_99
    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_ab
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/Xi;->dx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ej;

    move-result-object v4

    if-nez v4, :cond_b2

    goto :goto_99

    :cond_b2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ej;->j6()Lcom/google/android/gms/internal/ads/Je;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Je;->isInitialized()Z

    move-result v6

    if-nez v6, :cond_99

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Je;->wE()Z

    move-result v6

    if-nez v6, :cond_c3

    goto :goto_99

    :cond_c3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Ej;->DW()Lcom/google/android/gms/internal/ads/yj;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v5, v0, v4, v2}, Lcom/google/android/gms/internal/ads/Je;->j6(Labcd/ox;Lcom/google/android/gms/internal/ads/Fj;Ljava/util/List;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_d8
    .catchall {:try_start_ab .. :try_end_d8} :catchall_ea

    const-string v5, "Initialized rewarded video mediation adapter "

    if-eqz v4, :cond_e1

    :try_start_dc
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e6

    :cond_e1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;)V
    :try_end_e9
    .catchall {:try_start_dc .. :try_end_e9} :catchall_ea

    goto :goto_99

    :catchall_ea
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x38

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to initialize rewarded video mediation adapter \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_99

    :cond_10f
    :goto_10f
    return-void
.end method
