.class Lcom/crashlytics/android/core/na;
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
    .registers 15

    const-string v0, "report[identifier]"

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->Hw()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    const-string v1, "application/octet-stream"

    const-string v2, "CrashlyticsCore"

    const-string v3, " to report "

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4b

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding single file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->FH()Ljava/io/File;

    move-result-object p2

    const-string v2, "report[file]"

    invoke-virtual {p1, v2, v0, v1, p2}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Labcd/Hz;

    return-object p1

    :cond_4b
    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->Hw()[Ljava/io/File;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_52
    if-ge v6, v5, :cond_9d

    aget-object v8, v0, v6

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->DW()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "report[file"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10, v1, v8}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Labcd/Hz;

    add-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_52

    :cond_9d
    return-object p1
.end method

.method private j6(Labcd/Hz;Lcom/crashlytics/android/core/ja;)Labcd/Hz;
    .registers 5

    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Lcom/crashlytics/android/core/ja;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-virtual {p1, v1, v0}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    iget-object p2, p2, Lcom/crashlytics/android/core/ja;->DW:Lcom/crashlytics/android/core/Ka;

    invoke-interface {p2}, Lcom/crashlytics/android/core/Ka;->j6()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_27
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p1, v0}, Labcd/Hz;->j6(Ljava/util/Map$Entry;)Labcd/Hz;

    goto :goto_27

    :cond_37
    return-object p1
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/core/ja;)Z
    .registers 7

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->j6()Labcd/Hz;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/core/na;->j6(Labcd/Hz;Lcom/crashlytics/android/core/ja;)Labcd/Hz;

    iget-object p1, p1, Lcom/crashlytics/android/core/ja;->DW:Lcom/crashlytics/android/core/Ka;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/core/na;->j6(Labcd/Hz;Lcom/crashlytics/android/core/Ka;)Labcd/Hz;

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

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create report request ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "X-REQUEST-ID"

    invoke-virtual {v0, v4}, Labcd/Hz;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

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

    if-nez p1, :cond_6c

    const/4 p1, 0x1

    goto :goto_6d

    :cond_6c
    const/4 p1, 0x0

    :goto_6d
    return p1
.end method
