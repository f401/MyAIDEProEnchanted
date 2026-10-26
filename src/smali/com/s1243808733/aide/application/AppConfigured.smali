.class public Lcom/s1243808733/aide/application/AppConfigured;
.super Ljava/lang/Object;
.source "AppConfigured.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/application/AppConfigured$VERSION;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 3

    .line 18
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor_tabs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    invoke-static {}, Lcom/s1243808733/aide/application/AppConfigured;->initWhatsNewDialog()V

    .line 22
    invoke-static {}, Lcom/s1243808733/aide/application/AppConfigured;->initBase()V

    return-void
.end method

.method private static initBase()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    const-string v1, "app_configured_version"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget v2, Lcom/s1243808733/aide/application/AppConfigured$VERSION;->BASE:I

    if-ge v1, v2, :cond_0

    .line 29
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/s1243808733/aide/application/AppConfigured;->initDefaultTheme(Landroid/content/SharedPreferences$Editor;)V

    .line 31
    invoke-static {v0}, Lcom/s1243808733/aide/application/AppConfigured;->initJavaNewLine(Landroid/content/SharedPreferences$Editor;)V

    .line 32
    const-string v1, "editor_font_size"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    const-string v1, "max_single_imports"

    const-string v2, "100"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    const-string v1, "app_configured_version"

    sget v2, Lcom/s1243808733/aide/application/AppConfigured$VERSION;->BASE:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static initDefaultTheme(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 56
    const-string v0, "default"

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    .line 57
    const-string v0, "light_theme"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private static initJavaNewLine(Landroid/content/SharedPreferences$Editor;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_1

    .line 71
    new-array v0, v6, [Ljava/lang/String;

    const-string v4, "ADJUST_NEWLINES"

    aput-object v4, v0, v2

    const-string v4, "TYPE_NEWLINE"

    aput-object v4, v0, v1

    const/4 v4, 0x2

    const-string v5, "METHOD_NEWLINE"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "BLOCK_NEWLINE"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "ELSE_NEWLINE"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "CATCH_NEWLINE"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "FINALLY_NEWLINE"

    aput-object v5, v0, v4

    aget-object v0, v0, v3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "java_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    move v0, v1

    :goto_1
    invoke-interface {p0, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static initWhatsNewDialog()V
    .locals 4

    .line 44
    :try_start_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 45
    const-string v1, "WhatsNew"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 48
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 49
    const-string v2, "ShownVersion"

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0
.end method
