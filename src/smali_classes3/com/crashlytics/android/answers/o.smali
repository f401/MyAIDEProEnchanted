.class public Lcom/crashlytics/android/answers/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/answers/u;


# instance fields
.field private final DW:Ljava/lang/Object;

.field private final j6:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/o;->DW:Ljava/lang/Object;

    iput-object p2, p0, Lcom/crashlytics/android/answers/o;->j6:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static DW(Landroid/content/Context;)Ljava/lang/Class;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static DW(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5

    :try_start_0
    const-string p0, "logEventInternal"

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;)Lcom/crashlytics/android/answers/u;
    .registers 4

    invoke-static {p0}, Lcom/crashlytics/android/answers/o;->DW(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p0, v0}, Lcom/crashlytics/android/answers/o;->j6(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_f

    return-object v1

    :cond_f
    invoke-static {p0, v0}, Lcom/crashlytics/android/answers/o;->DW(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v1

    :cond_16
    new-instance v0, Lcom/crashlytics/android/answers/o;

    invoke-direct {v0, v2, p0}, Lcom/crashlytics/android/answers/o;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method private static j6(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    :try_start_0
    const-string v0, "getInstance"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j6(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "fab"

    invoke-virtual {p0, v0, p1, p2}, Lcom/crashlytics/android/answers/o;->j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/o;->j6:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/crashlytics/android/answers/o;->DW:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-exception p1

    :goto_15
    return-void
.end method
