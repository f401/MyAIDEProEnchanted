.class public final Lcom/google/android/gms/internal/ads/pk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# instance fields
.field private DW:Lcom/google/android/gms/internal/ads/rE;

.field private final EQ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final FH:Lcom/google/android/gms/internal/ads/Ik;

.field private final Hw:Lcom/google/android/gms/internal/ads/yk;

.field private final J0:Ljava/lang/Object;

.field private J8:Lcom/google/android/gms/internal/ads/Hm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private VH:Lcom/google/android/gms/internal/ads/zzbbi;

.field private Zo:Landroid/content/Context;

.field private gn:Lcom/google/android/gms/internal/ads/s;

.field private final j6:Ljava/lang/Object;

.field private tp:Ljava/lang/String;

.field private u7:Ljava/lang/Boolean;

.field private v5:Z

.field private final we:Lcom/google/android/gms/internal/ads/sk;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->j6:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ik;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ik;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->FH:Lcom/google/android/gms/internal/ads/Ik;

    new-instance v1, Lcom/google/android/gms/internal/ads/yk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->Zo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/yk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Hk;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->Hw:Lcom/google/android/gms/internal/ads/yk;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/pk;->v5:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->gn:Lcom/google/android/gms/internal/ads/s;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->u7:Ljava/lang/Boolean;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/pk;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/google/android/gms/internal/ads/sk;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/sk;-><init>(Lcom/google/android/gms/internal/ads/rk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->we:Lcom/google/android/gms/internal/ads/sk;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->J0:Ljava/lang/Object;

    return-void
.end method

.method static synthetic DW(Lcom/google/android/gms/internal/ads/pk;)Lcom/google/android/gms/internal/ads/zzbbi;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/pk;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    return-object p0
.end method

.method static synthetic FH(Lcom/google/android/gms/internal/ads/pk;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/pk;->j6:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic Hw(Lcom/google/android/gms/internal/ads/pk;)Lcom/google/android/gms/internal/ads/s;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/pk;->gn:Lcom/google/android/gms/internal/ads/s;

    return-object p0
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/pk;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    return-object p0
.end method

.method private static j6(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/b;->j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->DW(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_15} :catch_34

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-nez v1, :cond_1e

    goto :goto_35

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_35

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v3, v3, v1

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_31

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :catch_34
    move-exception p0

    :cond_35
    :goto_35
    return-object v0
.end method


# virtual methods
.method public final DW()Landroid/content/res/Resources;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbbi;->Hw:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/km;->j6(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_17
    .catch Lcom/google/android/gms/internal/ads/mm; {:try_start_e .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v1

    const-string v2, "Cannot load resource from dynamite apk or local jar"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/jm;->FH(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final DW(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/th;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/internal/ads/xh;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/p;->J8:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/xh;->j6(Ljava/lang/Throwable;Ljava/lang/String;F)V

    return-void
.end method

.method public final EQ()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final FH()Lcom/google/android/gms/internal/ads/s;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->gn:Lcom/google/android/gms/internal/ads/s;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final Hw()Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->u7:Ljava/lang/Boolean;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final J0()Lcom/google/android/gms/internal/ads/Hm;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/Hm<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/o;->FH()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    if-eqz v0, :cond_36

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->N0:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_36

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->J0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->J8:Lcom/google/android/gms/internal/ads/Hm;

    if-eqz v1, :cond_26

    monitor-exit v0

    return-object v1

    :cond_26
    new-instance v1, Lcom/google/android/gms/internal/ads/qk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/qk;-><init>(Lcom/google/android/gms/internal/ads/pk;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Lk;->j6(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->J8:Lcom/google/android/gms/internal/ads/Hm;

    monitor-exit v0

    return-object v1

    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_20 .. :try_end_35} :catchall_33

    throw v1

    :cond_36
    :goto_36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/vm;->j6(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/Gm;

    move-result-object v0

    return-object v0
.end method

.method public final J8()Lcom/google/android/gms/internal/ads/yk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->Hw:Lcom/google/android/gms/internal/ads/yk;

    return-object v0
.end method

.method public final VH()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->we:Lcom/google/android/gms/internal/ads/sk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sk;->FH()V

    return-void
.end method

.method final synthetic Ws()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Vi;->j6(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pk;->j6(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final Zo()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->we:Lcom/google/android/gms/internal/ads/sk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sk;->DW()Z

    move-result v0

    return v0
.end method

.method public final gn()Lcom/google/android/gms/internal/ads/rE;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->DW:Lcom/google/android/gms/internal/ads/rE;

    return-object v0
.end method

.method public final j6()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    return-object v0
.end method

.method public final j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/pk;->v5:Z

    if-nez v1, :cond_7a

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pk;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->gn()Lcom/google/android/gms/internal/ads/fF;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pk;->Hw:Lcom/google/android/gms/internal/ads/yk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/fF;->j6(Lcom/google/android/gms/internal/ads/iF;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->FH:Lcom/google/android/gms/internal/ads/Ik;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/Ik;->j6(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pk;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/th;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/internal/ads/xh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->v5()Lcom/google/android/gms/internal/ads/Nk;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzbbi;->j6:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/Nk;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pk;->tp:Ljava/lang/String;

    new-instance p2, Lcom/google/android/gms/internal/ads/rE;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/internal/ads/rE;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pk;->DW:Lcom/google/android/gms/internal/ads/rE;

    invoke-static {}, Lcom/google/android/gms/ads/internal/X;->J8()Lcom/google/android/gms/internal/ads/u;

    sget-object p1, Lcom/google/android/gms/internal/ads/p;->br:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5c

    const-string p1, "CsiReporterFactory: CSI is not enabled. No CSI reporter created."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Ek;->Zo(Ljava/lang/String;)V

    goto :goto_61

    :cond_5c
    new-instance v4, Lcom/google/android/gms/internal/ads/s;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/s;-><init>()V

    :goto_61
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/pk;->gn:Lcom/google/android/gms/internal/ads/s;

    if-eqz v4, :cond_75

    new-instance p1, Lcom/google/android/gms/internal/ads/rk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/rk;-><init>(Lcom/google/android/gms/internal/ads/pk;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Ak;->FH()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/Hm;

    const-string p2, "AppState.registerCsiReporter"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/tm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/String;)V

    :cond_75
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/pk;->v5:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/pk;->J0()Lcom/google/android/gms/internal/ads/Hm;

    :cond_7a
    monitor-exit v0

    return-void

    :catchall_7c
    move-exception p1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw p1
.end method

.method public final j6(Ljava/lang/Boolean;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pk;->u7:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final j6(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->Zo:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->VH:Lcom/google/android/gms/internal/ads/zzbbi;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/th;->j6(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbi;)Lcom/google/android/gms/internal/ads/xh;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/xh;->j6(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final j6(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->we:Lcom/google/android/gms/internal/ads/sk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/sk;->j6(Z)V

    return-void
.end method

.method public final tp()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public final u7()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->EQ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public final v5()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->we:Lcom/google/android/gms/internal/ads/sk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/sk;->j6()Z

    move-result v0

    return v0
.end method

.method public final we()Lcom/google/android/gms/internal/ads/Hk;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pk;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pk;->FH:Lcom/google/android/gms/internal/ads/Ik;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
