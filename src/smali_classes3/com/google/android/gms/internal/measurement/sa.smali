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

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/sa;->DW:Z

    if-nez v0, :cond_3b

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_6
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-gt v2, v3, :cond_37

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/sa;->FH(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    if-nez v3, :cond_13

    sput-boolean v1, Lcom/google/android/gms/internal/measurement/sa;->DW:Z

    return v1

    :cond_13
    :try_start_13
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v5

    if-nez v5, :cond_26

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    :goto_27
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/sa;->DW:Z
    :try_end_29
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_29} :catch_2a

    goto :goto_37

    :catch_2a
    move-exception v3

    const-string v5, "DirectBootUtils"

    const-string v6, "Failed to check if user is unlocked"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v4, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_37
    :goto_37
    if-eqz v0, :cond_3b

    sput-object v4, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    :cond_3b
    return v0
.end method

.method private static FH(Landroid/content/Context;)Landroid/os/UserManager;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    if-nez v0, :cond_1f

    const-class v0, Lcom/google/android/gms/internal/measurement/sa;

    monitor-enter v0

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    if-nez v0, :cond_16

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    sput-object p0, Lcom/google/android/gms/internal/measurement/sa;->j6:Landroid/os/UserManager;

    move-object v0, p0

    :cond_16
    const-class p0, Lcom/google/android/gms/internal/measurement/sa;

    monitor-exit p0

    goto :goto_1f

    :catchall_1a
    move-exception p0

    const-class v0, Lcom/google/android/gms/internal/measurement/sa;

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1a

    throw p0

    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public static j6()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public static j6(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/sa;->j6()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/sa;->DW(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method
