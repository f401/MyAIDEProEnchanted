.class public Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;
.super Lorg/apache/tools/ant/Task;
.source "JJDoc.java"


# static fields
.field private static final DEFAULT_SUFFIX_HTML:Ljava/lang/String; = ".html"

.field private static final DEFAULT_SUFFIX_TEXT:Ljava/lang/String; = ".txt"

.field private static final ONE_TABLE:Ljava/lang/String; = "ONE_TABLE"

.field private static final OUTPUT_FILE:Ljava/lang/String; = "OUTPUT_FILE"

.field private static final TEXT:Ljava/lang/String; = "TEXT"


# instance fields
.field private cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

.field private javaccHome:Ljava/io/File;

.field private maxMemory:Ljava/lang/String;

.field private final optionalAttrs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private outputFile:Ljava/lang/String;

.field private plainText:Z

.field private targetFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->optionalAttrs:Ljava/util/Map;

    .line 49
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->plainText:Z

    .line 56
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    .line 57
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->javaccHome:Ljava/io/File;

    .line 59
    new-instance v0, Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/CommandlineJava;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    .line 61
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->maxMemory:Ljava/lang/String;

    .line 120
    const-string v1, "java"

    invoke-static {v1}, Lorg/apache/tools/ant/util/JavaEnvUtils;->getJreExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setVm(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private createOutputFileName(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    const/16 v6, 0x5c

    const/16 v5, 0x2f

    .line 187
    const-string v1, ".html"

    .line 188
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 190
    if-eqz p3, :cond_12

    .line 191
    const-string v1, ".txt"

    .line 194
    :cond_12
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 195
    :cond_1a
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 197
    if-ltz v2, :cond_26

    .line 198
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_26
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 203
    const/4 v3, -0x1

    if-ne v2, v3, :cond_64

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0

    .line 216
    :cond_5f
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 206
    :cond_64
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 211
    :cond_7e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method


# virtual methods
.method public execute()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->optionalAttrs:Ljava/util/Map;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    if-eqz v0, :cond_10e

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 139
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-OUTPUT_FILE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    .line 140
    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 144
    :cond_3e
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->plainText:Z

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->createOutputFileName(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7d

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target is already built - skipping ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->log(Ljava/lang/String;I)V

    .line 182
    :cond_7c
    return-void

    .line 154
    :cond_7d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->createClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->javaccHome:Ljava/io/File;

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getArchiveFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPathElement()Lorg/apache/tools/ant/types/Path$PathElement;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/apache/tools/ant/types/Path$PathElement;->setPath(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->addJavaRuntime()V

    .line 161
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-static {v0, v5}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JavaCC;->getMainClass(Lorg/apache/tools/ant/types/Path;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/CommandlineJava;->setClassname(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->maxMemory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/CommandlineJava;->setMaxmemory(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createVmArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-Dinstall.root="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->javaccHome:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Execute;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    invoke-direct {v1, p0, v6, v6}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;Lorg/apache/tools/ant/taskdefs/ExecuteWatchdog;)V

    .line 173
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->describeCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->log(Ljava/lang/String;I)V

    .line 174
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/CommandlineJava;->getCommandline()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 177
    :try_start_f7
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I

    move-result v0

    if-eqz v0, :cond_7c

    .line 178
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "JJDoc failed."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_105} :catch_105

    .line 180
    :catch_105
    move-exception v0

    .line 181
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Failed to launch JJDoc"

    invoke-direct {v1, v2, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 135
    :cond_10e
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Invalid target: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public synthetic lambda$execute$0$JJDoc(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 131
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->cmdl:Lorg/apache/tools/ant/types/CommandlineJava;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/CommandlineJava;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setJavacchome(Ljava/io/File;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->javaccHome:Ljava/io/File;

    .line 104
    return-void
.end method

.method public setMaxmemory(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->maxMemory:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setOnetable(Z)V
    .registers 5

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->optionalAttrs:Ljava/util/Map;

    const-string v1, "ONE_TABLE"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public setOutputfile(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->outputFile:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setTarget(Ljava/io/File;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->targetFile:Ljava/io/File;

    .line 96
    return-void
.end method

.method public setText(Z)V
    .registers 5

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->optionalAttrs:Ljava/util/Map;

    const-string v1, "TEXT"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/javacc/JJDoc;->plainText:Z

    .line 70
    return-void
.end method
