.class public Lcom/ndk/GradleNdk;
.super Ljava/lang/Object;
.source "GradleNdk.java"


# static fields
.field private static pd:Landroid/app/ProgressDialog;

.field private static pr:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000005(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ndk/GradleNdk;->downNDK(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000008(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ndk/GradleNdk;->decompressNdk(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000009(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/ndk/GradleNdk;->shell(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000010(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ndk/GradleNdk;->executeResult(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000014(Landroid/app/Activity;)V
    .registers 1

    invoke-static {p0}, Lcom/ndk/GradleNdk;->downingDialog(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1000015(Landroid/app/Dialog;)V
    .registers 1

    invoke-static {p0}, Lcom/ndk/GradleNdk;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$L1000000()Landroid/app/ProgressDialog;
    .registers 1

    sget-object v0, Lcom/ndk/GradleNdk;->pd:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/app/ProgressDialog;)V
    .registers 1

    sput-object p0, Lcom/ndk/GradleNdk;->pd:Landroid/app/ProgressDialog;

    return-void
.end method

.method private static decompressNdk(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 131
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "正在安装NDK，需要几分钟..."

    goto :goto_b

    :cond_9
    const-string p1, "Installing NDK, it will take a few minutes..."

    :goto_b
    invoke-static {p0, p1}, Lcom/ndk/GradleNdk;->loadingDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 133
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/ndk/GradleNdk$100000004;

    invoke-direct {v0, p0}, Lcom/ndk/GradleNdk$100000004;-><init>(Landroid/app/Activity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static dismissDialog(Landroid/app/Dialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_b

    .line 330
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 332
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_b
    return-void
.end method

.method private static downNDK(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    const-string v0, "/data/data/cn.aide.pro/files/Gradle_NDK_24.0.8215888.tar.xz"

    new-instance v1, Lcom/ndk/GradleNdk$100000001;

    invoke-direct {v1, p0}, Lcom/ndk/GradleNdk$100000001;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    :try_start_a
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 84
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 86
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    .line 90
    sget-object v3, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    long-to-int v2, v1

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 92
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 96
    const/16 v2, 0x2000

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 99
    :goto_4a
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5f

    .line 109
    sget-object p1, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-static {p1}, Lcom/ndk/GradleNdk;->dismissDialog(Landroid/app/Dialog;)V

    .line 111
    new-instance p1, Lcom/ndk/GradleNdk$100000002;

    invoke-direct {p1, p0, v0}, Lcom/ndk/GradleNdk$100000002;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6f

    .line 101
    :cond_5f
    invoke-virtual {p1, v2, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v4, v5

    .line 105
    sget-object v5, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v4}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_68} :catch_69

    goto :goto_4a

    .line 123
    :catch_69
    move-exception p0

    sget-object p0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-static {p0}, Lcom/ndk/GradleNdk;->dismissDialog(Landroid/app/Dialog;)V

    :goto_6f
    return-void
.end method

.method private static downingDialog(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 319
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    .line 320
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "正在下载中..."

    goto :goto_12

    :cond_10
    const-string p0, "Downloading..."

    :goto_12
    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    sget-object p0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 322
    sget-object p0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 323
    sget-object p0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private static executeResult(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 262
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 264
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 266
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 268
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 270
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    .line 272
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v1
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_70

    if-eqz v1, :cond_49

    const-string v1, "正在安装："

    goto :goto_4b

    :cond_49
    const-string v1, "Installing:"

    .line 274
    :goto_4b
    :try_start_4b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5b

    .line 280
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 284
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_71

    .line 276
    :cond_5b
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ndk/GradleNdk;->setText(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_6f} :catch_70

    goto :goto_4b

    :catch_70
    move-exception p0

    :goto_71
    return-void
.end method

.method public static getNdkStatus()Z
    .registers 2

    .line 214
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/cn.aide.pro/files/framework/android-sdk/ndk/24.0.8215888/toolchains/llvm/prebuilt/linux-x86_64/lib64/libc++_shared.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static installNdk(Landroid/app/Activity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "正在获取中..."

    goto :goto_b

    :cond_9
    const-string v0, "Getting..."

    :goto_b
    invoke-static {p0, v0}, Lcom/ndk/GradleNdk;->loadingDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ndk/GradleNdk$100000000;

    invoke-direct {v1, p0}, Lcom/ndk/GradleNdk$100000000;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static loadingDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 308
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ndk/GradleNdk;->pd:Landroid/app/ProgressDialog;

    .line 309
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 310
    sget-object p0, Lcom/ndk/GradleNdk;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 311
    sget-object p0, Lcom/ndk/GradleNdk;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public static removeNdk()V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    const-string v0, "rm -rf /data/data/cn.aide.pro/files/framework/android-sdk/ndk/24.0.8215888/"

    invoke-static {v0}, Lcom/ndk/GradleNdk;->shell(Ljava/lang/String;)V

    return-void
.end method

.method private static setText(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 294
    new-instance v0, Lcom/ndk/GradleNdk$100000005;

    invoke-direct {v0, p1}, Lcom/ndk/GradleNdk$100000005;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static shell(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 230
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 231
    new-instance v1, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 232
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v2, "\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 234
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 236
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 240
    :cond_3d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 247
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 249
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 251
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_4e

    :catch_4d
    move-exception p0

    :goto_4e
    return-void
.end method
