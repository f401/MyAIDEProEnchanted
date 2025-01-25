.class final Lcom/termux/app/TermuxInstaller;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deleteFolder(Ljava/io/File;)V
    .registers 5

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 217
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 218
    invoke-static {v3}, Lcom/termux/app/TermuxInstaller;->deleteFolder(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 221
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "directory "

    goto :goto_2a

    :cond_28
    const-string v1, "file "

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    return-void
.end method

.method private static determineTermuxArchName()Ljava/lang/String;
    .registers 7

    .line 201
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_51

    aget-object v4, v0, v3

    .line 202
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string v6, "x86_64"

    sparse-switch v5, :sswitch_data_6e

    :goto_15
    goto :goto_40

    :sswitch_16
    const-string v5, "arm64-v8a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_15

    :cond_1f
    const/4 v4, 0x3

    goto :goto_41

    :sswitch_21
    const-string v5, "armeabi-v7a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_15

    :cond_2a
    const/4 v4, 0x2

    goto :goto_41

    :sswitch_2c
    const-string v5, "x86"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_15

    :cond_35
    const/4 v4, 0x1

    goto :goto_41

    :sswitch_37
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_15

    :cond_3e
    const/4 v4, 0x0

    goto :goto_41

    :goto_40
    const/4 v4, -0x1

    :goto_41
    packed-switch v4, :pswitch_data_80

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 203
    :pswitch_47  #0x3
    const-string v0, "aarch64"

    return-object v0

    .line 204
    :pswitch_4a  #0x2
    const-string v0, "arm"

    return-object v0

    .line 206
    :pswitch_4d  #0x1
    const-string v0, "i686"

    return-object v0

    :pswitch_50  #0x0
    return-object v6

    .line 209
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to determine arch from Build.SUPPORTED_ABIS =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 210
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :goto_6b
    throw v1

    :goto_6c
    goto :goto_6b

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x300b59d9 -> :sswitch_37
        0x1c976 -> :sswitch_2c
        0x8ab4d72 -> :sswitch_21
        0x5553f3ec -> :sswitch_16
    .end sparse-switch

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_50  #00000000
        :pswitch_4d  #00000001
        :pswitch_4a  #00000002
        :pswitch_47  #00000003
    .end packed-switch
.end method

.method static determineZipUrl()Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 189
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->determineTermuxArchName()Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://github.com/termux/termux-packages/releases/download/bootstrap-2022.10.16-r1%2Bapt-android-7/bootstrap-aarch64.zip"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static setupIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 8

    .line 58
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 59
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_41

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 79
    :cond_28
    const-string v1, "bootstrap_installer_body"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v4, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 80
    new-instance v2, Lcom/termux/app/TermuxInstaller$2;

    invoke-direct {v2, v0, p0, p1, v1}, Lcom/termux/app/TermuxInstaller$2;-><init>(Ljava/io/File;Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    .line 184
    invoke-virtual {v2}, Lcom/termux/app/TermuxInstaller$2;->start()V

    return-void

    .line 61
    :cond_41
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const-string p0, "bootstrap_error_title"

    invoke-static {p0}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 63
    const-string p1, "bootstrap_error_not_primary_user_message"

    invoke-static {p1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/termux/app/TermuxInstaller$1;

    invoke-direct {p1}, Lcom/termux/app/TermuxInstaller$1;-><init>()V

    .line 64
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 69
    const p1, 0x104000a

    invoke-virtual {p0, p1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static setupStorageSymlinks(Landroid/content/Context;)V
    .registers 2

    .line 228
    new-instance v0, Lcom/termux/app/TermuxInstaller$3;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxInstaller$3;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v0}, Lcom/termux/app/TermuxInstaller$3;->start()V

    return-void
.end method
