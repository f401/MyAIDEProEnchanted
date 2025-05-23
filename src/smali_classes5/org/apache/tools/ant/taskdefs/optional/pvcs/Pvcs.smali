.class public Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;
.super Lorg/apache/tools/ant/Task;
.source "Pvcs.java"


# static fields
.field private static final GET_EXE:Ljava/lang/String; = "get"

.field private static final PCLI_EXE:Ljava/lang/String; = "pcli"

.field private static final POS_1:I = 0x1

.field private static final POS_2:I = 0x2

.field private static final POS_3:I = 0x3


# instance fields
.field private config:Ljava/lang/String;

.field private filenameFormat:Ljava/lang/String;

.field private force:Ljava/lang/String;

.field private ignorerc:Z

.field private label:Ljava/lang/String;

.field private lineStart:Ljava/lang/String;

.field private promotiongroup:Ljava/lang/String;

.field private pvcsProject:Ljava/lang/String;

.field private pvcsProjects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;",
            ">;"
        }
    .end annotation
.end field

.field private pvcsbin:Ljava/lang/String;

.field private repository:Ljava/lang/String;

.field private revision:Ljava/lang/String;

.field private updateOnly:Z

.field private userId:Ljava/lang/String;

.field private workspace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 112
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProject:Ljava/lang/String;

    .line 113
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProjects:Ljava/util/Vector;

    .line 114
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->workspace:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->repository:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->force:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->promotiongroup:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->label:Ljava/lang/String;

    .line 120
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    .line 121
    iput-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->updateOnly:Z

    .line 122
    const-string v0, "\"P:"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->lineStart:Ljava/lang/String;

    .line 123
    const-string v0, "{0}-arc({1})"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->filenameFormat:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private createFolders(Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v6, 0x3

    .line 302
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 303
    :try_start_b
    new-instance v3, Ljava/text/MessageFormat;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getFilenameFormat()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 305
    :goto_19
    if-eqz v1, :cond_152

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Considering \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 307
    const-string v0, "\"\\"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 308
    const-string v0, "\"/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_80

    .line 310
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_c2

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 311
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 312
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 313
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 314
    :cond_80
    invoke-virtual {v3, v1}, Ljava/text/MessageFormat;->parse(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 315
    const/4 v4, 0x1

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    .line 317
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 318
    const/4 v5, -0x1

    if-le v4, v5, :cond_13b

    .line 319
    new-instance v1, Ljava/io/File;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exists. Skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 339
    :goto_bb
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_19

    .line 340
    :cond_c2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped \""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V
    :try_end_dc
    .catchall {:try_start_b .. :try_end_dc} :catchall_dd

    goto :goto_bb

    .line 302
    :catchall_dd
    move-exception v0

    :try_start_de
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_156

    :goto_e1
    throw v0

    .line 324
    :cond_e2
    :try_start_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 326
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_107

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 327
    :cond_107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    goto :goto_bb

    .line 330
    :cond_121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    goto :goto_bb

    .line 336
    :cond_13b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File separator problem with "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V
    :try_end_150
    .catchall {:try_start_e2 .. :try_end_150} :catchall_dd

    goto/16 :goto_bb

    .line 344
    :cond_152
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 345
    return-void

    .line 302
    :catchall_156
    move-exception v1

    goto :goto_e1
.end method

.method private getExecutable(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsbin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 150
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 151
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_1a
    :goto_1a
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 153
    :cond_22
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a
.end method

.method static synthetic lambda$massagePCLI$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 358
    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$massagePCLI$1(Ljava/io/BufferedReader;)Ljava/util/Iterator;
    .registers 3

    .line 357
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda1;

    .line 358
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 357
    return-object v0
.end method

.method private massagePCLI(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 356
    :try_start_a
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_35

    .line 357
    :try_start_14
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs$$ExternalSyntheticLambda0;-><init>(Ljava/io/BufferedReader;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 359
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_30

    goto :goto_1d

    .line 355
    :catchall_30
    move-exception v0

    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_41

    :goto_34
    :try_start_34
    throw v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_43

    :goto_39
    throw v0

    .line 362
    :cond_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_35

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 363
    return-void

    .line 355
    :catchall_41
    move-exception v2

    goto :goto_34

    :catchall_43
    move-exception v1

    goto :goto_39
.end method


# virtual methods
.method public addPvcsproject(Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;)V
    .registers 3

    .line 589
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProjects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 590
    return-void
.end method

.method public execute()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->repository:Ljava/lang/String;

    if-eqz v0, :cond_33a

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33a

    .line 174
    new-instance v5, Lorg/apache/tools/ant/types/Commandline;

    invoke-direct {v5}, Lorg/apache/tools/ant/types/Commandline;-><init>()V

    .line 175
    const-string v0, "pcli"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "lvf"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-z"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v1, "-aw"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getWorkspace()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 181
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getWorkspace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 183
    :cond_5a
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-pr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getRepository()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_94

    .line 188
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 192
    :cond_94
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsproject()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a8

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsprojects()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 193
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProject:Ljava/lang/String;

    .line 196
    :cond_a8
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsproject()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b9

    .line 197
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsproject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 199
    :cond_b9
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsprojects()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 200
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPvcsprojects()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;

    .line 201
    invoke-virtual {v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_ef

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ef

    .line 205
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto :goto_cb

    .line 203
    :cond_ef
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "name is a required attribute of pvcsproject"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_f7
    :try_start_f7
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 213
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pvcs_ant_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_11f
    .catch Ljava/text/ParseException; {:try_start_f7 .. :try_end_11f} :catch_342
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_11f} :catch_34c
    .catchall {:try_start_f7 .. :try_end_11f} :catchall_356

    .line 214
    :try_start_11f
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    .line 215
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pvcs_ant_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".log"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/text/ParseException; {:try_start_11f .. :try_end_149} :catch_347
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_149} :catch_351
    .catchall {:try_start_11f .. :try_end_149} :catchall_35c

    .line 216
    :try_start_149
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->describeCommand()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V
    :try_end_151
    .catch Ljava/text/ParseException; {:try_start_149 .. :try_end_151} :catch_273
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_151} :catch_2b8
    .catchall {:try_start_149 .. :try_end_151} :catchall_2df

    .line 218
    :try_start_151
    new-instance v0, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v6, 0x1

    invoke-direct {v3, p0, v6}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/Task;I)V

    invoke-direct {v0, v2, v3}, Lorg/apache/tools/ant/taskdefs/PumpStreamHandler;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v5, v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->runCmd(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I
    :try_end_15f
    .catchall {:try_start_151 .. :try_end_15f} :catchall_335

    move-result v0

    .line 221
    :try_start_160
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 222
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Execute;->isFailure(I)Z

    move-result v0

    if-eqz v0, :cond_16d

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    if-eqz v0, :cond_254

    .line 229
    :cond_16d
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32d

    .line 236
    const-string v0, "Creating folders"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 237
    invoke-direct {p0, v4}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->createFolders(Ljava/io/File;)V

    .line 240
    invoke-direct {p0, v4, v1}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->massagePCLI(Ljava/io/File;Ljava/io/File;)V

    .line 243
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->clearArgs()V

    .line 244
    const-string v0, "get"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getExecutable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getConfig()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b7

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getConfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b7

    .line 247
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getConfig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 250
    :cond_1b7
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getForce()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2ad

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getForce()Ljava/lang/String;

    move-result-object v0

    const-string v2, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ad

    .line 251
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-Y"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 256
    :goto_1d2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPromotiongroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2bb

    .line 257
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getPromotiongroup()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 269
    :cond_1f4
    :goto_1f4
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->updateOnly:Z

    if-eqz v0, :cond_201

    .line 270
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-U"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 273
    :cond_201
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    .line 274
    const-string v0, "Getting files"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->log(Ljava/lang/String;I)V

    .line 276
    new-instance v0, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lorg/apache/tools/ant/taskdefs/LogStreamHandler;-><init>(Lorg/apache/tools/ant/Task;II)V

    invoke-virtual {p0, v5, v0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->runCmd(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I

    move-result v0

    .line 278
    if-eqz v0, :cond_24d

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z
    :try_end_24b
    .catch Ljava/text/ParseException; {:try_start_160 .. :try_end_24b} :catch_273
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_24b} :catch_2b8
    .catchall {:try_start_160 .. :try_end_24b} :catchall_2df

    if-eqz v2, :cond_306

    .line 289
    :cond_24d
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 296
    return-void

    .line 225
    :cond_254
    :try_start_254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v2
    :try_end_273
    .catch Ljava/text/ParseException; {:try_start_254 .. :try_end_273} :catch_273
    .catch Ljava/io/IOException; {:try_start_254 .. :try_end_273} :catch_2b8
    .catchall {:try_start_254 .. :try_end_273} :catchall_2df

    .line 284
    :catch_273
    move-exception v2

    move-object v0, v4

    .line 285
    :goto_275
    :try_start_275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed executing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    new-instance v3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v3
    :try_end_2a0
    .catchall {:try_start_275 .. :try_end_2a0} :catchall_2a0

    .line 289
    :catchall_2a0
    move-exception v2

    move-object v4, v0

    :goto_2a2
    if-eqz v4, :cond_2a7

    .line 290
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 292
    :cond_2a7
    if-eqz v1, :cond_2ac

    .line 293
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 295
    :cond_2ac
    throw v2

    .line 253
    :cond_2ad
    :try_start_2ad
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    const-string v2, "-N"

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1d2

    .line 284
    :catch_2b8
    move-exception v2

    move-object v0, v4

    goto :goto_275

    .line 260
    :cond_2bb
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e2

    .line 261
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1f4

    .line 289
    :catchall_2df
    move-exception v0

    move-object v2, v0

    goto :goto_2a2

    .line 263
    :cond_2e2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getRevision()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f4

    .line 264
    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getRevision()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1f4

    .line 279
    :cond_306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed executing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Return code was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 230
    :cond_32d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Communication between ant and pvcs failed. No output generated from executing PVCS commandline interface \"pcli\" and \"get\""

    invoke-direct {v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :catchall_335
    move-exception v0

    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/OutputStream;)V

    .line 222
    throw v0
    :try_end_33a
    .catch Ljava/text/ParseException; {:try_start_2ad .. :try_end_33a} :catch_273
    .catch Ljava/io/IOException; {:try_start_2ad .. :try_end_33a} :catch_2b8
    .catchall {:try_start_2ad .. :try_end_33a} :catchall_2df

    .line 167
    :cond_33a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Required argument repository not specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :catch_342
    move-exception v2

    move-object v1, v3

    move-object v0, v3

    goto/16 :goto_275

    :catch_347
    move-exception v2

    move-object v1, v3

    move-object v0, v4

    goto/16 :goto_275

    :catch_34c
    move-exception v2

    move-object v0, v3

    move-object v1, v3

    goto/16 :goto_275

    :catch_351
    move-exception v2

    move-object v0, v4

    move-object v1, v3

    goto/16 :goto_275

    .line 289
    :catchall_356
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    move-object v4, v3

    goto/16 :goto_2a2

    :catchall_35c
    move-exception v0

    move-object v2, v0

    move-object v1, v3

    goto/16 :goto_2a2
.end method

.method public getConfig()Ljava/lang/String;
    .registers 2

    .line 614
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->config:Ljava/lang/String;

    return-object v0
.end method

.method public getFilenameFormat()Ljava/lang/String;
    .registers 2

    .line 381
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->filenameFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getForce()Ljava/lang/String;
    .registers 2

    .line 503
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->force:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreReturnCode()Z
    .registers 2

    .line 572
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 540
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLineStart()Ljava/lang/String;
    .registers 2

    .line 406
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->lineStart:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotiongroup()Ljava/lang/String;
    .registers 2

    .line 524
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->promotiongroup:Ljava/lang/String;

    return-object v0
.end method

.method public getPvcsbin()Ljava/lang/String;
    .registers 2

    .line 481
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    return-object v0
.end method

.method public getPvcsproject()Ljava/lang/String;
    .registers 2

    .line 435
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProject:Ljava/lang/String;

    return-object v0
.end method

.method public getPvcsprojects()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/pvcs/PvcsProject;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProjects:Ljava/util/Vector;

    return-object v0
.end method

.method public getRepository()Ljava/lang/String;
    .registers 2

    .line 370
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->repository:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .registers 2

    .line 556
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateOnly()Z
    .registers 2

    .line 597
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->updateOnly:Z

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .line 632
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspace()Ljava/lang/String;
    .registers 2

    .line 460
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->workspace:Ljava/lang/String;

    return-object v0
.end method

.method protected runCmd(Lorg/apache/tools/ant/types/Commandline;Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)I
    .registers 6

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 135
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Execute;

    invoke-direct {v1, p2}, Lorg/apache/tools/ant/taskdefs/Execute;-><init>(Lorg/apache/tools/ant/taskdefs/ExecuteStreamHandler;)V

    .line 136
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setAntRun(Lorg/apache/tools/ant/Project;)V

    .line 137
    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setWorkingDirectory(Ljava/io/File;)V

    .line 138
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/taskdefs/Execute;->setCommandline([Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Execute;->execute()I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    return v0

    .line 140
    :catch_1f
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed executing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Commandline;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setConfig(Ljava/io/File;)V
    .registers 3

    .line 623
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->config:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public setFilenameFormat(Ljava/lang/String;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->filenameFormat:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setForce(Ljava/lang/String;)V
    .registers 4

    .line 516
    const-string v0, "yes"

    const-string v1, "yes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_a
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->force:Ljava/lang/String;

    .line 517
    return-void

    .line 516
    :cond_d
    const-string v0, "no"

    goto :goto_a
.end method

.method public setIgnoreReturnCode(Z)V
    .registers 2

    .line 581
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->ignorerc:Z

    .line 582
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 2

    .line 548
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->label:Ljava/lang/String;

    .line 549
    return-void
.end method

.method public setLineStart(Ljava/lang/String;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->lineStart:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setPromotiongroup(Ljava/lang/String;)V
    .registers 2

    .line 532
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->promotiongroup:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setPvcsbin(Ljava/lang/String;)V
    .registers 2

    .line 495
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsbin:Ljava/lang/String;

    .line 496
    return-void
.end method

.method public setPvcsproject(Ljava/lang/String;)V
    .registers 2

    .line 444
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->pvcsProject:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setRepository(Ljava/lang/String;)V
    .registers 2

    .line 427
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->repository:Ljava/lang/String;

    .line 428
    return-void
.end method

.method public setRevision(Ljava/lang/String;)V
    .registers 2

    .line 564
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->revision:Ljava/lang/String;

    .line 565
    return-void
.end method

.method public setUpdateOnly(Z)V
    .registers 2

    .line 606
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->updateOnly:Z

    .line 607
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2

    .line 640
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->userId:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public setWorkspace(Ljava/lang/String;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/pvcs/Pvcs;->workspace:Ljava/lang/String;

    .line 474
    return-void
.end method
