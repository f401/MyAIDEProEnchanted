.class public final Lcom/google/android/gms/internal/ads/eb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/f;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zh;
.end annotation


# static fields
.field private static j6:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/google/android/gms/internal/ads/eb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Lcom/google/android/gms/internal/ads/ab;

.field private final FH:Lcom/google/android/gms/ads/formats/MediaView;

.field private final Hw:Lcom/google/android/gms/ads/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/eb;->j6:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/ab;)V
    .registers 6

    const-string v0, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/google/android/gms/ads/h;

    invoke-direct {v1}, Lcom/google/android/gms/ads/h;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/eb;->Hw:Lcom/google/android/gms/ads/h;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eb;->DW:Lcom/google/android/gms/internal/ads/ab;

    const/4 v1, 0x0

    :try_start_f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/ab;->sv()Labcd/ox;

    move-result-object p1

    invoke-static {p1}, Labcd/px;->j6(Labcd/ox;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_19} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    move-exception p1

    goto :goto_1d

    :catch_1c
    move-exception p1

    :goto_1d
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_21
    if-eqz p1, :cond_3b

    new-instance v2, Lcom/google/android/gms/ads/formats/MediaView;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/formats/MediaView;-><init>(Landroid/content/Context;)V

    :try_start_28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/eb;->DW:Lcom/google/android/gms/internal/ads/ab;

    invoke-static {v2}, Labcd/px;->j6(Ljava/lang/Object;)Labcd/ox;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/ab;->yS(Labcd/ox;)Z

    move-result p1
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_37

    if-nez p1, :cond_35

    goto :goto_3b

    :cond_35
    move-object v1, v2

    goto :goto_3b

    :catch_37
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/eb;->FH:Lcom/google/android/gms/ads/formats/MediaView;

    return-void
.end method

.method public static j6(Lcom/google/android/gms/internal/ads/ab;)Lcom/google/android/gms/internal/ads/eb;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/eb;->j6:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/eb;->j6:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/eb;

    if-eqz v1, :cond_13

    monitor-exit v0

    return-object v1

    :cond_13
    new-instance v1, Lcom/google/android/gms/internal/ads/eb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/eb;-><init>(Lcom/google/android/gms/internal/ads/ab;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/eb;->j6:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method


# virtual methods
.method public final j6()Lcom/google/android/gms/internal/ads/ab;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eb;->DW:Lcom/google/android/gms/internal/ads/ab;

    return-object v0
.end method

.method public final vJ()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eb;->DW:Lcom/google/android/gms/internal/ads/ab;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ab;->vJ()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/jm;->DW(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
