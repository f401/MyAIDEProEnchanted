.class Lorg/apache/tools/ant/taskdefs/Get$GetThread;
.super Ljava/lang/Thread;
.source "Get.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Get;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetThread"
.end annotation


# instance fields
.field private connection:Ljava/net/URLConnection;

.field private final dest:Ljava/io/File;

.field private exception:Lorg/apache/tools/ant/BuildException;

.field private final hasTimestamp:Z

.field private ioexception:Ljava/io/IOException;

.field private is:Ljava/io/InputStream;

.field private final logLevel:I

.field private os:Ljava/io/OutputStream;

.field private final progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

.field private redirections:I

.field private final source:Ljava/net/URL;

.field private success:Z

.field final this$0:Lorg/apache/tools/ant/taskdefs/Get;

.field private final timestamp:J

.field private userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/tools/ant/taskdefs/Get;Ljava/net/URL;Ljava/io/File;ZJLorg/apache/tools/ant/taskdefs/Get$DownloadProgress;ILjava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 665
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 655
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->success:Z

    .line 656
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->ioexception:Ljava/io/IOException;

    .line 657
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->exception:Lorg/apache/tools/ant/BuildException;

    .line 658
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    .line 659
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    .line 661
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->redirections:I

    .line 662
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->userAgent:Ljava/lang/String;

    .line 666
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    .line 667
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    .line 668
    iput-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->hasTimestamp:Z

    .line 669
    iput-wide p5, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->timestamp:J

    .line 670
    iput-object p7, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

    .line 671
    iput p8, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    .line 672
    iput-object p9, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->userAgent:Ljava/lang/String;

    .line 673
    return-void
.end method

