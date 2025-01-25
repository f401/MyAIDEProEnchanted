.class public Lorg/apache/tools/ant/taskdefs/AntStructure;
.super Lorg/apache/tools/ant/Task;
.source "AntStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;,
        Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;
    }
.end annotation


# instance fields
.field private output:Ljava/io/File;

.field private printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;-><init>(Lorg/apache/tools/ant/taskdefs/AntStructure$1;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    .line 73
    return-void
.end method

.method protected areNmtokens([Ljava/lang/String;)Z
    .registers 3

    .line 418
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->areNmtokens([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->output:Ljava/io/File;

    if-eqz v0, :cond_eb

    .line 87
    :try_start_4
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->output:Ljava/io/File;

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_1d} :catch_7e

    .line 90
    :try_start_1d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    new-instance v3, Ljava/util/Hashtable;

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Project;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    new-instance v4, Ljava/util/Hashtable;

    .line 92
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 90
    invoke-interface {v0, v2, v1, v3, v4}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printHead(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 94
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printTargetDecl(Ljava/io/PrintWriter;)V

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getCopyOfDataTypeDefinitions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 97
    invoke-interface {v4, v2, v5, v0, v1}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printElementDecl(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_78
    .catchall {:try_start_1d .. :try_end_78} :catchall_79

    goto :goto_55

    .line 87
    :catchall_79
    move-exception v0

    :try_start_7a
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_f7

    :goto_7d
    :try_start_7d
    throw v0
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_7e} :catch_7e

    .line 111
    :catch_7e
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->output:Ljava/io/File;

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 101
    :cond_a0
    :try_start_a0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getCopyOfTaskDefinitions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    .line 103
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 102
    invoke-interface {v4, v2, v5, v0, v1}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printElementDecl(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_b0

    .line 106
    :cond_d4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-interface {v0, v2}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printTail(Ljava/io/PrintWriter;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/PrintWriter;->checkError()Z
    :try_end_dc
    .catchall {:try_start_a0 .. :try_end_dc} :catchall_79

    move-result v0

    if-nez v0, :cond_e3

    .line 111
    :try_start_df
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_7e

    .line 114
    return-void

    .line 109
    :cond_e3
    :try_start_e3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered an error writing Ant structure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_eb
    .catchall {:try_start_e3 .. :try_end_eb} :catchall_79

    .line 84
    :cond_eb
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "output attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0

    .line 87
    :catchall_f7
    move-exception v1

    goto :goto_7d
.end method

.method protected isNmtoken(Ljava/lang/String;)Z
    .registers 3

    .line 406
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->isNmtoken(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setOutput(Ljava/io/File;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->output:Ljava/io/File;

    .line 64
    return-void
.end method
