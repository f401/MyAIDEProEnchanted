.class public final Lcom/google/android/gms/internal/measurement/a;
.super Ljava/lang/Object;


# static fields
.field private static final DW:Ljava/lang/reflect/Method;

.field private static volatile FH:Lcom/google/android/gms/internal/measurement/c;

.field private static final j6:Ljava/lang/reflect/Method;


# instance fields
.field private final Hw:Landroid/app/job/JobScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a;->DW()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/a;->j6:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a;->FH()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/a;->DW:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/google/android/gms/internal/measurement/b;->j6:Lcom/google/android/gms/internal/measurement/c;

    sput-object v0, Lcom/google/android/gms/internal/measurement/a;->FH:Lcom/google/android/gms/internal/measurement/c;

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobScheduler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a;->Hw:Landroid/app/job/JobScheduler;

    return-void
.end method

.method private static DW()Ljava/lang/reflect/Method;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_35

    :try_start_6
    const-class v0, Landroid/app/job/JobScheduler;

    const-string v1, "scheduleAsPackage"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/job/JobInfo;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_25} :catch_26

    return-object v0

    :catch_26
    move-exception v0

    const/4 v0, 0x6

    const-string v1, "JobSchedulerCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 v0, 0x0

    return-object v0
.end method

.method private static FH()Ljava/lang/reflect/Method;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1f

    :try_start_7
    const-class v0, Landroid/os/UserHandle;

    const-string v1, "myUserId"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    const/4 v0, 0x6

    const-string v1, "JobSchedulerCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "No myUserId method available"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-object v2
.end method

.method private static Hw()I
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/measurement/a;->DW:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    :try_start_5
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_12} :catch_15
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_12} :catch_13

    return v0

    :catch_13
    move-exception v0

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    const/4 v2, 0x6

    const-string v3, "JobSchedulerCompat"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "myUserId invocation illegal"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    return v1
.end method

.method private final j6(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 9

    sget-object v0, Lcom/google/android/gms/internal/measurement/a;->j6:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2c

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/a;->Hw:Landroid/app/job/JobScheduler;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v2, p3

    const/4 p2, 0x3

    aput-object p4, v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_23} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_23} :catch_24

    return p1

    :catch_24
    move-exception p2

    goto :goto_27

    :catch_26
    move-exception p2

    :goto_27
    const-string p3, "error calling scheduleAsPackage"

    invoke-static {p4, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2c
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/a;->Hw:Landroid/app/job/JobScheduler;

    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    return p1
.end method

.method public static j6(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sget-object v1, Lcom/google/android/gms/internal/measurement/a;->j6:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/google/android/gms/internal/measurement/a;->FH:Lcom/google/android/gms/internal/measurement/c;

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/c;->j6()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_2b

    :cond_1d
    new-instance p0, Lcom/google/android/gms/internal/measurement/a;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/a;-><init>(Landroid/app/job/JobScheduler;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/a;->Hw()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/measurement/a;->j6(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0

    :cond_2b
    :goto_2b
    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    return p0
.end method

.method static final synthetic j6()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
