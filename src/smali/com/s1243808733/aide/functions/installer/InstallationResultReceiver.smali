.class public Lcom/s1243808733/aide/functions/installer/InstallationResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallationResultReceiver.java"


# static fields
.field public static final INSTALL_PACKAGE_ACTION:Ljava/lang/String; = "com.s1243808733.aide.functions.installer.INSTALL_PACKAGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/high16 v4, 0x10000000

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.s1243808733.aide.functions.installer.INSTALL_PACKAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string v2, "android.content.pm.extra.STATUS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 25
    const-string v3, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 29
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v4

    if-eq v1, v4, :cond_2

    .line 31
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    :pswitch_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/s1243808733/aide/functions/installer/Installer;->Error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
