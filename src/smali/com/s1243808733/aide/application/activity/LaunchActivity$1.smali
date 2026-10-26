.class Lcom/s1243808733/aide/application/activity/LaunchActivity$1;
.super Lcom/s1243808733/aide/application/activity/Process;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/LaunchActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/LaunchActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    invoke-direct {p0}, Lcom/s1243808733/aide/application/activity/Process;-><init>()V

    return-void
.end method


# virtual methods
.method public canRun()Z
    .locals 3

    .line 133
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_start_launcher"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public run(Lcom/s1243808733/aide/application/activity/Process$Bridge;)V
    .locals 3

    const/4 v2, 0x0

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 111
    const-string v0, "default"

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    instance-of v0, v0, Lcom/s1243808733/aide/application/activity/DarkLaunchActivity;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {v2}, Lcom/s1243808733/aide/util/AIDEUtils;->setIsLightTheme(Z)V

    .line 116
    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/LaunchActivity$1;->this$0:Lcom/s1243808733/aide/application/activity/LaunchActivity;

    instance-of v1, v0, Lcom/s1243808733/aide/application/activity/IndigoLaunchActivity;

    if-eqz v1, :cond_1

    .line 117
    const-string v0, "indigo"

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    .line 127
    :cond_0
    :goto_0
    invoke-static {}, Lcom/s1243808733/util/Utils;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_start_launcher"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    invoke-interface {p1}, Lcom/s1243808733/aide/application/activity/Process$Bridge;->finish()V

    return-void

    .line 118
    :cond_1
    instance-of v1, v0, Lcom/s1243808733/aide/application/activity/TealLaunchActivity;

    if-eqz v1, :cond_2

    .line 119
    const-string v0, "teal"

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    instance-of v0, v0, Lcom/s1243808733/aide/application/activity/RedLaunchActivity;

    if-eqz v0, :cond_3

    .line 121
    const-string v0, "red"

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v0, "default"

    invoke-static {v0}, Lcom/s1243808733/aide/application/AppTheme;->setThemeCode(Ljava/lang/String;)V

    goto :goto_0
.end method
