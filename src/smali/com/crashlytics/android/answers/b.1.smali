.class public Lcom/crashlytics/android/answers/b;
.super Lio/fabric/sdk/android/Kit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field DW:Lcom/crashlytics/android/answers/F;

.field j6:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lio/fabric/sdk/android/Kit;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/answers/b;->j6:Z

    return-void
.end method


# virtual methods
.method Zo()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/i;->DW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Boolean;
    .registers 6

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v1, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Analytics collection disabled, because data collection is disabled by Firebase."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/F;->DW()V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Labcd/jA;->DW()Labcd/jA;

    move-result-object v1

    invoke-virtual {v1}, Labcd/jA;->j6()Labcd/mA;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to retrieve settings"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error dealing with settings"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, v1, Labcd/mA;->Hw:Labcd/eA;

    iget-boolean v2, v2, Labcd/eA;->Hw:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Analytics collection enabled"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    iget-object v1, v1, Labcd/mA;->v5:Labcd/Tz;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/b;->Zo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/crashlytics/android/answers/F;->j6(Labcd/Tz;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Analytics collection disabled"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/F;->DW()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/b;->doInBackground()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 2

    const-string v0, "com.crashlytics.sdk.android:answers"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.4.7.32"

    return-object v0
.end method

.method public j6(Lio/fabric/sdk/android/services/common/j$a;)V
    .registers 5

    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j;->j6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/F;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j6(Lio/fabric/sdk/android/services/common/j$b;)V
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/F;->j6(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()Z
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v4, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    const-string v5, "0.0"

    :goto_0
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x9

    if-lt v7, v8, :cond_1

    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    :goto_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdManager()Lio/fabric/sdk/android/services/common/v;

    move-result-object v3

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/crashlytics/android/answers/F;->j6(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Lio/fabric/sdk/android/services/common/v;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/answers/F;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    iget-object v1, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/F;->FH()V

    new-instance v1, Lio/fabric/sdk/android/services/common/u;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/common/u;-><init>()V

    invoke-virtual {v1, v2}, Lio/fabric/sdk/android/services/common/u;->v5(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/crashlytics/android/answers/b;->j6:Z

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error retrieving app properties"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
