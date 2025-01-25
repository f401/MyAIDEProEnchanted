.class public Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;
.super Ljava/lang/Object;
.source "SQLExec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/SQLExec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Transaction"
.end annotation


# instance fields
.field private tSqlCommand:Ljava/lang/String;

.field private tSrcResource:Lorg/apache/tools/ant/types/Resource;

.field final this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/SQLExec;)V
    .registers 3

    .line 999
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    .line 1001
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;Ljava/io/PrintStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 999
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->runTransaction(Ljava/io/PrintStream;)V

    return-void
.end method

.method private runTransaction(Ljava/io/PrintStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v3, 0x2

    .line 1052
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1053
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    const-string v1, "Executing commands"

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 1054
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    new-instance v1, Ljava/io/StringReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->runStatements(Ljava/io/Reader;Ljava/io/PrintStream;)V

    .line 1057
    :cond_1c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_5b

    .line 1058
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing resource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v2}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/SQLExec;->log(Ljava/lang/String;I)V

    .line 1060
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->access$100(Lorg/apache/tools/ant/taskdefs/SQLExec;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5c

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 1062
    :goto_48
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    .line 1063
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1064
    :try_start_53
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    invoke-virtual {v0, v2, p1}, Lorg/apache/tools/ant/taskdefs/SQLExec;->runStatements(Ljava/io/Reader;Ljava/io/PrintStream;)V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_67

    .line 1065
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 1067
    :cond_5b
    return-void

    .line 1061
    :cond_5c
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->this$0:Lorg/apache/tools/ant/taskdefs/SQLExec;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/SQLExec;->access$100(Lorg/apache/tools/ant/taskdefs/SQLExec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_48

    .line 1062
    :catchall_67
    move-exception v0

    :try_start_68
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    :goto_6b
    throw v0

    :catchall_6c
    move-exception v1

    goto :goto_6b
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 1043
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 1047
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 1048
    return-void

    .line 1044
    :cond_15
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only single argument resource collections are supported."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 1032
    if-eqz p1, :cond_15

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSqlCommand:Ljava/lang/String;

    .line 1035
    :cond_15
    return-void
.end method

.method public setSrc(Ljava/io/File;)V
    .registers 3

    .line 1010
    if-eqz p1, :cond_a

    .line 1011
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    .line 1013
    :cond_a
    return-void
.end method

.method public setSrcResource(Lorg/apache/tools/ant/types/Resource;)V
    .registers 4

    .line 1021
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_7

    .line 1024
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/SQLExec$Transaction;->tSrcResource:Lorg/apache/tools/ant/types/Resource;

    .line 1025
    return-void

    .line 1022
    :cond_7
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only one resource per transaction"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
