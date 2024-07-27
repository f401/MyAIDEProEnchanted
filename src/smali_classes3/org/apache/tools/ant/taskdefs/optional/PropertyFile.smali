.class public Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;
.super Lorg/apache/tools/ant/Task;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;,
        Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;,
        Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;,
        Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;
    }
.end annotation


# instance fields
.field private comment:Ljava/lang/String;

.field private entries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private properties:Ljava/util/Properties;

.field private propertyfile:Ljava/io/File;

.field private useJDKProperties:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 149
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->entries:Ljava/util/Vector;

    return-void
.end method

.method private checkParam(Ljava/io/File;)Z
    .registers 3

    .line 269
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkParameters()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->checkParam(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    return-void

    .line 218
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "file token must not be null."

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method private executeOperation()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->entries:Ljava/util/Vector;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->forEach(Ljava/util/function/Consumer;)V

    .line 185
    return-void
.end method

.method private readFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->useJDKProperties:Z

    if-eqz v0, :cond_1

    .line 191
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->properties:Ljava/util/Properties;

    .line 196
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating property file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    .line 198
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->log(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 200
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    :try_start_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->properties:Ljava/util/Properties;

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 213
    :cond_0
    :goto_1
    return-void

    .line 193
    :cond_1
    new-instance v0, Lorg/apache/tools/ant/util/LayoutPreservingProperties;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/LayoutPreservingProperties;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->properties:Ljava/util/Properties;

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_2
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_2
    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_3
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new property file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->log(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v0

    .line 208
    :try_start_a
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 209
    if-eqz v0, :cond_0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_1

    .line 206
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_4
    :goto_4
    :try_start_d
    throw v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 199
    :catchall_3
    move-exception v2

    goto :goto_2

    :catchall_4
    move-exception v1

    goto :goto_3

    .line 206
    :catchall_5
    move-exception v0

    goto :goto_4
.end method

.method private writeFile()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 252
    :try_start_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->properties:Ljava/util/Properties;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->comment:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 255
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 258
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 262
    :cond_0
    return-void

    .line 257
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_1
    :goto_0
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    :try_start_6
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/util/FileUtils;->tryHardToDelete(Ljava/io/File;)Z

    .line 261
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 263
    :catch_1
    move-exception v0

    .line 264
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 253
    :catch_2
    move-exception v0

    .line 254
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 257
    :catchall_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public createEntry()Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;
    .registers 3

    .line 178
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;-><init>()V

    .line 179
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->entries:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 180
    return-object v0
.end method

.method public execute()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->checkParameters()V

    .line 168
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->readFile()V

    .line 169
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->executeOperation()V

    .line 170
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->writeFile()V

    .line 171
    return-void
.end method

.method public synthetic lambda$executeOperation$0$PropertyFile(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;)V
    .registers 3

    .line 184
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->properties:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeOn(Ljava/util/Properties;)V

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->comment:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->propertyfile:Ljava/io/File;

    .line 229
    return-void
.end method

.method public setJDKProperties(Z)V
    .registers 2

    .line 245
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;->useJDKProperties:Z

    .line 246
    return-void
.end method
