.class public Landroidj/support/v4/app/AppLaunchChecker;
.super Ljava/lang/Object;


# static fields
.field private static final KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String; = "startedFromLauncher"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "android.support.AppLaunchChecker"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasStartedFromLauncher(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    const-string v0, "android.support.AppLaunchChecker"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "startedFromLauncher"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onActivityCreate(Landroid/app/Activity;)V
    .registers 5

    const/4 v2, 0x0

    const-string v0, "android.support.AppLaunchChecker"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "startedFromLauncher"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string v2, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_32
    invoke-static {}, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;->getInstance()Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "startedFromLauncher"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidj/support/v4/content/SharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_f
.end method
