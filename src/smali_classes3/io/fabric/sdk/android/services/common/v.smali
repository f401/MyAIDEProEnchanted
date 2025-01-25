.class public Lio/fabric/sdk/android/services/common/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/v$a;
    }
.end annotation


# static fields
.field private static final DW:Ljava/lang/String;

.field private static final j6:Ljava/util/regex/Pattern;


# instance fields
.field EQ:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

.field private final FH:Ljava/util/concurrent/locks/ReentrantLock;

.field private final Hw:Lio/fabric/sdk/android/services/common/x;

.field J0:Z

.field J8:Lio/fabric/sdk/android/services/common/u;

.field private final VH:Landroid/content/Context;

.field private final Zo:Z

.field private final gn:Ljava/lang/String;

.field private final tp:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/Kit;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Ljava/lang/String;

.field private final v5:Z

.field we:Lio/fabric/sdk/android/services/common/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[^\\p{Alnum}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/v;->j6:Ljava/util/regex/Pattern;

    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/common/v;->DW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lio/fabric/sdk/android/Kit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/v;->FH:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz p1, :cond_8d

    if-eqz p2, :cond_85

    if-eqz p4, :cond_7d

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/v;->VH:Landroid/content/Context;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/v;->gn:Ljava/lang/String;

    iput-object p3, p0, Lio/fabric/sdk/android/services/common/v;->u7:Ljava/lang/String;

    iput-object p4, p0, Lio/fabric/sdk/android/services/common/v;->tp:Ljava/util/Collection;

    new-instance p2, Lio/fabric/sdk/android/services/common/x;

    invoke-direct {p2}, Lio/fabric/sdk/android/services/common/x;-><init>()V

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/v;->Hw:Lio/fabric/sdk/android/services/common/x;

    new-instance p2, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    invoke-direct {p2, p1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/v;->EQ:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    new-instance p2, Lio/fabric/sdk/android/services/common/u;

    invoke-direct {p2}, Lio/fabric/sdk/android/services/common/u;-><init>()V

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/v;->J8:Lio/fabric/sdk/android/services/common/u;

    const-string p2, "com.crashlytics.CollectDeviceIdentifiers"

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lio/fabric/sdk/android/services/common/v;->v5:Z

    const-string p4, "Fabric"

    if-nez p2, :cond_56

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device ID collection disabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p4, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    const-string p2, "com.crashlytics.CollectUserIdentifiers"

    invoke-static {p1, p2, p3}, Lio/fabric/sdk/android/services/common/i;->j6(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lio/fabric/sdk/android/services/common/v;->Zo:Z

    if-nez p2, :cond_7c

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User information collection disabled for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p4, p1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    return-void

    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "kits must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_85
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appIdentifier must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appContext must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private DW(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .registers 4

    const-string v0, "crashlytics.installation.id"

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/v;->FH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_8
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/fabric/sdk/android/services/common/v;->j6(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2b

    :cond_25
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/v;->FH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_2b
    move-exception p1

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/v;->FH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method private DW(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lio/fabric/sdk/android/services/common/v;->DW:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private J0()Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/v;->DW()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-boolean v0, v0, Lio/fabric/sdk/android/services/common/b;->DW:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method private j6(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_16

    :cond_4
    sget-object v0, Lio/fabric/sdk/android/services/common/v;->j6:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :goto_16
    return-object p1
.end method

.method private j6(Landroid/content/SharedPreferences;)V
    .registers 3

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/v;->DW()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lio/fabric/sdk/android/services/common/v;->j6(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private j6(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6

    const-string v0, "crashlytics.advertising.id"

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/v;->FH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_3f

    if-eqz v1, :cond_13

    :cond_d
    :goto_d
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/v;->FH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_13
    const/4 v1, 0x0

    :try_start_14
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_d

    :cond_2a
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "crashlytics.installation.id"

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3f

    goto :goto_26

    :catchall_3f
    move-exception p1

    iget-object p2, p0, Lio/fabric/sdk/android/services/common/v;->FH:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_47

    :goto_46
    throw p1

    :goto_47
    goto :goto_46
.end method

.method private j6(Ljava/util/Map;Lio/fabric/sdk/android/services/common/v$a;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/v$a;",
            "Ljava/lang/String;",
            ">;",
            "Lio/fabric/sdk/android/services/common/v$a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_5

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method


# virtual methods
.method DW()Lio/fabric/sdk/android/services/common/b;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/v;->J0:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/v;->EQ:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->j6()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/v;->we:Lio/fabric/sdk/android/services/common/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/fabric/sdk/android/services/common/v;->J0:Z

    :cond_10
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/v;->we:Lio/fabric/sdk/android/services/common/b;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public EQ()Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/v;->we()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/v;->J0()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public FH()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/v;->gn:Ljava/lang/String;

    return-object v0
.end method

.method public Hw()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/v;->u7:Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/v;->VH:Landroid/content/Context;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->u7(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/v;->j6(Landroid/content/SharedPreferences;)V

    const-string v1, "crashlytics.installation.id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/v;->DW(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, v1

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public VH()Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/common/v;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lio/fabric/sdk/android/services/common/v;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s/%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Zo()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/v;->Hw:Lio/fabric/sdk/android/services/common/x;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/v;->VH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/common/x;->j6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gn()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/v;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/v;->Zo:Z

    return v0
.end method

.method public tp()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/v;->u7()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/v;->gn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u7()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/v;->DW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/fabric/sdk/android/services/common/v$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/v;->tp:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/Kit;

    instance-of v3, v2, Lio/fabric/sdk/android/services/common/n;

    if-eqz v3, :cond_b

    check-cast v2, Lio/fabric/sdk/android/services/common/n;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/n;->Hw()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/fabric/sdk/android/services/common/v$a;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v4, v3}, Lio/fabric/sdk/android/services/common/v;->j6(Ljava/util/Map;Lio/fabric/sdk/android/services/common/v$a;Ljava/lang/String;)V

    goto :goto_29

    :cond_45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected we()Z
    .registers 3

    iget-boolean v0, p0, Lio/fabric/sdk/android/services/common/v;->v5:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/v;->J8:Lio/fabric/sdk/android/services/common/u;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/v;->VH:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/fabric/sdk/android/services/common/u;->v5(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
