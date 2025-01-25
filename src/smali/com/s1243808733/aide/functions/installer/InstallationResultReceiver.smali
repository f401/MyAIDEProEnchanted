.class public Lcom/s1243808733/aide/functions/installer/InstallationResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallationResultReceiver.java"


# static fields
.field public static final INSTALL_PACKAGE_ACTION:Ljava/lang/String; = "com.s1243808733.aide.functions.installer.INSTALL_PACKAGE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p1, :cond_5b

    if-eqz p2, :cond_5b

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.s1243808733.aide.functions.installer.INSTALL_PACKAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5b

    .line 22
    :cond_11
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 23
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 25
    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    packed-switch v1, :pswitch_data_5c

    goto :goto_5b

    .line 48
    :pswitch_2b  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/s1243808733/aide/functions/installer/Installer;->Error(Ljava/lang/Throwable;)V

    goto :goto_5b

    .line 37
    :pswitch_34  #0x0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5b

    .line 28
    :pswitch_40  #0xffffffff
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 29
    instance-of v0, p2, Landroid/content/Intent;

    if-eqz v0, :cond_5b

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_58

    .line 31
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    :cond_58
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5b
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch -0x1
        :pswitch_40  #ffffffff
        :pswitch_34  #00000000
        :pswitch_2b  #00000001
        :pswitch_2b  #00000002
        :pswitch_2b  #00000003
        :pswitch_2b  #00000004
        :pswitch_2b  #00000005
        :pswitch_2b  #00000006
        :pswitch_2b  #00000007
    .end packed-switch
.end method
