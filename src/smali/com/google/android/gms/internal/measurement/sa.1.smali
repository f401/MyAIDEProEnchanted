.class public Lcom/google/android/gms/internal/measurement/sa;
.super Ljava/lang/Object;


# static fields
.field private static volatile DW:Z

.field private static volatile j6:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/sa;->j6()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/sa;->DW:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DW(Landroid/content/Context;)Z
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const/4 v6, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/sa;->DW:Z

    if-nez v0, :cond_2

    move v3, v0

    move v4, v1

    :goto_0
    const/4 v0, 0x2

    if-gt v4, v0, :cond_4

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/sa;->FH(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/google/android/gms/internal/measurement/sa;->DW:Z

    :goto_1
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v1

    :goto_2
    :try_start_1
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/sa;->DW:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    if-eqz v0, :cond_2

    sput-object v6, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_4
    const-string v0, "DirectBootUtils"

    const-string v5, "Failed to check if user is unlocked"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v6, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_1
    move-exception v2

    move v3, v0

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_3
.end method

.method private static FH(Landroid/content/Context;)Landroid/os/UserManager;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/sa;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sput-object v0, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    :cond_0
    const-class v1, Lcom/google/android/gms/internal/measurement/sa;

    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, Lcom/google/android/gms/internal/measurement/sa;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static j6()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/sa;->j6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/sa;->DW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
