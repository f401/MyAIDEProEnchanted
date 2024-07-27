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
    .registers 4
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

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6b63\u5728\u5b89\u88c5NDK\uff0c\u9700\u8981\u51e0\u5206\u949f..."

    :goto_0
    invoke-static {p0, v0}, Lcom/ndk/GradleNdk;->loadingDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ndk/GradleNdk$100000004;

    invoke-direct {v1, p0}, Lcom/ndk/GradleNdk$100000004;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 131
    :cond_0
    const-string v0, "Installing NDK, it will take a few minutes..."

    goto :goto_0
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

    .line 330
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static downNDK(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    new-instance v1, Lcom/ndk/GradleNdk$100000001;

    invoke-direct {v1, p0}, Lcom/ndk/GradleNdk$100000001;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 82
    :try_start_0
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 84
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    .line 90
    sget-object v4, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 92
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/data/data/aidepro.top/files/Gradle_NDK_24.0.8215888.tar.xz"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 96
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 99
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 109
    sget-object v0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/ndk/GradleNdk;->dismissDialog(Landroid/app/Dialog;)V

    .line 111
    new-instance v0, Lcom/ndk/GradleNdk$100000002;

    const-string v1, "/data/data/aidepro.top/files/Gradle_NDK_24.0.8215888.tar.xz"

    invoke-direct {v0, p0, v1}, Lcom/ndk/GradleNdk$100000002;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 123
    :goto_1
    return-void

    .line 101
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 103
    add-int/2addr v0, v4

    .line 105
    sget-object v4, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 123
    sget-object v0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/ndk/GradleNdk;->dismissDialog(Landroid/app/Dialog;)V

    goto :goto_1
.end method

.method private static downingDialog(Landroid/app/Activity;)V
    .registers 3
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
    sget-object v1, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6b63\u5728\u4e0b\u8f7d\u4e2d..."

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    sget-object v0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 322
    sget-object v0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 323
    sget-object v0, Lcom/ndk/GradleNdk;->pr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    .line 320
    :cond_0
    const-string v0, "Downloading..."

    goto :goto_0
.end method

.method private static executeResult(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7
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

    move-result-object v1

    .line 263
    new-instance v0, Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 264
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 266
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 268
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 270
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    .line 272
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6b63\u5728\u5b89\u88c5\uff1a"

    .line 274
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 280
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 282
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 284
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    .line 272
    :cond_0
    const-string v0, "Installing:"

    goto :goto_0

    .line 276
    :cond_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ndk/GradleNdk;->setText(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getNdkStatus()Z
    .registers 2

    .line 214
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/aidepro.top/files/framework/android-sdk/ndk/24.0.8215888/toolchains/llvm/prebuilt/linux-x86_64/lib64/libc++_shared.so"

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

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u6b63\u5728\u83b7\u53d6\u4e2d..."

    :goto_0
    invoke-static {p0, v0}, Lcom/ndk/GradleNdk;->loadingDialog(Landroid/app/Activity;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ndk/GradleNdk$100000000;

    invoke-direct {v1, p0}, Lcom/ndk/GradleNdk$100000000;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 28
    :cond_0
    const-string v0, "Getting..."

    goto :goto_0
.end method

.method private static loadingDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
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
    sget-object v0, Lcom/ndk/GradleNdk;->pd:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 310
    sget-object v0, Lcom/ndk/GradleNdk;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 311
    sget-object v0, Lcom/ndk/GradleNdk;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

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
    const-string v0, "rm -rf /data/data/aidepro.top/files/framework/android-sdk/ndk/24.0.8215888/"

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
    .registers 5
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

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 234
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 236
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 240
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 247
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 249
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 251
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
