.class public Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;
.super Ljava/lang/Object;
.source "ResourceContains.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/condition/Condition;


# instance fields
.field private casesensitive:Z

.field private project:Lorg/apache/tools/ant/Project;

.field private refid:Ljava/lang/String;

.field private resource:Lorg/apache/tools/ant/types/Resource;

.field private substring:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->casesensitive:Z

    return-void
.end method

.method private resolveRefid()V
    .registers 9

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 80
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 83
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    instance-of v1, v2, Lorg/apache/tools/ant/types/Resource;

    if-nez v1, :cond_53

    .line 85
    instance-of v1, v2, Lorg/apache/tools/ant/types/ResourceCollection;

    if-eqz v1, :cond_34

    .line 86
    move-object v0, v2

    check-cast v0, Lorg/apache/tools/ant/types/ResourceCollection;

    move-object v1, v0

    .line 87
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v3

    if-ne v3, v4, :cond_2c

    .line 88
    invoke-interface {v1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    :cond_2c
    move-object v1, v2

    .line 94
    :goto_2d
    check-cast v1, Lorg/apache/tools/ant/types/Resource;

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;
    :try_end_31
    .catchall {:try_start_2 .. :try_end_31} :catchall_47

    .line 96
    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    .line 97
    return-void

    .line 91
    :cond_34
    :try_start_34
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v3, "Illegal value at \'%s\': %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-direct {v1, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_47

    .line 96
    :catchall_47
    move-exception v1

    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    .line 97
    throw v1

    .line 81
    :cond_4b
    :try_start_4b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Cannot retrieve refid; project unset"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_47

    :cond_53
    move-object v1, v2

    goto :goto_2d
.end method

.method private validate()V
    .registers 3

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    if-nez v1, :cond_1a

    .line 120
    :cond_8
    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 121
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resolveRefid()V

    .line 123
    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->substring:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 127
    return-void

    .line 118
    :cond_1a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot set both resource and refid"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_22
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "both resource and substring are required in <resourcecontains>"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eval()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->validate()V

    .line 138
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->substring:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 139
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 140
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    const-string v1, "Substring is empty; returning true"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_78

    .line 143
    :cond_1c
    monitor-exit p0

    const/4 v0, 0x1

    .line 157
    :goto_1e
    return v0

    .line 145
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->getSize()J
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_78

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2e

    .line 146
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_1e

    .line 149
    :cond_2e
    :try_start_2e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    .line 150
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3e} :catch_5e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_78

    .line 151
    :try_start_3e
    invoke-static {v2}, Lorg/apache/tools/ant/util/FileUtils;->safeReadFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->substring:Ljava/lang/String;

    .line 153
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->casesensitive:Z

    if-nez v3, :cond_50

    .line 154
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_50
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_59

    move-result v0

    .line 158
    :try_start_54
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_5e
    .catchall {:try_start_54 .. :try_end_57} :catchall_78

    .line 157
    monitor-exit p0

    goto :goto_1e

    .line 149
    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_7b

    :goto_5d
    :try_start_5d
    throw v0
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5e} :catch_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_78

    .line 158
    :catch_5e
    move-exception v0

    .line 159
    :try_start_5f
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There was a problem accessing resource : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_78
    .catchall {:try_start_5f .. :try_end_78} :catchall_78

    .line 135
    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0

    .line 149
    :catchall_7b
    move-exception v1

    goto :goto_5d
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 58
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public setCasesensitive(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->casesensitive:Z

    .line 114
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->project:Lorg/apache/tools/ant/Project;

    .line 51
    return-void
.end method

.method public setRefid(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->refid:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setResource(Ljava/lang/String;)V
    .registers 4

    .line 66
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->resource:Lorg/apache/tools/ant/types/Resource;

    .line 67
    return-void
.end method

.method public setSubstring(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/condition/ResourceContains;->substring:Ljava/lang/String;

    .line 106
    return-void
.end method
