.class public Lorg/apache/tools/ant/taskdefs/Concat$TextElement;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "Concat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextElement"
.end annotation


# instance fields
.field private encoding:Ljava/lang/String;

.field private filtering:Z

.field private trim:Z

.field private trimLeading:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trimLeading:Z

    .line 94
    iput-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trim:Z

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->filtering:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->encoding:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/tools/ant/taskdefs/Concat$TextElement;)Z
    .registers 2

    .line 91
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->getFiltering()Z

    move-result v0

    return v0
.end method

.method private getFiltering()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->filtering:Z

    return v0
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 183
    :cond_a
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 186
    :cond_1a
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trimLeading:Z

    if-eqz v0, :cond_51

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move v3, v1

    move v0, v2

    :goto_2c
    if-ge v3, v6, :cond_4b

    aget-char v7, v5, v3

    .line 190
    if-eqz v0, :cond_3e

    .line 191
    const/16 v8, 0x20

    if-eq v7, v8, :cond_3a

    const/16 v8, 0x9

    if-ne v7, v8, :cond_3d

    .line 189
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_3d
    move v0, v1

    .line 196
    :cond_3e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    const/16 v8, 0xa

    if-eq v7, v8, :cond_49

    const/16 v8, 0xd

    if-ne v7, v8, :cond_3a

    :cond_49
    move v0, v2

    .line 198
    goto :goto_3a

    .line 201
    :cond_4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 203
    :cond_51
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trim:Z

    if-eqz v0, :cond_5d

    .line 204
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    .line 206
    :cond_5d
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->encoding:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 137
    :try_start_8
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->encoding:Ljava/lang/String;

    if-nez v0, :cond_20

    .line 138
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_16} :catch_38
    .catchall {:try_start_8 .. :try_end_16} :catchall_40

    .line 144
    :goto_16
    :try_start_16
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->value:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1c} :catch_53
    .catchall {:try_start_16 .. :try_end_1c} :catchall_56

    .line 148
    invoke-static {v0}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 149
    return-void

    .line 140
    :cond_20
    :try_start_20
    new-instance v1, Ljava/io/InputStreamReader;

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->encoding:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_37} :catch_38
    .catchall {:try_start_20 .. :try_end_37} :catchall_40

    goto :goto_16

    .line 145
    :catch_38
    move-exception v0

    move-object v1, v0

    .line 146
    :goto_3a
    :try_start_3a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    .line 148
    :catchall_40
    move-exception v0

    move-object v1, v0

    :goto_42
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/Reader;)V

    .line 149
    throw v1

    .line 132
    :cond_46
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "File %s does not exist."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 145
    :catch_53
    move-exception v1

    move-object v2, v0

    goto :goto_3a

    .line 148
    :catchall_56
    move-exception v1

    move-object v2, v0

    goto :goto_42
.end method

.method public setFiltering(Z)V
    .registers 2

    .line 106
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->filtering:Z

    .line 107
    return-void
.end method

.method public setTrim(Z)V
    .registers 2

    .line 173
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trim:Z

    .line 174
    return-void
.end method

.method public setTrimLeading(Z)V
    .registers 2

    .line 165
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$TextElement;->trimLeading:Z

    .line 166
    return-void
.end method
