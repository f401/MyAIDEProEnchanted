.class abstract Labcd/Sz;
.super Lio/fabric/sdk/android/services/common/a;

# interfaces
.implements Labcd/Xz;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Labcd/Fz;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/common/a;-><init>(Lio/fabric/sdk/android/Kit;Ljava/lang/String;Ljava/lang/String;Labcd/Jz;Labcd/Fz;)V

    return-void
.end method

.method private DW(Labcd/Hz;Labcd/Vz;)Labcd/Hz;
    .registers 8

    const/4 v2, 0x0

    const-string v0, "app[identifier]"

    iget-object v1, p2, Labcd/Vz;->DW:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "app[name]"

    iget-object v1, p2, Labcd/Vz;->Zo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "app[display_version]"

    iget-object v1, p2, Labcd/Vz;->FH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "app[build_version]"

    iget-object v1, p2, Labcd/Vz;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "app[source]"

    iget v1, p2, Labcd/Vz;->VH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;

    const-string v0, "app[minimum_sdk_version]"

    iget-object v1, p2, Labcd/Vz;->gn:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "app[built_sdk_version]"

    iget-object v1, p2, Labcd/Vz;->u7:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    iget-object v0, p2, Labcd/Vz;->v5:Ljava/lang/String;

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app[instance_identifier]"

    iget-object v1, p2, Labcd/Vz;->v5:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    :cond_0
    iget-object v0, p2, Labcd/Vz;->tp:Labcd/fA;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p2, Labcd/Vz;->tp:Labcd/fA;

    iget v1, v1, Labcd/fA;->DW:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    const-string v1, "app[icon][hash]"

    iget-object v2, p2, Labcd/Vz;->tp:Labcd/fA;

    iget-object v2, v2, Labcd/fA;->j6:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v1, "app[icon][data]"

    const-string v2, "icon.png"

    const-string v3, "application/octet-stream"

    invoke-virtual {p1, v1, v2, v3, v0}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Labcd/Hz;

    const-string v1, "app[icon][width]"

    iget-object v2, p2, Labcd/Vz;->tp:Labcd/fA;

    iget v2, v2, Labcd/fA;->FH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;

    const-string v1, "app[icon][height]"

    iget-object v2, p2, Labcd/Vz;->tp:Labcd/fA;

    iget v2, v2, Labcd/fA;->Hw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const-string v1, "Failed to close app icon InputStream."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p2, Labcd/Vz;->EQ:Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/l;

    invoke-virtual {p0, v0}, Labcd/Sz;->DW(Lio/fabric/sdk/android/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/fabric/sdk/android/l;->FH()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    invoke-virtual {p0, v0}, Labcd/Sz;->j6(Lio/fabric/sdk/android/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/fabric/sdk/android/l;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v0, v2

    :goto_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find app icon with resource ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Labcd/Vz;->tp:Labcd/fA;

    iget v4, v4, Labcd/fA;->DW:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "Fabric"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_3
    const-string v0, "Failed to close app icon InputStream."

    invoke-static {v2, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object p1

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3
.end method

.method private j6(Labcd/Hz;Labcd/Vz;)Labcd/Hz;
    .registers 5

    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object v1, p2, Labcd/Vz;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    iget-object v1, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v1}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p1
.end method


# virtual methods
.method DW(Lio/fabric/sdk/android/l;)Ljava/lang/String;
    .registers 7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "app[build][libraries][%s][version]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/fabric/sdk/android/l;->DW()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j6(Lio/fabric/sdk/android/l;)Ljava/lang/String;
    .registers 7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "app[build][libraries][%s][type]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lio/fabric/sdk/android/l;->DW()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Vz;)Z
    .registers 7

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->j6()Labcd/Hz;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Labcd/Sz;->j6(Labcd/Hz;Labcd/Vz;)Labcd/Hz;

    invoke-direct {p0, v1, p1}, Labcd/Sz;->DW(Labcd/Hz;Labcd/Vz;)Labcd/Hz;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending app info to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Fabric"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Labcd/Vz;->tp:Labcd/fA;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App icon hash is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Labcd/Vz;->tp:Labcd/fA;

    iget-object v3, v3, Labcd/fA;->j6:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Fabric"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App icon size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Labcd/Vz;->tp:Labcd/fA;

    iget v3, v3, Labcd/fA;->FH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Labcd/Vz;->tp:Labcd/fA;

    iget v3, v3, Labcd/fA;->Hw:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Fabric"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Labcd/Hz;->VH()I

    move-result v2

    const-string v0, "POST"

    invoke-virtual {v1}, Labcd/Hz;->EQ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Create"

    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " app request ID: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "X-REQUEST-ID"

    invoke-virtual {v1, v0}, Labcd/Hz;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Fabric"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Fabric"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lio/fabric/sdk/android/services/common/A;->j6(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const-string v0, "Update"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
