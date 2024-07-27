.class Labcd/bA;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lA;


# instance fields
.field private final DW:Labcd/oA;

.field private final FH:Lio/fabric/sdk/android/services/common/k;

.field private final Hw:Labcd/Zz;

.field private final VH:Labcd/Qz;

.field private final Zo:Lio/fabric/sdk/android/Kit;

.field private final gn:Lio/fabric/sdk/android/services/common/l;

.field private final j6:Labcd/pA;

.field private final v5:Labcd/qA;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Labcd/pA;Lio/fabric/sdk/android/services/common/k;Labcd/oA;Labcd/Zz;Labcd/qA;Lio/fabric/sdk/android/services/common/l;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/bA;->Zo:Lio/fabric/sdk/android/Kit;

    iput-object p2, p0, Labcd/bA;->j6:Labcd/pA;

    iput-object p3, p0, Labcd/bA;->FH:Lio/fabric/sdk/android/services/common/k;

    iput-object p4, p0, Labcd/bA;->DW:Labcd/oA;

    iput-object p5, p0, Labcd/bA;->Hw:Labcd/Zz;

    iput-object p6, p0, Labcd/bA;->v5:Labcd/qA;

    iput-object p7, p0, Labcd/bA;->gn:Lio/fabric/sdk/android/services/common/l;

    new-instance v0, Labcd/Rz;

    iget-object v1, p0, Labcd/bA;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-direct {v0, v1}, Labcd/Rz;-><init>(Lio/fabric/sdk/android/Kit;)V

    iput-object v0, p0, Labcd/bA;->VH:Labcd/Qz;

    return-void
.end method

.method private DW(Labcd/kA;)Labcd/mA;
    .registers 7

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Labcd/kA;->DW:Labcd/kA;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Labcd/bA;->Hw:Labcd/Zz;

    invoke-interface {v0}, Labcd/Zz;->j6()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Labcd/bA;->DW:Labcd/oA;

    iget-object v3, p0, Labcd/bA;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v0, v3, v2}, Labcd/oA;->j6(Lio/fabric/sdk/android/services/common/k;Lorg/json/JSONObject;)Labcd/mA;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v3, "Loaded cached settings: "

    invoke-direct {p0, v2, v3}, Labcd/bA;->j6(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/bA;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/k;->j6()J

    move-result-wide v2

    sget-object v4, Labcd/kA;->FH:Labcd/kA;

    invoke-virtual {v4, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Labcd/mA;->j6(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :try_start_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Returning cached settings."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Cached settings have expired."

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v1

    :goto_1
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v3, "Fabric"

    const-string v4, "Failed to get cached settings"

    invoke-interface {v1, v3, v4, v2}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v1

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "Failed to transform cached settings data."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v3, "No cached settings data found."

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private j6(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method DW()Z
    .registers 3

    invoke-virtual {p0}, Labcd/bA;->Hw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Labcd/bA;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method FH()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Labcd/bA;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/i;->J8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->j6([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method Hw()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Labcd/bA;->VH:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6()Labcd/mA;
    .registers 2

    sget-object v0, Labcd/kA;->j6:Labcd/kA;

    invoke-virtual {p0, v0}, Labcd/bA;->j6(Labcd/kA;)Labcd/mA;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/kA;)Labcd/mA;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/bA;->gn:Lio/fabric/sdk/android/services/common/l;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Not fetching settings, because data collection is disabled by Firebase."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Labcd/bA;->DW()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Labcd/bA;->DW(Labcd/kA;)Labcd/mA;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Labcd/bA;->v5:Labcd/qA;

    iget-object v2, p0, Labcd/bA;->j6:Labcd/pA;

    invoke-interface {v1, v2}, Labcd/qA;->j6(Labcd/pA;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Labcd/bA;->DW:Labcd/oA;

    iget-object v3, p0, Labcd/bA;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v2, v3, v1}, Labcd/oA;->j6(Lio/fabric/sdk/android/services/common/k;Lorg/json/JSONObject;)Labcd/mA;

    move-result-object v0

    iget-object v2, p0, Labcd/bA;->Hw:Labcd/Zz;

    iget-wide v4, v0, Labcd/mA;->VH:J

    invoke-interface {v2, v4, v5, v1}, Labcd/Zz;->j6(JLorg/json/JSONObject;)V

    const-string v2, "Loaded settings: "

    invoke-direct {p0, v1, v2}, Labcd/bA;->j6(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/bA;->FH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Labcd/bA;->j6(Ljava/lang/String;)Z

    :cond_3
    if-nez v0, :cond_0

    sget-object v1, Labcd/kA;->FH:Labcd/kA;

    invoke-direct {p0, v1}, Labcd/bA;->DW(Labcd/kA;)Labcd/mA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method j6(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    iget-object v0, p0, Labcd/bA;->VH:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Labcd/bA;->VH:Labcd/Qz;

    invoke-interface {v1, v0}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    move-result v0

    return v0
.end method
