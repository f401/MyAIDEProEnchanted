.class final Lcom/termux/app/TermuxInstaller;
.super Ljava/lang/Object;
.source "TermuxInstaller.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deleteFolder(Ljava/io/File;)V
    .locals 4

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 218
    invoke-static {v3}, Lcom/termux/app/TermuxInstaller;->deleteFolder(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to delete "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "directory "

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "file "

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static determineTermuxArchName()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    .line 201
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 202
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :sswitch_0
    const-string v5, "arm64-v8a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v5, "armeabi-v7a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v5, "x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v5, "x86_64"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    .line 203
    :pswitch_0
    const-string v0, "aarch64"

    .line 206
    :goto_2
    return-object v0

    .line 204
    :pswitch_1
    const-string v0, "arm"

    goto :goto_2

    .line 206
    :pswitch_2
    const-string v0, "i686"

    goto :goto_2

    :pswitch_3
    const-string v0, "x86_64"

    goto :goto_2

    .line 209
    :cond_1
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

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x300b59d9 -> :sswitch_3
        0x1c976 -> :sswitch_2
        0x8ab4d72 -> :sswitch_1
        0x5553f3ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static determineZipUrl()Ljava/net/URL;
    .locals 2
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
    .locals 5

    const/4 v4, 0x0

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

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/termux/app/TermuxService;->PREFIX_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 184
    :goto_0
    return-void

    .line 79
    :cond_0
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

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const-string v1, "bootstrap_error_title"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    const-string v1, "bootstrap_error_not_primary_user_message"

    invoke-static {v1}, Lcom/blankj/utilcode/util/ResourceUtils;->getStringIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/app/TermuxInstaller$1;

    invoke-direct {v1}, Lcom/termux/app/TermuxInstaller$1;-><init>()V

    .line 64
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    const v1, 0x104000a

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static setupStorageSymlinks(Landroid/content/Context;)V
    .locals 1

    .line 228
    new-instance v0, Lcom/termux/app/TermuxInstaller$3;

    invoke-direct {v0, p0}, Lcom/termux/app/TermuxInstaller$3;-><init>(Landroid/content/Context;)V

    .line 274
    invoke-virtual {v0}, Lcom/termux/app/TermuxInstaller$3;->start()V

    return-void
.end method
