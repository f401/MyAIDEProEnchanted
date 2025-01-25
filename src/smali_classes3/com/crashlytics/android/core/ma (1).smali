.class Lcom/crashlytics/android/core/ma;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/b;


# static fields
.field private static final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Lcom/crashlytics/android/core/ca;

.field private FH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/ma;->j6:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/crashlytics/android/core/ca;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/ma;->DW:Lcom/crashlytics/android/core/ca;

    return-void
.end method

.method private DW(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

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

    iget-object v2, p0, Lcom/crashlytics/android/core/ma;->DW:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-object p1

    :catch_1d
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private static DW(Lcom/crashlytics/android/core/ca;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$A$:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/crashlytics/android/core/ma;->j6(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/crashlytics/android/core/ca;->log(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_34

    :catch_19
    move-exception p0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to serialize Firebase Analytics event; "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "CrashlyticsCore"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/ma;)Lcom/crashlytics/android/core/ca;
    .registers 1

    iget-object p0, p0, Lcom/crashlytics/android/core/ma;->DW:Lcom/crashlytics/android/core/ca;

    return-object p0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ma;->DW:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    const/4 p1, 0x0

    return-object p1
.end method

.method private static j6(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_12

    :cond_26
    const-string p1, "name"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "parameters"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lcom/crashlytics/android/core/ca;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/core/ma;->DW(Lcom/crashlytics/android/core/ca;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static j6([Ljava/lang/Object;)Z
    .registers 7

    array-length v0, p0

    sget-object v1, Lcom/crashlytics/android/core/ma;->j6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    return v3

    :cond_b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_27

    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    return v3

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_27
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/crashlytics/android/core/ma;->FH:Ljava/lang/Object;

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/crashlytics/android/core/ma;->DW:Lcom/crashlytics/android/core/ca;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/core/la;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/core/la;-><init>(Lcom/crashlytics/android/core/ma;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/crashlytics/android/core/ma;->FH:Ljava/lang/Object;

    :cond_20
    iget-object p1, p0, Lcom/crashlytics/android/core/ma;->FH:Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object p1

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public j6()Z
    .registers 9

    const-string v0, "com.google.android.gms.measurement.AppMeasurement"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/ma;->j6(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const/4 v2, 0x0

    if-nez v0, :cond_15

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v3, "Firebase Analytics is not present; you will not see automatic logging of events before a crash occurs."

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_15
    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/ma;->DW(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_25

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v3, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Could not create an instance of Firebase Analytics."

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_25
    const-string v4, "com.google.android.gms.measurement.AppMeasurement$OnEventListener"

    invoke-direct {p0, v4}, Lcom/crashlytics/android/core/ma;->j6(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_37

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v3, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Could not get class com.google.android.gms.measurement.AppMeasurement$OnEventListener"

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_37
    const/4 v5, 0x1

    :try_start_38
    const-string v6, "registerOnMeasurementEventListener"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v4, v7, v2

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/crashlytics/android/core/ma;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_38 .. :try_end_4d} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4d} :catch_4e

    goto :goto_6b

    :catch_4e
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3, v0}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6b
    return v5

    :catch_6c
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "Cannot register AppMeasurement Listener for Crashlytics breadcrumbs: Method registerOnMeasurementEventListener not found."

    invoke-interface {v3, v1, v4, v0}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method
