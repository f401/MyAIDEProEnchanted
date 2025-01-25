.class Labcd/dA;
.super Lio/fabric/sdk/android/services/common/a;

# interfaces
.implements Labcd/qA;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V
    .registers 11

    sget-object v5, Labcd/Fz;->j6:Labcd/Fz;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Labcd/dA;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Labcd/Fz;)V

    return-void
.end method

.method constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Labcd/Fz;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Labcd/Fz;)V

    return-void
.end method

.method private DW(Labcd/pA;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/pA;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "build_version"

    iget-object v2, p1, Labcd/pA;->gn:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "display_version"

    iget-object v2, p1, Labcd/pA;->VH:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Labcd/pA;->u7:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Labcd/pA;->tp:Ljava/lang/String;

    if-eqz v1, :cond_27

    const-string v2, "icon_hash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    iget-object p1, p1, Labcd/pA;->Zo:Ljava/lang/String;

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "instance"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-object v0
.end method

.method private DW(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse settings JSON from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fabric"

    invoke-interface {v1, v3, v2, v0}, Lio/fabric/sdk/android/m;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v3, p1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private j6(Labcd/Hz;Labcd/pA;)Labcd/Hz;
    .registers 5

    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Labcd/pA;->j6:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Labcd/dA;->j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-direct {p0, p1, v0, v1}, Labcd/dA;->j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-direct {p0, p1, v1, v0}, Labcd/dA;->j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-direct {p0, p1, v0, v1}, Labcd/dA;->j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-DEVICE-MODEL"

    iget-object v1, p2, Labcd/pA;->DW:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Labcd/dA;->j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-OS-BUILD-VERSION"

    iget-object v1, p2, Labcd/pA;->FH:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Labcd/dA;->j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-OS-DISPLAY-VERSION"

    iget-object v1, p2, Labcd/pA;->Hw:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Labcd/dA;->j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-CRASHLYTICS-INSTALLATION-ID"

    iget-object p2, p2, Labcd/pA;->v5:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Labcd/dA;->j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private j6(Labcd/Hz;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p3, :cond_5

    invoke-virtual {p1, p2, p3}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    :cond_5
    return-void
.end method


# virtual methods
.method j6(Labcd/Hz;)Lorg/json/JSONObject;
    .registers 6

    invoke-virtual {p1}, Labcd/Hz;->VH()I

    move-result v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings result was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fabric"

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Labcd/dA;->j6(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Labcd/Hz;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Labcd/dA;->DW(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_4a

    :cond_2d
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to retrieve settings from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_4a
    return-object p1
.end method

.method public j6(Labcd/pA;)Lorg/json/JSONObject;
    .registers 10

    const-string v0, "X-REQUEST-ID"

    const-string v1, "Settings request ID: "

    const-string v2, "Fabric"

    const/4 v3, 0x0

    :try_start_7
    invoke-direct {p0, p1}, Labcd/dA;->DW(Labcd/pA;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/fabric/sdk/android/services/common/a;->j6(Ljava/util/Map;)Labcd/Hz;

    move-result-object v5
    :try_end_f
    .catch Labcd/Hz$c; {:try_start_7 .. :try_end_f} :catch_5d
    .catchall {:try_start_7 .. :try_end_f} :catchall_5b

    :try_start_f
    invoke-direct {p0, v5, p1}, Labcd/dA;->j6(Labcd/Hz;Labcd/pA;)Labcd/Hz;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting settings from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->DW()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Settings query params were: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Labcd/dA;->j6(Labcd/Hz;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_4a
    .catch Labcd/Hz$c; {:try_start_f .. :try_end_4a} :catch_59
    .catchall {:try_start_f .. :try_end_4a} :catchall_56

    if-eqz v5, :cond_84

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_73

    :catchall_56
    move-exception p1

    move-object v3, v5

    goto :goto_85

    :catch_59
    move-exception p1

    goto :goto_5f

    :catchall_5b
    move-exception p1

    goto :goto_85

    :catch_5d
    move-exception p1

    move-object v5, v3

    :goto_5f
    :try_start_5f
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    const-string v6, "Settings request failed."

    invoke-interface {v4, v2, v6, p1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_56

    if-eqz v5, :cond_84

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Labcd/Hz;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    return-object v3

    :goto_85
    if-eqz v3, :cond_a1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Labcd/Hz;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    throw p1
.end method

.method j6(I)Z
    .registers 3

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_13

    const/16 v0, 0xc9

    if-eq p1, v0, :cond_13

    const/16 v0, 0xca

    if-eq p1, v0, :cond_13

    const/16 v0, 0xcb

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method
