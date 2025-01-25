.class public final Lcom/google/firebase/iid/w;
.super Ljava/lang/Object;


# static fields
.field private static j6:Lcom/google/firebase/iid/w;


# instance fields
.field private final DW:Labcd/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private FH:Ljava/lang/Boolean;

.field final Hw:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/x;

    invoke-direct {v0}, Labcd/x;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/w;->DW:Labcd/x;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/iid/w;->FH:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/w;->Hw:Ljava/util/Queue;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/iid/w;->v5:Ljava/util/Queue;

    return-void
.end method

.method private static DW(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "wrapped_intent"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static DW(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/iid/w;->DW(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final FH(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 9

    iget-object v0, p0, Lcom/google/firebase/iid/w;->DW:Labcd/x;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/firebase/iid/w;->DW:Labcd/x;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_13f

    const/4 v0, 0x0

    if-nez v1, :cond_a6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_9e

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_23

    goto/16 :goto_9e

    :cond_23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_34

    goto :goto_6b

    :cond_34
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_55

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5a

    :cond_55
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    iget-object v2, p0, Lcom/google/firebase/iid/w;->DW:Labcd/x;

    monitor-enter v2

    :try_start_5d
    iget-object v3, p0, Lcom/google/firebase/iid/w;->DW:Labcd/x;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Labcd/x;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_a6

    :catchall_68
    move-exception p1

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_68

    throw p1

    :cond_6b
    :goto_6b
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5e

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error resolving target intent service, skipping classname enforcement. Resolved service was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FirebaseInstanceId"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a2

    :cond_9e
    :goto_9e
    const-string v1, "FirebaseInstanceId"

    const-string v2, "Failed to resolve target intent service, skipping classname enforcement"

    :goto_a2
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    :cond_a6
    :goto_a6
    const-string v2, "FirebaseInstanceId"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_cc

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_c0

    const-string v3, "Restricting intent to a specific service: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c7

    :cond_c0
    new-instance v2, Ljava/lang/String;

    const-string v3, "Restricting intent to a specific service: "

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_c7
    const-string v3, "FirebaseInstanceId"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_d3
    :try_start_d3
    iget-object v1, p0, Lcom/google/firebase/iid/w;->FH:Ljava/lang/Boolean;

    if-nez v1, :cond_e6

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e0

    const/4 v0, 0x1

    :cond_e0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/w;->FH:Ljava/lang/Boolean;

    :cond_e6
    iget-object v0, p0, Lcom/google/firebase/iid/w;->FH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-static {p1, p2}, Landroid/support/v4/content/WakefulBroadcastReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_fe

    :cond_f3
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    const-string p2, "FirebaseInstanceId"

    const-string v0, "Missing wake lock permission, service start may be delayed"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_fe
    if-nez p1, :cond_10a

    const-string p1, "FirebaseInstanceId"

    const-string p2, "Error while delivering the message: ServiceIntent not found."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catch Ljava/lang/SecurityException; {:try_start_d3 .. :try_end_107} :catch_134
    .catch Ljava/lang/IllegalStateException; {:try_start_d3 .. :try_end_107} :catch_10c

    const/16 p1, 0x194

    return p1

    :cond_10a
    const/4 p1, -0x1

    return p1

    :catch_10c
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2d

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to start service while in background: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FirebaseInstanceId"

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x192

    return p1

    :catch_134
    move-exception p1

    const-string p2, "FirebaseInstanceId"

    const-string v0, "Error while delivering the message to the serviceIntent"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x191

    return p1

    :catchall_13f
    move-exception p1

    :try_start_140
    monitor-exit v0
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_13f

    throw p1
.end method

.method public static j6()Lcom/google/firebase/iid/w;
    .registers 2

    const-class v0, Lcom/google/firebase/iid/w;

    monitor-enter v0

    :try_start_3
    sget-object v0, Lcom/google/firebase/iid/w;->j6:Lcom/google/firebase/iid/w;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/firebase/iid/w;

    invoke-direct {v0}, Lcom/google/firebase/iid/w;-><init>()V

    sput-object v0, Lcom/google/firebase/iid/w;->j6:Lcom/google/firebase/iid/w;

    :cond_e
    sget-object v0, Lcom/google/firebase/iid/w;->j6:Lcom/google/firebase/iid/w;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    const-class v1, Lcom/google/firebase/iid/w;

    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception v0

    const-class v1, Lcom/google/firebase/iid/w;

    monitor-exit v1

    throw v0
.end method

.method public static j6(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-static {p0, v0, p1}, Lcom/google/firebase/iid/w;->DW(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final j6(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)I
    .registers 8

    const/4 v0, 0x3

    const-string v1, "FirebaseInstanceId"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Starting service: "

    if-eqz v2, :cond_1a

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1f
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x32362dbf

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3c

    const v2, 0x279bd20

    if-eq v0, v2, :cond_32

    goto :goto_46

    :cond_32
    const-string v0, "com.google.firebase.MESSAGING_EVENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_3c
    const-string v0, "com.google.firebase.INSTANCE_ID_EVENT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v0, -0x1

    :goto_47
    if-eqz v0, :cond_6a

    if-eq v0, v3, :cond_67

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "Unknown service action: "

    if-eqz p2, :cond_5c

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_61

    :cond_5c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_61
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1f4

    return p1

    :cond_67
    iget-object v0, p0, Lcom/google/firebase/iid/w;->v5:Ljava/util/Queue;

    goto :goto_6c

    :cond_6a
    iget-object v0, p0, Lcom/google/firebase/iid/w;->Hw:Ljava/util/Queue;

    :goto_6c
    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p3}, Lcom/google/firebase/iid/w;->FH(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    return p1
.end method
