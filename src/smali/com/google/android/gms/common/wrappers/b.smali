.class public Lcom/google/android/gms/common/wrappers/b;
.super Ljava/lang/Object;


# static fields
.field private static j6:Lcom/google/android/gms/common/wrappers/b;


# instance fields
.field private DW:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/common/wrappers/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/wrappers/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/wrappers/b;->j6:Lcom/google/android/gms/common/wrappers/b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/wrappers/b;->DW:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    return-void
.end method

.method private final DW(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    .registers 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/b;->DW:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    new-instance v0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/wrappers/b;->DW:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/wrappers/b;->DW:Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;
    .registers 2

    sget-object v0, Lcom/google/android/gms/common/wrappers/b;->j6:Lcom/google/android/gms/common/wrappers/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/wrappers/b;->DW(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    return-object v0
.end method
