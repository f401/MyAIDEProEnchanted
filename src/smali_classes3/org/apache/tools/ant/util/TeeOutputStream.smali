.class public Lorg/apache/tools/ant/util/TeeOutputStream;
.super Ljava/io/OutputStream;
.source "TeeOutputStream.java"


# instance fields
.field private left:Ljava/io/OutputStream;

.field private right:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->left:Ljava/io/OutputStream;

    .line 39
    iput-object p2, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->right:Ljava/io/OutputStream;

    .line 40
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->left:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->right:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->right:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 52
    throw v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->left:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 62
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->right:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 63
    return-void
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->left:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 97
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->right:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 98
    return-void
.end method

.method public write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->left:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->right:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 74
    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->left:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/util/TeeOutputStream;->right:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 87
    return-void
.end method
