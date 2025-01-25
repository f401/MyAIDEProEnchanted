.class Lcom/crashlytics/android/core/Aa;
.super Lio/fabric/sdk/android/services/common/a;

# interfaces
.implements Lcom/crashlytics/android/core/ka;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;)V
    .registers 11

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
    .registers 9

    const-string v0, "report_id"

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->Hw()[Ljava/io/File;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_b9

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "minidump"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "application/octet-stream"

    if-eqz v3, :cond_2c

    const-string v3, "minidump_file"

    :goto_23
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5, v4, v2}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Labcd/Hz;

    goto/16 :goto_b5

    :cond_2c
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "metadata"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "crash_meta_file"

    goto :goto_23

    :cond_3b
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "binaryImages"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const-string v3, "binary_images_file"

    goto :goto_23

    :cond_4a
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "session"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    const-string v3, "session_meta_file"

    goto :goto_23

    :cond_59
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "app"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string v3, "app_meta_file"

    goto :goto_23

    :cond_68
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "device"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const-string v3, "device_meta_file"

    goto :goto_23

    :cond_77
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "os"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    const-string v3, "os_meta_file"

    goto :goto_23

    :cond_86
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "user"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    const-string v3, "user_meta_file"

    goto :goto_23

    :cond_95
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "logs"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    const-string v3, "logs_file"

    goto/16 :goto_23

    :cond_a5
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "keys"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    const-string v3, "keys_file"

    goto/16 :goto_23

    :cond_b5
    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    :cond_b9
    return-object p1
.end method

.method private j6(Labcd/Hz;Ljava/lang/String;)Labcd/Hz;
    .registers 5

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

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-virtual {p1, v1, v0}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "X-CRASHLYTICS-API-KEY"

    invoke-virtual {p1, v0, p2}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p1
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/ja;)Z
    .registers 6

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->j6()Labcd/Hz;

    move-result-object v0

    iget-object v1, p1, Lcom/crashlytics/android/core/ja;->j6:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/core/Aa;->j6(Labcd/Hz;Ljava/lang/String;)Labcd/Hz;

    iget-object p1, p1, Lcom/crashlytics/android/core/ja;->DW:Lcom/crashlytics/android/core/Ka;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/core/Aa;->j6(Labcd/Hz;Lcom/crashlytics/android/core/Ka;)Labcd/Hz;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending report to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->DW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    invoke-interface {p1, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Labcd/Hz;->VH()I

    move-result p1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result was: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/A;->j6(I)I

    move-result p1

    if-nez p1, :cond_50

    const/4 p1, 0x1

    goto :goto_51

    :cond_50
    const/4 p1, 0x0

    :goto_51
    return p1
.end method
