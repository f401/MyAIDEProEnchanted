.class public Labcd/Lv;
.super Ljava/lang/Object;


# direct methods
.method public static j6()V
    .registers 4

    invoke-static {}, Lcom/appfour/backbone/api/Api;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Labcd/rw;->Hw()Z

    move-result v0

    if-nez v0, :cond_48

    :try_start_c
    invoke-static {}, Labcd/ApplicationUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "com.android.vending"

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {}, Labcd/rw;->Zo()V

    goto :goto_48

    :cond_28
    invoke-static {v0}, Lcom/android/installreferrer/api/b;->j6(Landroid/content/Context;)Lcom/android/installreferrer/api/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/installreferrer/api/b$a;->j6()Lcom/android/installreferrer/api/b;

    move-result-object v0

    new-instance v1, Labcd/Kv;

    invoke-direct {v1, v0}, Labcd/Kv;-><init>(Lcom/android/installreferrer/api/b;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/b;->j6(Lcom/android/installreferrer/api/d;)V
    :try_end_38
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_c .. :try_end_38} :catch_40
    .catchall {:try_start_c .. :try_end_38} :catchall_39

    goto :goto_48

    :catchall_39
    move-exception v0

    const-string v1, "Runtime Error"

    invoke-static {v1, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    :catch_40
    move-exception v0

    const-string v1, "PlayInstallReferrer"

    const-string v2, "Class not found"

    invoke-static {v1, v2, v0}, Labcd/yw;->j6(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    return-void
.end method
