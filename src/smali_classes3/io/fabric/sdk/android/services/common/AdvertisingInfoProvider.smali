.class Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Labcd/Qz;

.field private final j6:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->j6:Landroid/content/Context;

    new-instance v0, Labcd/Rz;

    const-string v1, "TwitterAdvertisingInfoPreferences"

    invoke-direct {v0, p1, v1}, Labcd/Rz;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->DW:Labcd/Qz;

    return-void
.end method

.method private DW(Lio/fabric/sdk/android/services/common/b;)V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/fabric/sdk/android/services/common/c;

    invoke-direct {v1, p0, p1}, Lio/fabric/sdk/android/services/common/c;-><init>(Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;Lio/fabric/sdk/android/services/common/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private FH(Lio/fabric/sdk/android/services/common/b;)V
    .registers 7

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->j6(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v0

    const-string v1, "limit_ad_tracking_enabled"

    const-string v2, "advertising_id"

    if-eqz v0, :cond_20

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->DW:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p1, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-boolean p1, p1, Lio/fabric/sdk/android/services/common/b;->DW:Z

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {v0, p1}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    goto :goto_31

    :cond_20
    iget-object p1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->DW:Labcd/Qz;

    invoke-interface {p1}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {p1, v0}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    :goto_31
    return-void
.end method

.method static synthetic j6(Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;)Lio/fabric/sdk/android/services/common/b;
    .registers 1

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->v5()Lio/fabric/sdk/android/services/common/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j6(Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;Lio/fabric/sdk/android/services/common/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->FH(Lio/fabric/sdk/android/services/common/b;)V

    return-void
.end method

.method private j6(Lio/fabric/sdk/android/services/common/b;)Z
    .registers 2

    if-eqz p1, :cond_c

    iget-object p1, p1, Lio/fabric/sdk/android/services/common/b;->j6:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method private v5()Lio/fabric/sdk/android/services/common/b;
    .registers 5

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->FH()Lio/fabric/sdk/android/services/common/e;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/e;->j6()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->j6(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v1

    const-string v2, "Fabric"

    if-nez v1, :cond_2c

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->Hw()Lio/fabric/sdk/android/services/common/e;

    move-result-object v0

    invoke-interface {v0}, Lio/fabric/sdk/android/services/common/e;->j6()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->j6(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v3, "AdvertisingInfo not present"

    goto :goto_32

    :cond_25
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v3, "Using AdvertisingInfo from Service Provider"

    goto :goto_32

    :cond_2c
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v3, "Using AdvertisingInfo from Reflection Provider"

    :goto_32
    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected DW()Lio/fabric/sdk/android/services/common/b;
    .registers 6

    new-instance v0, Lio/fabric/sdk/android/services/common/b;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->DW:Labcd/Qz;

    invoke-interface {v1}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "advertising_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->DW:Labcd/Qz;

    invoke-interface {v2}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "limit_ad_tracking_enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lio/fabric/sdk/android/services/common/b;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public FH()Lio/fabric/sdk/android/services/common/e;
    .registers 3

    new-instance v0, Lio/fabric/sdk/android/services/common/AdvertisingInfoReflectionStrategy;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->j6:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoReflectionStrategy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public Hw()Lio/fabric/sdk/android/services/common/e;
    .registers 3

    new-instance v0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->j6:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public j6()Lio/fabric/sdk/android/services/common/b;
    .registers 5

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->DW()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->j6(Lio/fabric/sdk/android/services/common/b;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Using AdvertisingInfo from Preference Store"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->DW(Lio/fabric/sdk/android/services/common/b;)V

    return-object v0

    :cond_19
    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->v5()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->FH(Lio/fabric/sdk/android/services/common/b;)V

    return-object v0
.end method
