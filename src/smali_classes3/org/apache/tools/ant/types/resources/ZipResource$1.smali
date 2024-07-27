.class Lorg/apache/tools/ant/types/resources/ZipResource$1;
.super Ljava/io/FilterInputStream;
.source "ZipResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/types/resources/ZipResource;->getZipEntryStream(Lorg/apache/tools/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$zipFile:Lorg/apache/tools/zip/ZipFile;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/apache/tools/zip/ZipFile;)V
    .registers 3

    .line 191
    iput-object p2, p0, Lorg/apache/tools/ant/types/resources/ZipResource$1;->val$zipFile:Lorg/apache/tools/zip/ZipFile;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource$1;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ZipResource$1;->val$zipFile:Lorg/apache/tools/zip/ZipFile;

    invoke-virtual {v0}, Lorg/apache/tools/zip/ZipFile;->close()V

    .line 195
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ZipResource$1;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 201
    throw v0
.end method
