.class public abstract Lcom/google/android/gms/common/internal/i;
.super Ljava/lang/Object;


# static fields
.field private static DW:Lcom/google/android/gms/common/internal/i;

.field private static final j6:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/i;->j6:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/common/internal/i;
    .registers 3

    sget-object v0, Lcom/google/android/gms/common/internal/i;->j6:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/internal/i;->DW:Lcom/google/android/gms/common/internal/i;

    if-nez v1, :cond_12

    new-instance v1, Lcom/google/android/gms/common/internal/H;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/H;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/internal/i;->DW:Lcom/google/android/gms/common/internal/i;

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_16

    sget-object p0, Lcom/google/android/gms/common/internal/i;->DW:Lcom/google/android/gms/common/internal/i;

    return-object p0

    :catchall_16
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p0
.end method


# virtual methods
.method protected abstract DW(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method

.method public final j6(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/common/internal/i$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/common/internal/i$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/google/android/gms/common/internal/i;->DW(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract j6(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method
