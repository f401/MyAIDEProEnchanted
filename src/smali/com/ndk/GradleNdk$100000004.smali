.class Lcom/ndk/GradleNdk$100000004;
.super Ljava/lang/Object;
.source "GradleNdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$ac:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ndk/GradleNdk$100000004;->val$ac:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/16 v0, 0x32

    int-to-long v0, v0

    .line 140
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-static {}, Lcom/ndk/GradleNdk;->removeNdk()V

    .line 149
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/cn.aide.pro/files/framework/android-sdk/ndk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 157
    :cond_0
    const-string v0, "chmod -R 777 /data/data/cn.aide.pro/files/framework/android-sdk/ndk"

    invoke-static {v0}, Lcom/ndk/GradleNdk;->access$1000009(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/ndk/GradleNdk$100000004;->val$ac:Landroid/app/Activity;

    const-string v1, "/data/data/cn.aide.pro/files/usr/bin/busybox tar xvJf /data/data/cn.aide.pro/files/Gradle_NDK_24.0.8215888.tar.xz -C /data/data/cn.aide.pro/files/framework/android-sdk/ndk"

    invoke-static {v0, v1}, Lcom/ndk/GradleNdk;->access$1000010(Landroid/app/Activity;Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/cn.aide.pro/files/framework/android-sdk/ndk/24.0.8215888/toolchains/llvm/prebuilt/linux-x86_64"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    const-string v0, "/data/data/cn.aide.pro/files/usr/bin/busybox ln -s /data/data/cn.aide.pro/files/framework/android-sdk/ndk/24.0.8215888/toolchains/llvm/prebuilt/linux-aarch64 /data/data/cn.aide.pro/files/framework/android-sdk/ndk/24.0.8215888/toolchains/llvm/prebuilt/linux-x86_64"

    invoke-static {v0}, Lcom/ndk/GradleNdk;->access$1000009(Ljava/lang/String;)V

    .line 175
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/cn.aide.pro/files/framework/android-sdk/ndk/24.0.8215888/prebuilt/linux-x86_64"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    const-string v0, "/data/data/cn.aide.pro/files/usr/bin/busybox ln -s /data/data/cn.aide.pro/files/framework/android-sdk/ndk/24.0.8215888/prebuilt/linux-aarch64 /data/data/cn.aide.pro/files/framework/android-sdk/ndk/24.0.8215888/prebuilt/linux-x86_64"

    invoke-static {v0}, Lcom/ndk/GradleNdk;->access$1000009(Ljava/lang/String;)V

    .line 186
    :cond_2
    const-string v0, "chmod -R 777 /data/data/cn.aide.pro/files/framework/android-sdk/ndk"

    invoke-static {v0}, Lcom/ndk/GradleNdk;->access$1000009(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/ndk/GradleNdk;->access$L1000000()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/ndk/GradleNdk;->access$1000015(Landroid/app/Dialog;)V

    .line 190
    iget-object v0, p0, Lcom/ndk/GradleNdk$100000004;->val$ac:Landroid/app/Activity;

    new-instance v1, Lcom/ndk/GradleNdk$100000004$100000003;

    invoke-direct {v1, p0, v0}, Lcom/ndk/GradleNdk$100000004$100000003;-><init>(Lcom/ndk/GradleNdk$100000004;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 140
    :catch_0
    move-exception v0

    goto :goto_0
.end method
