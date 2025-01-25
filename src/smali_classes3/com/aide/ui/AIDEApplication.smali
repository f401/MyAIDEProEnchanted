.class public Lcom/aide/ui/AIDEApplication;
.super Landroid/support/multidex/MultiDexApplication;


# annotations
.annotation runtime Labcd/xu;
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lcom/aide/ui/AIDEApplication;

    const-wide v1, 0xec8c66f82ce9edbL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x4b2a8f44bc36b249L  # -3.497621503978622E-54

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/AIDEApplication;->j6:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    return-void

    :catchall_11
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/AIDEApplication;->DW:Z

    if-eqz v4, :cond_19

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_19
    throw v3
.end method

.method private DW()Z
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xca9e85ecf73a344L
    .end annotation

    const-wide v0, -0x30241c39bb41206cL  # -5.0459558378428935E76

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEApplication;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v2, :cond_20

    iget-object v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_3c

    xor-int/2addr v0, v5

    return v0

    :cond_3b
    return v5

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEApplication;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    goto :goto_46

    :goto_45
    throw v2

    :goto_46
    goto :goto_45
.end method

.method private j6()V
    .registers 7
    .annotation runtime Labcd/su;
        method = -0x2a521952018c5ed5L
    .end annotation

    const-wide v0, -0x286efe049285cb0dL  # -6.544327973533944E113

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/AIDEApplication;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    new-instance v2, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v2}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [Lio/fabric/sdk/android/Kit;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {p0, v4}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    const-string v2, "Crashlytics initialized"

    invoke-static {v2}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "always_finish_activities"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    const-string v2, "alwaysFinishActivities"

    invoke-static {v2, v3}, Lcom/crashlytics/android/Crashlytics;->setBool(Ljava/lang/String;Z)V

    const-string v2, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/crashlytics/android/Crashlytics;->setInt(Ljava/lang/String;I)V
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/AIDEApplication;->DW:Z

    if-eqz v3, :cond_44

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_44
    throw v2
.end method


# virtual methods
.method public onCreate()V
    .registers 10

    const-wide v1, 0x16db5858385L

    const-wide v7, -0xe06dc98e86ab215L  # -1.0476405788332044E241

    :try_start_a
    const-string v3, "androidRelease"

    const-string v4, "https://backbone-direct.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/dev/probes.zip"

    const-string v5, "https://backbone-cdn.appfour.com/project/SvkPQDcCSkSU4JZRRqsTuw/variant/androidRelease/audience/public/probes.zip"

    const-string v6, "https://backbone-ingest.appfour.com/api/report/v1alpha1/data/project/SvkPQDcCSkSU4JZRRqsTuw"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/aide/ui/AIDEApplication;->j6:Z

    if-eqz v0, :cond_1d

    invoke-static {v7, v8, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1d
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-direct {p0}, Lcom/aide/ui/AIDEApplication;->j6()V

    const-string v0, "com.aide.ui"

    invoke-static {v0}, Lcom/aide/ui/U;->j6(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/aide/ui/AIDEApplication;->DW()Z

    move-result v0

    if-eqz v0, :cond_64

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.ui047"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const v2, 0xa9bd

    const v3, 0x7f070076

    const-string v4, "New version of AIDE installed"

    const-string v5, "Check out what\'s new!"

    invoke-static {p0}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6

    :goto_46
    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/aide/ui/marketing/d;->j6(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_64

    :cond_4b
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.web047"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const v2, 0xa9bd

    const v3, 0x7f07007d

    const-string v4, "New version of AIDE Web installed"

    const-string v5, "Check out what\'s new!"

    invoke-static {p0}, Lcom/aide/ui/MainActivity;->j6(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v6
    :try_end_63
    .catchall {:try_start_a .. :try_end_63} :catchall_65

    goto :goto_46

    :cond_64
    :goto_64
    return-void

    :catchall_65
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/AIDEApplication;->DW:Z

    if-eqz v1, :cond_6d

    invoke-static {v0, v7, v8, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6d
    goto :goto_6f

    :goto_6e
    throw v0

    :goto_6f
    goto :goto_6e
.end method
