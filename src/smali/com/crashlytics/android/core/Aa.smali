.class Lcom/crashlytics/android/core/Aa;
.super Lio/fabric/sdk/android/services/common/a;

# interfaces
.implements Lcom/crashlytics/android/core/ka;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V
    .locals 6

    sget-object v5, Labcd/Fz;->DW:Labcd/Fz;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Labcd/Fz;)V

    return-void
.end method

.method private j6(Labcd/Hz;Lcom/crashlytics/android/core/Ka;)Labcd/Hz;
    .locals 7

    const-string v0, "report_id"

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->Hw()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "minidump"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "minidump_file"

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/octet-stream"

    invoke-virtual {p1, v0, v5, v6, v4}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Labcd/Hz;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "metadata"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "crash_meta_file"

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "binaryImages"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "binary_images_file"

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "session"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "session_meta_file"

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "app"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "app_meta_file"

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "device"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "device_meta_file"

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "os"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "os_meta_file"

    goto :goto_1

    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "user"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "user_meta_file"

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "logs"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "logs_file"

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "keys"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "keys_file"

    goto/16 :goto_1

    :cond_a
    return-object p1
.end method

.method private j6(Labcd/Hz;Ljava/lang/String;)Labcd/Hz;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics Android SDK/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User-Agent"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {p1, v0, p2}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p1
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/ja;)Z
    .locals 4

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->j6()Labcd/Hz;

    move-result-object v0

    iget-object v1, p1, Lcom/crashlytics/android/core/ja;->j6:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/Aa;->j6(Labcd/Hz;Ljava/lang/String;)Labcd/Hz;

    iget-object v1, p1, Lcom/crashlytics/android/core/ja;->DW:Lcom/crashlytics/android/core/Ka;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/Aa;->j6(Labcd/Hz;Lcom/crashlytics/android/core/Ka;)Labcd/Hz;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending report to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "CrashlyticsCore"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/Hz;->VH()I

    move-result v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "CrashlyticsCore"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/A;->j6(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
