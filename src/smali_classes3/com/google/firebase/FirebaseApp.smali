.class public Lcom/google/firebase/FirebaseApp;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/FirebaseApp$a;,
        Lcom/google/firebase/FirebaseApp$c;,
        Lcom/google/firebase/FirebaseApp$d;,
        Lcom/google/firebase/FirebaseApp$e;
    }
.end annotation


# static fields
.field private static final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Hw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VH:Ljava/util/concurrent/Executor;

.field private static final Zo:Ljava/lang/Object;

.field static final gn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/FirebaseApp;",
            ">;"
        }
    .end annotation
.end field

.field private static final j6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final v5:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final EQ:Lcom/google/firebase/b;

.field private final J0:Landroid/content/SharedPreferences;

.field private final J8:Labcd/yy;

.field private final Mr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final QX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private U2:Lcom/google/firebase/FirebaseApp$b;

.field private final Ws:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final XL:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final j3:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/FirebaseApp$a;",
            ">;"
        }
    .end annotation
.end field

.field private final tp:Ljava/lang/String;

.field private final u7:Landroid/content/Context;

.field private final we:Lcom/google/firebase/components/n;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.firebase.auth.FirebaseAuth"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.google.firebase.iid.FirebaseInstanceId"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseApp;->j6:Ljava/util/List;

    const-string v0, "com.google.firebase.crash.FirebaseCrash"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseApp;->DW:Ljava/util/List;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseApp;->FH:Ljava/util/List;

    new-array v0, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseApp;->Hw:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseApp;->v5:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp;->Zo:Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/FirebaseApp$d;

    invoke-direct {v0, v2}, Lcom/google/firebase/FirebaseApp$d;-><init>(B)V

    sput-object v0, Lcom/google/firebase/FirebaseApp;->VH:Ljava/util/concurrent/Executor;

    new-instance v0, Labcd/k;

    invoke-direct {v0}, Labcd/k;-><init>()V

    sput-object v0, Lcom/google/firebase/FirebaseApp;->gn:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/b;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->Ws:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->QX:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->aM:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->j3:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->Mr:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/firebase/FirebaseApp;->u7:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->DW(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/FirebaseApp;->tp:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p3

    check-cast p2, Lcom/google/firebase/b;

    iput-object p3, p0, Lcom/google/firebase/FirebaseApp;->EQ:Lcom/google/firebase/b;

    new-instance p2, Labcd/Cy;

    invoke-direct {p2}, Labcd/Cy;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/FirebaseApp;->U2:Lcom/google/firebase/FirebaseApp$b;

    const-string p2, "com.google.firebase.common.prefs"

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/FirebaseApp;->J0:Landroid/content/SharedPreferences;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->Zo()Z

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/firebase/FirebaseApp;->XL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Lcom/google/firebase/components/a;->j6(Landroid/content/Context;)Lcom/google/firebase/components/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/components/a;->j6()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/components/n;

    sget-object v2, Lcom/google/firebase/FirebaseApp;->VH:Ljava/util/concurrent/Executor;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/firebase/components/b;

    const-class v4, Landroid/content/Context;

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {p1, v4, v5}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object p1

    aput-object p1, v3, v1

    const-class p1, Lcom/google/firebase/FirebaseApp;

    new-array v4, v1, [Ljava/lang/Class;

    invoke-static {p0, p1, v4}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-class p1, Lcom/google/firebase/b;

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {p3, p1, v1}, Lcom/google/firebase/components/b;->j6(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/b;

    move-result-object p1

    const/4 p3, 0x2

    aput-object p1, v3, p3

    invoke-direct {v0, v2, p2, v3}, Lcom/google/firebase/components/n;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lcom/google/firebase/components/b;)V

    iput-object v0, p0, Lcom/google/firebase/FirebaseApp;->we:Lcom/google/firebase/components/n;

    const-class p1, Labcd/yy;

    invoke-virtual {v0, p1}, Lcom/google/firebase/components/n;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/yy;

    iput-object p1, p0, Lcom/google/firebase/FirebaseApp;->J8:Labcd/yy;

    return-void
.end method

.method static synthetic DW(Lcom/google/firebase/FirebaseApp;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/google/firebase/FirebaseApp;->Ws:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private VH()V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->QX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    return-void
.end method

.method private Zo()Z
    .registers 6

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->J0:Landroid/content/SharedPreferences;

    const-string v1, "firebase_data_collection_default_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->J0:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->u7:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v3, p0, Lcom/google/firebase/FirebaseApp;->u7:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3c

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_3a} :catch_3b

    return v0

    :catch_3b
    move-exception v0

    :cond_3c
    return v2
.end method

.method public static getInstance()Lcom/google/firebase/FirebaseApp;
    .registers 4

    sget-object v0, Lcom/google/firebase/FirebaseApp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/FirebaseApp;->gn:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp;

    if-eqz v1, :cond_11

    monitor-exit v0

    return-object v1

    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/util/q;->j6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private gn()V
    .registers 5

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->u7:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/b;->FH(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/google/firebase/FirebaseApp;->u7:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/firebase/FirebaseApp$e;->j6(Landroid/content/Context;)V

    goto :goto_17

    :cond_e
    iget-object v1, p0, Lcom/google/firebase/FirebaseApp;->we:Lcom/google/firebase/components/n;

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->Hw()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/components/n;->j6(Z)V

    :goto_17
    sget-object v1, Lcom/google/firebase/FirebaseApp;->j6:Ljava/util/List;

    const-class v2, Lcom/google/firebase/FirebaseApp;

    invoke-static {v2, p0, v1, v0}, Lcom/google/firebase/FirebaseApp;->j6(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Iterable;Z)V

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->Hw()Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/google/firebase/FirebaseApp;->DW:Ljava/util/List;

    invoke-static {v2, p0, v1, v0}, Lcom/google/firebase/FirebaseApp;->j6(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Iterable;Z)V

    const-class v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/FirebaseApp;->u7:Landroid/content/Context;

    sget-object v3, Lcom/google/firebase/FirebaseApp;->FH:Ljava/util/List;

    invoke-static {v1, v2, v3, v0}, Lcom/google/firebase/FirebaseApp;->j6(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Iterable;Z)V

    :cond_32
    return-void
.end method

.method public static j6(Landroid/content/Context;)Lcom/google/firebase/FirebaseApp;
    .registers 4

    sget-object v0, Lcom/google/firebase/FirebaseApp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/firebase/FirebaseApp;->gn:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_13
    invoke-static {p0}, Lcom/google/firebase/b;->j6(Landroid/content/Context;)Lcom/google/firebase/b;

    move-result-object v1

    if-nez v1, :cond_23

    const-string p0, "FirebaseApp"

    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_23
    invoke-static {p0, v1}, Lcom/google/firebase/FirebaseApp;->j6(Landroid/content/Context;Lcom/google/firebase/b;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static j6(Landroid/content/Context;Lcom/google/firebase/b;)Lcom/google/firebase/FirebaseApp;
    .registers 3

    const-string v0, "[DEFAULT]"

    invoke-static {p0, p1, v0}, Lcom/google/firebase/FirebaseApp;->j6(Landroid/content/Context;Lcom/google/firebase/b;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/content/Context;Lcom/google/firebase/b;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;
    .registers 8

    invoke-static {p0}, Lcom/google/firebase/FirebaseApp$c;->j6(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_12
    sget-object v0, Lcom/google/firebase/FirebaseApp;->Zo:Ljava/lang/Object;

    monitor-enter v0

    :try_start_15
    sget-object v1, Lcom/google/firebase/FirebaseApp;->gn:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FirebaseApp name "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " already exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/r;->DW(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/r;->j6(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/firebase/FirebaseApp;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/firebase/FirebaseApp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/b;)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_45

    invoke-direct {v2}, Lcom/google/firebase/FirebaseApp;->gn()V

    return-object v2

    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method static synthetic j6(Lcom/google/firebase/FirebaseApp;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->gn()V

    return-void
.end method

.method static synthetic j6(Lcom/google/firebase/FirebaseApp;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseApp;->j6(Z)V

    return-void
.end method

.method private static j6(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Iterable;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "FirebaseApp"

    if-eqz p3, :cond_1c

    :try_start_14
    sget-object v2, Lcom/google/firebase/FirebaseApp;->Hw:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_44} :catch_77
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_44} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_44} :catch_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_44} :catch_45

    goto :goto_4

    :catch_45
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to initialize "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_58
    move-exception v0

    const-string v2, "Firebase API initialization failure."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_5f
    move-exception p0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#getInstance has been removed by Proguard. Add keep rule to prevent it."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_77
    move-exception v2

    sget-object v2, Lcom/google/firebase/FirebaseApp;->v5:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not linked. Skipping initialization."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is missing, but is required. Check if it has been removed by Proguard."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ad
    return-void
.end method

.method private j6(Z)V
    .registers 4

    const-string v0, "FirebaseApp"

    const-string v1, "Notifying background state change listeners."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->j3:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/FirebaseApp$a;

    invoke-interface {v1, p1}, Lcom/google/firebase/FirebaseApp$a;->j6(Z)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method static synthetic v5()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/firebase/FirebaseApp;->Zo:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public DW()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->VH()V

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->tp:Ljava/lang/String;

    return-object v0
.end method

.method public FH()Lcom/google/firebase/b;
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->VH()V

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->EQ:Lcom/google/firebase/b;

    return-object v0
.end method

.method public Hw()Z
    .registers 3

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0}, Lcom/google/firebase/FirebaseApp;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/google/firebase/FirebaseApp;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->tp:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->DW()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->tp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDataCollectionDefaultEnabled()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->VH()V

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->XL:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public j6()Landroid/content/Context;
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->VH()V

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->u7:Landroid/content/Context;

    return-object v0
.end method

.method public j6(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/FirebaseApp;->VH()V

    iget-object v0, p0, Lcom/google/firebase/FirebaseApp;->we:Lcom/google/firebase/components/n;

    invoke-virtual {v0, p1}, Lcom/google/firebase/components/n;->j6(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/q;->j6(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/firebase/FirebaseApp;->tp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    const-string v1, "options"

    iget-object v2, p0, Lcom/google/firebase/FirebaseApp;->EQ:Lcom/google/firebase/b;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/q$a;->j6(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/q$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/q$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
