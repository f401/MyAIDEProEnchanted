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

    if-eq v0, v3, :cond_38

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_38

    move v0, v1

    .line 159
    :goto_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 161
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_28

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 162
    :cond_28
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Manifest attribute names must not contain \'%c\'"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-direct {v0, v2, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 155
    :cond_38
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Manifest attribute names must not start with \'%c\'."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    .line 166
    :cond_48
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

    if-eqz v0, :cond_12a

    .line 225
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/Manifest;->getDefaultManifest()Lorg/apache/tools/ant/taskdefs/Manifest;

    move-result-object v4

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_141

    .line 230
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->encoding:Ljava/lang/String;

    if-nez v0, :cond_17

    const-string v0, "UTF-8"

    :cond_17
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 231
    :try_start_1b
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
    :try_end_2d
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_1b .. :try_end_2d} :catch_80
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2d} :catch_a5

    .line 233
    :try_start_2d
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Manifest;

    invoke-direct {v2, v3}, Lorg/apache/tools/ant/taskdefs/Manifest;-><init>(Ljava/io/Reader;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_7b

    .line 234
    :try_start_32
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_35
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_32 .. :try_end_35} :catch_137
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_13c

    move-object v0, v1

    .line 244
    :goto_36
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
    :try_start_48
    const-string v1, "update"

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mode:Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/ManifestTask$Mode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->manifestFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 248
    if-eqz v2, :cond_c6

    .line 249
    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    invoke-virtual {v4, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V

    .line 255
    :cond_66
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->nestedManifest:Lorg/apache/tools/ant/taskdefs/Manifest;

    const/4 v1, 0x0

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->mergeClassPaths:Z

    invoke-virtual {v4, v0, v1, v3}, Lorg/apache/tools/ant/taskdefs/Manifest;->merge(Lorg/apache/tools/ant/taskdefs/Manifest;ZZ)V
    :try_end_6e
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_48 .. :try_end_6e} :catch_c9

    .line 258
    invoke-virtual {v4, v2}, Lorg/apache/tools/ant/taskdefs/Manifest;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 261
    const-string v0, "Manifest has not changed, do not recreate"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->log(Ljava/lang/String;I)V

    .line 275
    :goto_7a
    return-void

    .line 231
    :catchall_7b
    move-exception v0

    :try_start_7c
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_132

    :goto_7f
    :try_start_7f
    throw v0
    :try_end_80
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_7f .. :try_end_80} :catch_80
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_80} :catch_a5

    .line 234
    :catch_80
    move-exception v0

    move-object v3, v0

    .line 235
    :goto_82
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

    goto :goto_36

    .line 237
    :catch_a5
    move-exception v0

    move-object v3, v0

    .line 238
    :goto_a7
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

    goto/16 :goto_36

    .line 250
    :cond_c6
    if-eqz v0, :cond_66

    .line 251
    :try_start_c8
    throw v0
    :try_end_c9
    .catch Lorg/apache/tools/ant/taskdefs/ManifestException; {:try_start_c8 .. :try_end_c9} :catch_c9

    .line 256
    :catch_c9
    move-exception v0

    .line 257
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Manifest is invalid"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/ManifestTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 266
    :cond_d6
    :try_start_d6
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
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_ef} :catch_ff

    .line 268
    :try_start_ef
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/ManifestTask;->flattenClassPaths:Z

    invoke-virtual {v4, v1, v0}, Lorg/apache/tools/ant/taskdefs/Manifest;->write(Ljava/io/PrintWriter;Z)V

    .line 269
    invoke-virtual {v1}, Ljava/io/PrintWriter;->checkError()Z
    :try_end_f7
    .catchall {:try_start_ef .. :try_end_f7} :catchall_125

    move-result v0

    if-nez v0, :cond_11d

    .line 272
    :try_start_fa
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_ff

    goto/16 :goto_7a

    :catch_ff
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
    :cond_11d
    :try_start_11d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Encountered an error writing manifest"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_125
    .catchall {:try_start_11d .. :try_end_125} :catchall_125

    .line 266
    :catchall_125
    move-exception v0

    :try_start_126
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_135

    :goto_129
    :try_start_129
    throw v0
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12a} :catch_ff

    .line 222
    :cond_12a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "the file attribute is required"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :catchall_132
    move-exception v2

    goto/16 :goto_7f

    .line 266
    :catchall_135
    move-exception v1

    goto :goto_129

    .line 234
    :catch_137
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    goto/16 :goto_82

    .line 237
    :catch_13c
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    goto/16 :goto_a7

    :cond_141
    move-object v0, v1

    move-object v2, v1

    goto/16 :goto_36
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
