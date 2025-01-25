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
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/bA;->Zo:Lio/fabric/sdk/android/Kit;

    iput-object p2, p0, Labcd/bA;->j6:Labcd/pA;

    iput-object p3, p0, Labcd/bA;->FH:Lio/fabric/sdk/android/services/common/k;

    iput-object p4, p0, Labcd/bA;->DW:Labcd/oA;

    iput-object p5, p0, Labcd/bA;->Hw:Labcd/Zz;

    iput-object p6, p0, Labcd/bA;->v5:Labcd/qA;

    iput-object p7, p0, Labcd/bA;->gn:Lio/fabric/sdk/android/services/common/l;

    new-instance p2, Labcd/Rz;

    invoke-direct {p2, p1}, Labcd/Rz;-><init>(Lio/fabric/sdk/android/Kit;)V

    iput-object p2, p0, Labcd/bA;->VH:Labcd/Qz;

    return-void
.end method

.method private DW(Labcd/kA;)Labcd/mA;
    .registers 8

    const-string v0, "Fabric"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Labcd/kA;->DW:Labcd/kA;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    iget-object v2, p0, Labcd/bA;->Hw:Labcd/Zz;

    invoke-interface {v2}, Labcd/Zz;->j6()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_59

    iget-object v3, p0, Labcd/bA;->DW:Labcd/oA;

    iget-object v4, p0, Labcd/bA;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v3, v4, v2}, Labcd/oA;->j6(Lio/fabric/sdk/android/services/common/k;Lorg/json/JSONObject;)Labcd/mA;

    move-result-object v3

    if-eqz v3, :cond_4f

    const-string v4, "Loaded cached settings: "

    invoke-direct {p0, v2, v4}, Labcd/bA;->j6(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v2, p0, Labcd/bA;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v2}, Lio/fabric/sdk/android/services/common/k;->j6()J

    move-result-wide v4

    sget-object v2, Labcd/kA;->FH:Labcd/kA;

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    invoke-virtual {v3, v4, v5}, Labcd/mA;->j6(J)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_41

    :cond_37
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v2, "Cached settings have expired."

    :goto_3d
    invoke-interface {p1, v0, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_40} :catch_60

    goto :goto_6a

    :cond_41
    :goto_41
    :try_start_41
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v1, "Returning cached settings."

    invoke-interface {p1, v0, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_4c

    move-object v1, v3

    goto :goto_6a

    :catch_4c
    move-exception p1

    move-object v1, v3

    goto :goto_61

    :cond_4f
    :try_start_4f
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v2, "Failed to transform cached settings data."

    invoke-interface {p1, v0, v2, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    :cond_59
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v2, "No cached settings data found."
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5f} :catch_60

    goto :goto_3d

    :catch_60
    move-exception p1

    :goto_61
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Failed to get cached settings"

    invoke-interface {v2, v0, v3, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    return-object v1
.end method

.method private j6(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v1, p0, Labcd/bA;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->J8(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

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
    .registers 7

    iget-object v0, p0, Labcd/bA;->gn:Lio/fabric/sdk/android/services/common/l;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v0

    const-string v1, "Fabric"

    const/4 v2, 0x0

    if-nez v0, :cond_15

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    const-string v0, "Not fetching settings, because data collection is disabled by Firebase."

    invoke-interface {p1, v1, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_15
    :try_start_15
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Labcd/bA;->DW()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-direct {p0, p1}, Labcd/bA;->DW(Labcd/kA;)Labcd/mA;

    move-result-object p1

    move-object v2, p1

    :cond_26
    if-nez v2, :cond_4d

    iget-object p1, p0, Labcd/bA;->v5:Labcd/qA;

    iget-object v0, p0, Labcd/bA;->j6:Labcd/pA;

    invoke-interface {p1, v0}, Labcd/qA;->j6(Labcd/pA;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_4d

    iget-object v0, p0, Labcd/bA;->DW:Labcd/oA;

    iget-object v3, p0, Labcd/bA;->FH:Lio/fabric/sdk/android/services/common/k;

    invoke-interface {v0, v3, p1}, Labcd/oA;->j6(Lio/fabric/sdk/android/services/common/k;Lorg/json/JSONObject;)Labcd/mA;

    move-result-object v2

    iget-object v0, p0, Labcd/bA;->Hw:Labcd/Zz;

    iget-wide v3, v2, Labcd/mA;->VH:J

    invoke-interface {v0, v3, v4, p1}, Labcd/Zz;->j6(JLorg/json/JSONObject;)V

    const-string v0, "Loaded settings: "

    invoke-direct {p0, p1, v0}, Labcd/bA;->j6(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {p0}, Labcd/bA;->FH()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/bA;->j6(Ljava/lang/String;)Z

    :cond_4d
    if-nez v2, :cond_60

    sget-object p1, Labcd/kA;->FH:Labcd/kA;

    invoke-direct {p0, p1}, Labcd/bA;->DW(Labcd/kA;)Labcd/mA;

    move-result-object v2
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_55} :catch_56

    goto :goto_60

    :catch_56
    move-exception p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v3, "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."

    invoke-interface {v0, v1, v3, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_60
    :goto_60
    return-object v2
.end method

.method j6(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Labcd/bA;->VH:Labcd/Qz;

    invoke-interface {v0}, Labcd/Qz;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "existing_instance_identifier"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Labcd/bA;->VH:Labcd/Qz;

    invoke-interface {p1, v0}, Labcd/Qz;->j6(Landroid/content/SharedPreferences$Editor;)Z

    move-result p1

    return p1
.end method
