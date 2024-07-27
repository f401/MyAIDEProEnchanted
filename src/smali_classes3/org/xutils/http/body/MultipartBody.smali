.class public Lorg/xutils/http/body/MultipartBody;
.super Ljava/lang/Object;
.source "MultipartBody.java"

# interfaces
.implements Lorg/xutils/http/body/ProgressBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/body/MultipartBody$CounterOutputStream;
    }
.end annotation


# static fields
.field private static BOUNDARY_PREFIX_BYTES:[B

.field private static END_BYTES:[B

.field private static TWO_DASHES_BYTES:[B


# instance fields
.field private boundaryPostfixBytes:[B

.field private callBackHandler:Lorg/xutils/http/ProgressHandler;

.field private charset:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private current:J

.field private multipartParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    const-string v0, "--------7da3d81520810"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    .line 28
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->END_BYTES:[B

    .line 29
    const-string v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    .line 35
    iput-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    .line 36
    iput-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iput-object p2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->multipartParams:Ljava/util/List;

    .line 43
    invoke-direct {p0}, Lorg/xutils/http/body/MultipartBody;->generateContentType()V

    .line 46
    new-instance v0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    invoke-direct {v0, p0}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;-><init>(Lorg/xutils/http/body/MultipartBody;)V

    .line 48
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/xutils/http/body/MultipartBody;->writeTo(Ljava/io/OutputStream;)V

    .line 49
    iget-object v0, v0, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->total:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    goto :goto_0
.end method

.method private static buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    const-string v1, "; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Content-Type: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text/plain; charset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    const-string v0, "application/octet-stream"

    goto :goto_0

    .line 218
    :cond_1
    const-string v0, "\\/jpg$"

    const-string v2, "/jpeg"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generateContentType()V
    .registers 5

    .line 63
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    .line 66
    return-void
.end method

.method private writeEntry(Ljava/io/OutputStream;Lorg/xutils/common/util/KeyValue;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 113
    iget-object v4, p2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 114
    iget-object v1, p2, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    .line 115
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [[B

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    aput-object v2, v0, v6

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    aput-object v2, v0, v8

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    aput-object v3, v0, v2

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 119
    const-string v0, ""

    .line 120
    const/4 v3, 0x0

    .line 121
    instance-of v2, p2, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    if-eqz v2, :cond_7

    move-object v0, p2

    .line 122
    check-cast v0, Lorg/xutils/http/BaseParams$BodyItemWrapper;

    .line 123
    iget-object v2, v0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->fileName:Ljava/lang/String;

    .line 124
    iget-object v0, v0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    move-object v3, v0

    .line 127
    :goto_1
    nop

    instance-of v0, v1, Ljava/io/File;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 128
    check-cast v0, Ljava/io/File;

    .line 129
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 132
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    invoke-static {v0}, Lorg/xutils/http/body/FileBody;->getFileContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 135
    :cond_3
    new-array v5, v8, [[B

    iget-object v7, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {v4, v2, v7}, Lorg/xutils/http/body/MultipartBody;->buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v5, v6

    invoke-direct {p0, p1, v5}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 136
    new-array v2, v8, [[B

    iget-object v4, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lorg/xutils/http/body/MultipartBody;->buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v2, v6

    invoke-direct {p0, p1, v2}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 137
    new-array v1, v6, [[B

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 138
    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeFile(Ljava/io/OutputStream;Ljava/io/File;)V

    .line 139
    new-array v0, v6, [[B

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    goto :goto_0

    .line 141
    :cond_4
    new-array v0, v8, [[B

    iget-object v5, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {v4, v2, v5}, Lorg/xutils/http/body/MultipartBody;->buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v6

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 142
    new-array v0, v8, [[B

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lorg/xutils/http/body/MultipartBody;->buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v6

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 143
    new-array v0, v6, [[B

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 144
    instance-of v0, v1, Ljava/io/InputStream;

    if-eqz v0, :cond_5

    .line 145
    check-cast v1, Ljava/io/InputStream;

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    .line 146
    new-array v0, v6, [[B

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    goto/16 :goto_0

    .line 149
    :cond_5
    instance-of v0, v1, [B

    if-eqz v0, :cond_6

    .line 150
    check-cast v1, [B

    .line 154
    :goto_2
    new-array v0, v8, [[B

    aput-object v1, v0, v6

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 155
    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    array-length v0, v1

    int-to-long v0, v0

    add-long v4, v2, v0

    iput-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 156
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_6
    invoke-virtual {p2}, Lorg/xutils/common/util/KeyValue;->getValueStrOrEmpty()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_2

    :cond_7
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private writeFile(Ljava/io/OutputStream;Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    instance-of v0, p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    if-eqz v0, :cond_0

    .line 174
    check-cast p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    invoke-virtual {p1, p2}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->addFile(Ljava/io/File;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private varargs writeLine(Ljava/io/OutputStream;[[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    if-eqz p2, :cond_0

    .line 165
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 166
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_0
    sget-object v0, Lorg/xutils/http/body/MultipartBody;->END_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 170
    return-void
.end method

.method private writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    instance-of v0, p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    if-eqz v0, :cond_0

    .line 182
    check-cast p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    invoke-virtual {p1, p2}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->addStream(Ljava/io/InputStream;)V

    .line 196
    :goto_0
    return-void

    .line 186
    :cond_0
    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 187
    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2

    .line 188
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 189
    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    int-to-long v4, v1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 190
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 191
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :catchall_0
    move-exception v0

    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 196
    throw v0

    .line 195
    :cond_2
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0
.end method


# virtual methods
.method public getContentLength()J
    .registers 3

    .line 70
    iget-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 5

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    goto :goto_0
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    .line 60
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    .line 94
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->multipartParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/common/util/KeyValue;

    .line 99
    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeEntry(Ljava/io/OutputStream;Lorg/xutils/common/util/KeyValue;)V

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    sget-object v0, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sget-object v2, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    aput-object v2, v1, v6

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-direct {p0, p1, v1}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 102
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 104
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_3

    .line 105
    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v4, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    invoke-interface/range {v1 .. v6}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    .line 107
    :cond_3
    return-void
.end method
