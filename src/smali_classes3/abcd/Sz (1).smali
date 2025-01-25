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
    .registers 9

    const-string v0, "Failed to close app icon InputStream."

    const-string v1, "app[identifier]"

    iget-object v2, p2, Labcd/Vz;->DW:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v1, "app[name]"

    iget-object v2, p2, Labcd/Vz;->Zo:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v1, "app[display_version]"

    iget-object v2, p2, Labcd/Vz;->FH:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v1, "app[build_version]"

    iget-object v2, p2, Labcd/Vz;->Hw:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    iget v1, p2, Labcd/Vz;->VH:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "app[source]"

    invoke-virtual {p1, v2, v1}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;

    const-string v1, "app[minimum_sdk_version]"

    iget-object v2, p2, Labcd/Vz;->gn:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v1, "app[built_sdk_version]"

    iget-object v2, p2, Labcd/Vz;->u7:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    iget-object v1, p2, Labcd/Vz;->v5:Ljava/lang/String;

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/i;->DW(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "app[instance_identifier]"

    iget-object v2, p2, Labcd/Vz;->v5:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    :cond_46
    iget-object v1, p2, Labcd/Vz;->tp:Labcd/fA;

    if-eqz v1, :cond_b3

    const/4 v1, 0x0

    :try_start_4b
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {v2}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p2, Labcd/Vz;->tp:Labcd/fA;

    iget v3, v3, Labcd/fA;->DW:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "app[icon][hash]"

    iget-object v3, p2, Labcd/Vz;->tp:Labcd/fA;

    iget-object v3, v3, Labcd/fA;->j6:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string v2, "app[icon][data]"

    const-string v3, "icon.png"

    const-string v4, "application/octet-stream"

    invoke-virtual {p1, v2, v3, v4, v1}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Labcd/Hz;

    const-string v2, "app[icon][width]"

    iget-object v3, p2, Labcd/Vz;->tp:Labcd/fA;

    iget v3, v3, Labcd/fA;->FH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;

    const-string v2, "app[icon][height]"

    iget-object v3, p2, Labcd/Vz;->tp:Labcd/fA;

    iget v3, v3, Labcd/fA;->Hw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Labcd/Hz;->j6(Ljava/lang/String;Ljava/lang/Number;)Labcd/Hz;
    :try_end_89
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4b .. :try_end_89} :catch_8c
    .catchall {:try_start_4b .. :try_end_89} :catchall_8a

    goto :goto_ab

    :catchall_8a
    move-exception p1

    goto :goto_af

    :catch_8c
    move-exception v2

    :try_start_8d
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find app icon with resource ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Labcd/Vz;->tp:Labcd/fA;

    iget v5, v5, Labcd/fA;->DW:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "Fabric"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4, v2}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ab
    .catchall {:try_start_8d .. :try_end_ab} :catchall_8a

    :goto_ab
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_b3

    :goto_af
    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/common/i;->j6(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p1

    :cond_b3
    :goto_b3
    iget-object p2, p2, Labcd/Vz;->EQ:Ljava/util/Collection;

    if-eqz p2, :cond_de

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_bb
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/fabric/sdk/android/l;

    invoke-virtual {p0, v0}, Labcd/Sz;->DW(Lio/fabric/sdk/android/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/fabric/sdk/android/l;->FH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    invoke-virtual {p0, v0}, Labcd/Sz;->j6(Lio/fabric/sdk/android/l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/fabric/sdk/android/l;->j6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Labcd/Hz;->v5(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    goto :goto_bb

    :cond_de
    return-object p1
.end method

.method private j6(Labcd/Hz;Labcd/Vz;)Labcd/Hz;
    .registers 4

    const-string v0, "X-CRASHLYTICS-API-KEY"

    iget-object p2, p2, Labcd/Vz;->j6:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    const-string p2, "X-CRASHLYTICS-API-CLIENT-TYPE"

    const-string v0, "android"

    invoke-virtual {p1, p2, v0}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    iget-object p2, p0, Lio/fabric/sdk/android/services/common/a;->Zo:Lio/fabric/sdk/android/Kit;

    invoke-virtual {p2}, Lio/fabric/sdk/android/Kit;->getVersion()Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-CRASHLYTICS-API-CLIENT-VERSION"

    invoke-virtual {p1, v0, p2}, Labcd/Hz;->FH(Ljava/lang/String;Ljava/lang/String;)Labcd/Hz;

    return-object p1
.end method


# virtual methods
.method DW(Lio/fabric/sdk/android/l;)Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lio/fabric/sdk/android/l;->DW()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "app[build][libraries][%s][version]"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method j6(Lio/fabric/sdk/android/l;)Ljava/lang/String;
    .registers 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lio/fabric/sdk/android/l;->DW()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "app[build][libraries][%s][type]"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Vz;)Z
    .registers 7

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->j6()Labcd/Hz;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Labcd/Sz;->j6(Labcd/Hz;Labcd/Vz;)Labcd/Hz;

    invoke-direct {p0, v0, p1}, Labcd/Sz;->DW(Labcd/Hz;Labcd/Vz;)Labcd/Hz;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending app info to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/fabric/sdk/android/services/common/a;->DW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fabric"

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Labcd/Vz;->tp:Labcd/fA;

    if-eqz v1, :cond_70

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon hash is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Labcd/Vz;->tp:Labcd/fA;

    iget-object v4, v4, Labcd/fA;->j6:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App icon size is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Labcd/Vz;->tp:Labcd/fA;

    iget v4, v4, Labcd/fA;->FH:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Labcd/Vz;->tp:Labcd/fA;

    iget p1, p1, Labcd/fA;->Hw:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    invoke-virtual {v0}, Labcd/Hz;->VH()I

    move-result p1

    const-string v1, "POST"

    invoke-virtual {v0}, Labcd/Hz;->EQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    const-string v1, "Create"

    goto :goto_85

    :cond_83
    const-string v1, "Update"

    :goto_85
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app request ID: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "X-REQUEST-ID"

    invoke-virtual {v0, v1}, Labcd/Hz;->Hw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lio/fabric/sdk/android/services/common/A;->j6(I)I

    move-result p1

    if-nez p1, :cond_c6

    const/4 p1, 0x1

    goto :goto_c7

    :cond_c6
    const/4 p1, 0x0

    :goto_c7
    return p1
.end method
