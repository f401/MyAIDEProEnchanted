.class final Lcom/google/firebase/iid/FirebaseInstanceId$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/iid/FirebaseInstanceId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final DW:Labcd/zy;

.field private FH:Labcd/xy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxy<",
            "Lcom/google/firebase/a;",
            ">;"
        }
    .end annotation
.end field

.field private Hw:Ljava/lang/Boolean;

.field private final j6:Z

.field final v5:Lcom/google/firebase/iid/FirebaseInstanceId;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/FirebaseInstanceId;Labcd/zy;)V
    .registers 4

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->v5:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->DW:Labcd/zy;

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->FH()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->j6:Z

    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceId$a;->DW()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->Hw:Ljava/lang/Boolean;

    if-nez v0, :cond_23

    if-eqz p1, :cond_23

    new-instance p1, Lcom/google/firebase/iid/O;

    invoke-direct {p1, p0}, Lcom/google/firebase/iid/O;-><init>(Lcom/google/firebase/iid/FirebaseInstanceId$a;)V

    iput-object p1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->FH:Labcd/xy;

    const-class v0, Lcom/google/firebase/a;

    invoke-interface {p2, v0, p1}, Labcd/zy;->j6(Ljava/lang/Class;Labcd/xy;)V

    :cond_23
    return-void
.end method

.method private final DW()Ljava/lang/Boolean;
    .registers 7

    const-string v0, "firebase_messaging_auto_init_enabled"

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->v5:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->j6()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.google.firebase.messaging"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "auto_init"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_24
    :try_start_24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_4e

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4e

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_48
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_48} :catch_4d

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_4d
    move-exception v0

    :cond_4e
    const/4 v0, 0x0

    return-object v0
.end method

.method private final FH()Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "com.google.firebase.messaging.FirebaseMessaging"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v1

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->v5:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseApp;->j6()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_30

    return v0

    :cond_30
    return v3
.end method


# virtual methods
.method final j6()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->Hw:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    monitor-exit p0

    return v0

    :cond_b
    :try_start_b
    iget-boolean v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->j6:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceId$a;->v5:Lcom/google/firebase/iid/FirebaseInstanceId;

    invoke-static {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->j6(Lcom/google/firebase/iid/FirebaseInstanceId;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->isDataCollectionDefaultEnabled()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_21

    if-eqz v0, :cond_1e

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_1e
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method
