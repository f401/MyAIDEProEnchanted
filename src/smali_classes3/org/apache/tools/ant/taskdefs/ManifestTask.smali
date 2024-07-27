.class public Lorg/apache/tools/ant/taskdefs/ManifestTask;
.super Lorg/apache/tools/ant/Task;
.source "ManifestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;
    }
.end annotation


# static fields
.field public static final VALID_ATTRIBUTE_CHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"


# instance fields
.field private encoding:Ljava/lang/String;

.field private flattenClassPaths:Z

.field private manifestFile:Ljava/io/File;

.field private mergeClassPaths:Z

.field private mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

.field private nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;


# direct methods
.method public static synthetic $r8$lambda$U01hvaVAKsJqXdxfAUGYhxw0CII(Lorg/apache/tools/ant/taskdefs/ManifestTask;Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->checkAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    .line 76
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    .line 81
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->flattenClassPaths:Z

    .line 102
    new-instance v0, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    .line 103
    const-string v1, "replace"

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;->setValue(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private checkAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_1

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_1

    move v0, v1

    .line 159
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 161
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Manifest attribute names must not contain \'%c\'"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 155
    :cond_1
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Manifest attribute names must not start with \'%c\'."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 166
    :cond_2
    return-void
.end method


# virtual methods
.method public addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->checkAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest;->addConfiguredAttribute(Lorg/apache/tools/ant/taskdefs/Manifest$Attribute;)V

    .line 131
    return-void
.end method

.method public addConfiguredSection(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/taskdefs/ManifestException;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/Manifest$Section;->getAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda1;-><init>(Lorg/apache/tools/ant/taskdefs/ManifestTask;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/Manifest;->addConfiguredSection(Lorg/apache/tools/ant/taskdefs/Manifest$Section;)V

    .line 118
    return-void
.end method

.method public execute()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    if-eqz v0, :cond_5

    .line 225
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->getDefaultManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v4

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :cond_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 231
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    .line 232
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v5}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 233
    :try_start_1
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v0, v1

    .line 244
    :goto_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->getWarnings()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/util/StreamUtils;->enumerationAsStream(Ljava/util/Enumeration;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/ManifestTask;)V

    .line 245
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 247
    :try_start_3
    const-string v1, "update"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    if-eqz v2, :cond_2

    .line 249
    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    invoke-virtual {v4, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 255
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    const/4 v1, 0x0

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    invoke-virtual {v4, v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V
    :try_end_3
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    const-string v0, "Manifest has not changed, do not recreate"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->log(Ljava/lang/String;I)V

    .line 275
    :goto_1
    return-void

    .line 231
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 234
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 235
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing manifest "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v5

    invoke-direct {v0, v2, v3, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    move-object v2, v1

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    move-object v3, v0

    .line 238
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v5

    invoke-direct {v0, v2, v3, v5}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    move-object v2, v1

    goto/16 :goto_0

    .line 250
    :cond_2
    if-eqz v0, :cond_1

    .line 251
    :try_start_6
    throw v0
    :try_end_6
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_6 .. :try_end_6} :catch_2

    .line 256
    :catch_2
    move-exception v0

    .line 257
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Manifest is invalid"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 266
    :cond_3
    :try_start_7
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    .line 267
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lorg/apache/tools/ant/taskdefs/Manifest;->JAR_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 268
    :try_start_8
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->flattenClassPaths:Z

    invoke-virtual {v4, v1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->write(Ljava/io/PrintWriter;Z)V

    .line 269
    invoke-virtual {v1}, Ljava/io/PrintWriter;->checkError()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 272
    :try_start_9
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v2

    .line 270
    :cond_4
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered an error writing manifest"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 266
    :catchall_1
    move-exception v0

    :try_start_b
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_5
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 222
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the file attribute is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :catchall_2
    move-exception v2

    goto/16 :goto_2

    .line 266
    :catchall_3
    move-exception v1

    goto :goto_5

    .line 234
    :catch_4
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    goto/16 :goto_3

    .line 237
    :catch_5
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    goto/16 :goto_4

    :cond_6
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_0
.end method

.method public synthetic lambda$execute$0$ManifestTask(Ljava/lang/String;)V
    .registers 4

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manifest warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->encoding:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    .line 175
    return-void
.end method

.method public setFlattenAttributes(Z)V
    .registers 2

    .line 211
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->flattenClassPaths:Z

    .line 212
    return-void
.end method

.method public setMergeClassPathAttributes(Z)V
    .registers 2

    .line 200
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    .line 201
    return-void
.end method

.method public setMode(Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    .line 191
    return-void
.end method
