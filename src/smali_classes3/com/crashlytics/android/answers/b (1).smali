.class public Lcom/crashlytics/android/answers/b;
.super Lio/fabric/sdk/android/Kit;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/Kit<",
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

    const-string v0, "Answers"

    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lio/fabric/sdk/android/services/common/l;->j6(Landroid/content/Context;)Lio/fabric/sdk/android/services/common/l;

    move-result-object v1

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/l;->j6()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v1, :cond_26

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v3, "Analytics collection disabled, because data collection is disabled by Firebase."

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/F;->DW()V

    return-object v2

    :cond_26
    :try_start_26
    invoke-static {}, Labcd/jA;->DW()Labcd/jA;

    move-result-object v1

    invoke-virtual {v1}, Labcd/jA;->j6()Labcd/mA;

    move-result-object v1

    if-nez v1, :cond_3a

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v3, "Failed to retrieve settings"

    invoke-interface {v1, v0, v3}, Lio/fabric/sdk/android/m;->DW(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3a
    iget-object v3, v1, Labcd/mA;->Hw:Labcd/eA;

    iget-boolean v3, v3, Labcd/eA;->Hw:Z

    if-eqz v3, :cond_5a

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "Analytics collection enabled"

    invoke-interface {v3, v0, v4}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    iget-object v1, v1, Labcd/mA;->v5:Labcd/Tz;

    invoke-virtual {p0}, Lcom/crashlytics/android/answers/b;->Zo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/crashlytics/android/answers/F;->j6(Labcd/Tz;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_5a
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v1

    const-string v3, "Analytics collection disabled"

    invoke-interface {v1, v0, v3}, Lio/fabric/sdk/android/m;->Hw(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/F;->DW()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_68} :catch_69

    return-object v2

    :catch_69
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v3

    const-string v4, "Error dealing with settings"

    invoke-interface {v3, v0, v4, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
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
    .registers 4

    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j;->DW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j;->j6()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/crashlytics/android/answers/F;->j6(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public j6(Lio/fabric/sdk/android/services/common/j$b;)V
    .registers 3

    iget-object v0, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/j;->DW()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/answers/F;->j6(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method protected onPreExecute()Z
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_56

    if-nez v5, :cond_1e

    const-string v5, "0.0"

    goto :goto_20

    :cond_1e
    :try_start_1e
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_20
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v6, v7, :cond_2a

    iget-wide v1, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    :goto_28
    move-wide v6, v1

    goto :goto_3a

    :cond_2a
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    goto :goto_28

    :goto_3a
    invoke-virtual {p0}, Lio/fabric/sdk/android/Kit;->getIdManager()Lio/fabric/sdk/android/services/common/v;

    move-result-object v3

    move-object v1, p0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lcom/crashlytics/android/answers/F;->j6(Lio/fabric/sdk/android/Kit;Landroid/content/Context;Lio/fabric/sdk/android/services/common/v;Ljava/lang/String;Ljava/lang/String;J)Lcom/crashlytics/android/answers/F;

    move-result-object v1

    iput-object v1, p0, Lcom/crashlytics/android/answers/b;->DW:Lcom/crashlytics/android/answers/F;

    invoke-virtual {v1}, Lcom/crashlytics/android/answers/F;->FH()V

    new-instance v1, Lio/fabric/sdk/android/services/common/u;

    invoke-direct {v1}, Lio/fabric/sdk/android/services/common/u;-><init>()V

    invoke-virtual {v1, v8}, Lio/fabric/sdk/android/services/common/u;->v5(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/crashlytics/android/answers/b;->j6:Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_54} :catch_56

    const/4 v0, 0x1

    return v0

    :catch_56
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/m;

    move-result-object v2

    const-string v3, "Answers"

    const-string v4, "Error retrieving app properties"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/m;->FH(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method
