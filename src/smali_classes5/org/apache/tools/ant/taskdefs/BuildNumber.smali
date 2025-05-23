.class public Lorg/apache/tools/ant/taskdefs/BuildNumber;
.super Lorg/apache/tools/ant/Task;
.source "BuildNumber.java"


# static fields
.field private static final DEFAULT_FILENAME:Ljava/lang/String; = "build.number"

.field private static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "build.number"

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field private myFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    return-void
.end method

.method private getBuildNumber(Ljava/util/Properties;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 107
    const-string v0, "build.number"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 112
    :try_start_c
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_11

    move-result v0

    return v0

    .line 113
    :catch_11
    move-exception v1

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " contains a non integer build number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private loadProperties()Ljava/util/Properties;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_22

    move-result-object v1

    .line 128
    :try_start_d
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1b

    .line 130
    if-eqz v1, :cond_1a

    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_22

    :cond_1a
    return-object v0

    .line 127
    :catchall_1b
    move-exception v0

    if-eqz v1, :cond_21

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_29

    :cond_21
    :goto_21
    :try_start_21
    throw v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_22} :catch_22

    .line 131
    :catch_22
    move-exception v0

    .line 132
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 127
    :catchall_29
    move-exception v1

    goto :goto_21
.end method

.method private validate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    if-nez v0, :cond_16

    .line 144
    sget-object v0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BuildNumber;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "build.number"

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    .line 147
    :cond_16
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    .line 149
    :try_start_1e
    sget-object v0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/FileUtils;->createNewFile(Ljava/io/File;)Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_25} :catch_36

    .line 157
    :cond_25
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 161
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 164
    return-void

    .line 150
    :catch_36
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t exist and new file can\'t be created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 162
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to write to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to read from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 73
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    .line 75
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/BuildNumber;->validate()V

    .line 77
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/BuildNumber;->loadProperties()Ljava/util/Properties;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/BuildNumber;->getBuildNumber(Ljava/util/Properties;)I

    move-result v2

    .line 80
    const-string v3, "build.number"

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :try_start_18
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_24} :catch_46
    .catchall {:try_start_18 .. :try_end_24} :catchall_60

    move-result-object v3

    .line 86
    :try_start_25
    const-string v4, "Build Number for ANT. Do not edit!"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_3f

    .line 87
    if-eqz v3, :cond_2f

    :try_start_2c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_46
    .catchall {:try_start_2c .. :try_end_2f} :catchall_60

    .line 90
    :cond_2f
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/BuildNumber;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 95
    const-string v1, "build.number"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 85
    :catchall_3f
    move-exception v0

    if-eqz v3, :cond_45

    :try_start_42
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_64

    :cond_45
    :goto_45
    :try_start_45
    throw v0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_46} :catch_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_60

    .line 87
    :catch_46
    move-exception v0

    .line 88
    :try_start_47
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while writing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_60

    .line 90
    :catchall_60
    move-exception v0

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    .line 91
    throw v0

    .line 85
    :catchall_64
    move-exception v2

    goto :goto_45
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/BuildNumber;->myFile:Ljava/io/File;

    .line 64
    return-void
.end method
