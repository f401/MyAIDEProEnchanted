.class Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$1;
.super Ljava/io/FilterInputStream;
.source "AbstractClasspathResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;->getInputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

.field final val$classLoader:Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;Ljava/io/InputStream;Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;)V
    .registers 4

    .line 179
    iput-object p1, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$1;->this$0:Lorg/apache/tools/ant/types/resources/AbstractClasspathResource;

    iput-object p3, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$1;->val$classLoader:Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

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

    .line 182
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$1;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 183
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$1;->val$classLoader:Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$ClassLoaderWithFlag;->cleanup()V

    .line 184
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/AbstractClasspathResource$1;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 192
    return-void

    .line 191
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 192
    throw v0
.end method
