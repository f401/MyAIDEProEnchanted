.class public Lorg/xutils/http/body/FileBody;
.super Lorg/xutils/http/body/InputStreamBody;
.source "FileBody.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;)V

    .line 27
    iput-object p1, p0, Lorg/xutils/http/body/FileBody;->file:Ljava/io/File;

    .line 28
    iput-object p2, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getFileContentType(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 46
    const/4 v0, 0x0

    .line 48
    :try_start_0
    const-string v2, "-![.:/,?&=]"

    invoke-static {v1, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v1}, Ljava/net/HttpURLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v0, "application/octet-stream"

    .line 58
    :goto_1
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    const-string v1, "\\/jpg$"

    const-string v2, "/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->file:Ljava/io/File;

    invoke-static {v0}, Lorg/xutils/http/body/FileBody;->getFileContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lorg/xutils/http/body/FileBody;->contentType:Ljava/lang/String;

    .line 34
    return-void
.end method
