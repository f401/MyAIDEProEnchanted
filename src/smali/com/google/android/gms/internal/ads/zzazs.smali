.class public final Lcom/google/android/gms/internal/ads/zzazs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static final DW:Ljava/lang/Object;

.field private static final FH:Lcom/google/android/gms/internal/ads/Cl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/Cl",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static j6:Lcom/google/android/gms/internal/ads/DG;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazs;->DW:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/xl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/xl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazs;->FH:Lcom/google/android/gms/internal/ads/Cl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazs;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/DG;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0
.end method

.method private static j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/DG;
    .registers 6

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazs;->DW:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazs;->j6:Lcom/google/android/gms/internal/ads/DG;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/p;->j6(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/p;->eQ:Lcom/google/android/gms/internal/ads/e;

    invoke-static {}, Lcom/google/android/gms/internal/ads/qH;->v5()Lcom/google/android/gms/internal/ads/m;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/m;->j6(Lcom/google/android/gms/internal/ads/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/rl;->j6(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/DG;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/ads/zzazs;->j6:Lcom/google/android/gms/internal/ads/DG;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzazs;->j6:Lcom/google/android/gms/internal/ads/DG;

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/ads/yd;

    new-instance v0, Lcom/google/android/gms/internal/ads/Ph;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Ph;-><init>()V

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/yd;-><init>(Lcom/google/android/gms/internal/ads/Yc;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v4, "volley"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/DG;

    new-instance v4, Lcom/google/android/gms/internal/ads/_e;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/_e;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/internal/ads/DG;-><init>(Lcom/google/android/gms/internal/ads/El;Lcom/google/android/gms/internal/ads/MB;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/DG;->j6()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final j6(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/Hm;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v4, Lcom/google/android/gms/internal/ads/Dl;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/ads/Dl;-><init>(Lcom/google/android/gms/internal/ads/xl;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/Al;

    invoke-direct {v5, p0, p2, v4}, Lcom/google/android/gms/internal/ads/Al;-><init>(Lcom/google/android/gms/internal/ads/zzazs;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Dl;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {v8, v0}, Lcom/google/android/gms/internal/ads/cm;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/Bl;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/Bl;-><init>(Lcom/google/android/gms/internal/ads/zzazs;ILjava/lang/String;Lcom/google/android/gms/internal/ads/uI;Lcom/google/android/gms/internal/ads/XH;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/cm;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/cm;->j6()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "GET"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Bl;->Hw()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Bl;->j3()[B

    move-result-object v3

    invoke-virtual {v8, p2, v1, v2, v3}, Lcom/google/android/gms/internal/ads/cm;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazs;->j6:Lcom/google/android/gms/internal/ads/DG;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/DG;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/lE;

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/jm;->Hw(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final j6(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Cl;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/Cl",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/Rm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Rm;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazs;->j6:Lcom/google/android/gms/internal/ads/DG;

    new-instance v2, Lcom/google/android/gms/internal/ads/Gl;

    invoke-direct {v2, p1, v0}, Lcom/google/android/gms/internal/ads/Gl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Rm;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/DG;->j6(Lcom/google/android/gms/internal/ads/lE;)Lcom/google/android/gms/internal/ads/lE;

    new-instance v1, Lcom/google/android/gms/internal/ads/zl;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/ads/zl;-><init>(Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/Cl;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/Lk;->j6:Lcom/google/android/gms/internal/ads/Lm;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Lcom/google/android/gms/internal/ads/rm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/gms/internal/ads/yl;

    invoke-direct {v2, p0, p2}, Lcom/google/android/gms/internal/ads/yl;-><init>(Lcom/google/android/gms/internal/ads/zzazs;Lcom/google/android/gms/internal/ads/Cl;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/Mm;->DW:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/vm;->j6(Lcom/google/android/gms/internal/ads/Hm;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/Hm;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/Hm",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzazs;->j6(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/Hm;

    move-result-object v0

    return-object v0
.end method