.method private downloadFile()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 831
    move v0, v1

    :goto_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Get;->access$700(Lorg/apache/tools/ant/taskdefs/Get;)I

    move-result v2

    if-ge v0, v2, :cond_12

    .line 836
    :try_start_a
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->connection:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_43

    .line 842
    :cond_12
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    if-nez v0, :cond_88

    .line 843
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 844
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$100(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 879
    :goto_42
    return v1

    .line 838
    :catch_43
    move-exception v2

    .line 839
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening connection "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v3, v2, v4}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 831
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 847
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    .line 848
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Get;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 851
    :cond_88
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$400(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v0

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->connection:Ljava/net/URLConnection;

    .line 852
    const-string v2, "gzip"

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 853
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    .line 856
    :cond_a7
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    .line 857
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;->beginDownload()V

    .line 858
    const v0, 0x19000

    :try_start_bd
    new-array v0, v0, [B

    .line 862
    :goto_bf
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_ea

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_ea

    .line 863
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 864
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

    invoke-interface {v1}, Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;->onTick()V
    :try_end_d8
    .catchall {:try_start_bd .. :try_end_d8} :catchall_d9

    goto :goto_bf

    .line 868
    :catchall_d9
    move-exception v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 869
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 875
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 877
    throw v0

    .line 866
    :cond_ea
    :try_start_ea
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->isInterrupted()Z
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_d9

    move-result v0

    .line 868
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 869
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-static {v1}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 874
    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_101

    .line 875
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 878
    :cond_101
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->progress:Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;

    invoke-interface {v0}, Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;->endDownload()V

    .line 879
    const/4 v1, 0x1

    goto/16 :goto_42
.end method

.method private get()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->connection:Ljava/net/URLConnection;

    .line 690
    if-nez v0, :cond_c

    .line 691
    const/4 v0, 0x0

    .line 703
    :cond_b
    :goto_b
    return v0

    .line 694
    :cond_c
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->downloadFile()Z

    move-result v0

    .line 699
    if-eqz v0, :cond_b

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$000(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 700
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->updateTimeStamp()V

    goto :goto_b
.end method

.method private openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 741
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 744
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->hasTimestamp:Z

    if-eqz v0, :cond_f

    .line 745
    iget-wide v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->timestamp:J

    invoke-virtual {v2, v0, v1}, Ljava/net/URLConnection;->setIfModifiedSince(J)V

    .line 748
    :cond_f
    const-string v0, "User-Agent"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$200(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$300(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 752
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$200(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$300(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Get$Base64Converter;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Get$Base64Converter;-><init>()V

    .line 758
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Get$Base64Converter;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Authorization"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :cond_69
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$400(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 763
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {v2, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_78
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$500(Lorg/apache/tools/ant/taskdefs/Get;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_86
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 768
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    const-string v5, "Adding header \'%s\' "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;)V

    .line 769
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    .line 772
    :cond_b6
    instance-of v0, v2, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c9

    move-object v0, v2

    .line 773
    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 774
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$600(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 778
    :cond_c9
    :try_start_c9
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V
    :try_end_cc
    .catch Ljava/lang/NullPointerException; {:try_start_c9 .. :try_end_cc} :catch_15e

    .line 782
    instance-of v0, v2, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_113

    move-object v0, v2

    .line 786
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 787
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 788
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->isMoved(I)Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 789
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 791
    const/16 v0, 0x12d

    if-ne v1, v0, :cond_114

    const-string v0, " permanently"

    .line 792
    :goto_f1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " moved to "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v1, v0, v4}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 794
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 795
    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->redirectionAllowed(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v1

    if-nez v1, :cond_117

    move-object v2, v3

    .line 827
    :cond_113
    :goto_113
    return-object v2

    .line 792
    :cond_114
    const-string v0, ""

    goto :goto_f1

    .line 798
    :cond_117
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v2

    goto :goto_113

    .line 801
    :cond_11c
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v4

    .line 802
    const/16 v0, 0x130

    if-eq v1, v0, :cond_134

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_13f

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->hasTimestamp:Z

    if-eqz v0, :cond_13f

    iget-wide v6, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->timestamp:J

    cmp-long v0, v6, v4

    if-ltz v0, :cond_13f

    .line 808
    :cond_134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    const-string v1, "Not modified - so not downloaded"

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    move-object v2, v3

    .line 809
    goto :goto_113

    .line 812
    :cond_13f
    const/16 v0, 0x191

    if-ne v1, v0, :cond_113

    .line 813
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$100(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 815
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    const-string v1, "HTTP Authorization failure"

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    move-object v2, v3

    .line 816
    goto :goto_113

    .line 818
    :cond_156
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "HTTP Authorization failure"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :catch_15e
    move-exception v0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->source:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private redirectionAllowed(Ljava/net/URL;Ljava/net/URL;)Z
    .registers 7

    const/4 v0, 0x0

    .line 708
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 709
    const-string v1, "http"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 710
    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 709
    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 711
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirection detected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Protocol switch unsafe, not allowed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v2}, Lorg/apache/tools/ant/taskdefs/Get;->access$100(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 715
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v2, v1, v3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 735
    :goto_5c
    return v0

    .line 718
    :cond_5d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 722
    :cond_63
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->redirections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->redirections:I

    .line 723
    const/16 v2, 0x19

    if-le v1, v2, :cond_87

    .line 724
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/Get;->access$100(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 727
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    const-string v2, "More than 25 times redirected, giving up"

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    invoke-virtual {v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    goto :goto_5c

    .line 730
    :cond_7f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "More than 25 times redirected, giving up"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_87
    const/4 v0, 0x1

    goto :goto_5c
.end method

.method private updateTimeStamp()V
    .registers 9

    const-wide/16 v6, 0x0

    .line 883
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->connection:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getLastModified()J

    move-result-wide v2

    .line 884
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Get;->access$800(Lorg/apache/tools/ant/taskdefs/Get;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 885
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 886
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->this$0:Lorg/apache/tools/ant/taskdefs/Get;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last modified = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    cmp-long v0, v2, v6

    if-nez v0, :cond_48

    const-string v0, " - using current time instead"

    :goto_2e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->logLevel:I

    .line 886
    invoke-virtual {v1, v0, v4}, Lorg/apache/tools/ant/taskdefs/Get;->log(Ljava/lang/String;I)V

    .line 889
    :cond_3a
    cmp-long v0, v2, v6

    if-eqz v0, :cond_47

    .line 890
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Get;->access$900()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->setFileLastModified(Ljava/io/File;J)V

    .line 892
    :cond_47
    return-void

    .line 887
    :cond_48
    const-string v0, ""

    goto :goto_2e
.end method


# virtual methods
.method closeStreams()V
    .registers 2

    .line 914
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->interrupt()V

    .line 915
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->os:Ljava/io/OutputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 916
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->is:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 917
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->success:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 918
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->dest:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 920
    :cond_1e
    return-void
.end method

.method public run()V
    .registers 2

    .line 678
    :try_start_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->get()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->success:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_b
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_6} :catch_7

    .line 683
    :goto_6
    return-void

    .line 681
    :catch_7
    move-exception v0

    .line 682
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->exception:Lorg/apache/tools/ant/BuildException;

    goto :goto_6

    .line 679
    :catch_b
    move-exception v0

    .line 680
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->ioexception:Ljava/io/IOException;

    goto :goto_6
.end method

.method wasSuccessful()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->ioexception:Ljava/io/IOException;

    if-nez v0, :cond_c

    .line 903
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->exception:Lorg/apache/tools/ant/BuildException;

    if-nez v0, :cond_b

    .line 906
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Get$GetThread;->success:Z

    return v0

    .line 904
    :cond_b
    throw v0

    .line 901
    :cond_c
    throw v0
.end method
