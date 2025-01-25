.class public abstract Lorg/apache/tools/ant/types/resources/ArchiveResource;
.super Lorg/apache/tools/ant/types/Resource;
.source "ArchiveResource.java"


# static fields
.field private static final NULL_ARCHIVE:I


# instance fields
.field private archive:Lorg/apache/tools/ant/types/Resource;

.field private haveEntry:Z

.field private mode:I

.field private modeSet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const-string v0, "null archive"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Resource;->getMagicNumber([B)I

    move-result v0

    sput v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->NULL_ARCHIVE:I

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 38
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    .line 40
    iput v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;)V
    .registers 3

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;-><init>(Ljava/io/File;Z)V

    .line 55
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 38
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    .line 40
    iput v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    .line 64
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->setArchive(Ljava/io/File;)V

    .line 65
    iput-boolean p2, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    .line 66
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/Resource;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lorg/apache/tools/ant/types/Resource;-><init>()V

    .line 38
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    .line 39
    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    .line 40
    iput v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V

    .line 76
    iput-boolean p2, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z

    .line 77
    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .registers 4

    .line 104
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkChildrenAllowed()V

    .line 105
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_23

    .line 109
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 113
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Resource;

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    .line 114
    return-void

    .line 110
    :cond_1b
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "only single argument resource collections are supported as archives"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_23
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "you must not specify more than one archive"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final checkEntry()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->dieOnCircularReference()V

    .line 259
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_38

    if-eqz v0, :cond_a

    .line 260
    monitor-exit p0

    .line 278
    :goto_9
    return-void

    .line 262
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getName()Ljava/lang/String;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_51

    .line 266
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_49

    .line 270
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 273
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->fetchEntry()V

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->haveEntry:Z
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_38

    .line 278
    monitor-exit p0

    goto :goto_9

    .line 274
    :cond_2a
    :try_start_2a
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "%s denotes a directory."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_38

    .line 257
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_3b
    :try_start_3b
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "%s does not exist."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 268
    :cond_49
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "archive attribute not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_51
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "entry name not set"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_38
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .line 33
    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/tools/ant/types/Resource;)I
    .registers 3

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->compareTo(Lorg/apache/tools/ant/types/Resource;)I

    move-result v0

    goto :goto_7
.end method

.method protected dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/tools/ant/Project;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 290
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isChecked()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v0

    if-eqz v0, :cond_9

    .line 291
    monitor-exit p0

    .line 301
    :goto_8
    return-void

    .line 293
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 294
    invoke-super {p0, p1, p2}, Lorg/apache/tools/ant/types/Resource;->dieOnCircularReference(Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_20

    .line 301
    :goto_12
    monitor-exit p0

    goto :goto_8

    .line 296
    :cond_14
    :try_start_14
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    if-eqz v0, :cond_1b

    .line 297
    invoke-static {v0, p1, p2}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->pushAndInvokeCircularReferenceCheck(Lorg/apache/tools/ant/types/DataType;Ljava/util/Stack;Lorg/apache/tools/ant/Project;)V

    .line 299
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->setChecked(Z)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_20

    goto :goto_12

    .line 289
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 219
    if-ne p0, p1, :cond_5

    .line 229
    :cond_4
    :goto_4
    return v0

    .line 222
    :cond_5
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 223
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4

    .line 225
    :cond_14
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    :cond_24
    move v0, v1

    .line 226
    goto :goto_4

    .line 228
    :cond_26
    check-cast p1, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    .line 229
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/tools/ant/types/Resource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 230
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_44
    move v0, v1

    goto :goto_4
.end method

.method protected abstract fetchEntry()V
.end method

.method public getArchive()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    goto :goto_e
.end method

.method public getLastModified()J
    .registers 3

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getLastModified()J

    move-result-wide v0

    .line 134
    :goto_e
    return-wide v0

    .line 133
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 134
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->getLastModified()J

    move-result-wide v0

    goto :goto_e
.end method

.method public getMode()I
    .registers 2

    .line 181
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getMode()I

    move-result v0

    .line 185
    :goto_e
    return v0

    .line 184
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 185
    iget v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    goto :goto_e
.end method

.method protected bridge synthetic getRef()Lorg/apache/tools/ant/types/Resource;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    return-object v0
.end method

.method protected getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;
    .registers 2

    .line 305
    const-class v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getCheckedRef(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 143
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getSize()J

    move-result-wide v0

    .line 147
    :goto_e
    return-wide v0

    .line 146
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 147
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->getSize()J

    move-result-wide v0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    .line 239
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v1

    .line 240
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    if-nez v0, :cond_e

    sget v0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->NULL_ARCHIVE:I

    .line 239
    :goto_c
    mul-int/2addr v0, v1

    return v0

    .line 240
    :cond_e
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Resource;->hashCode()I

    move-result v0

    goto :goto_c
.end method

.method public isDirectory()Z
    .registers 2

    .line 156
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 157
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isDirectory()Z

    move-result v0

    .line 160
    :goto_e
    return v0

    .line 159
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 160
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    goto :goto_e
.end method

.method public isExists()Z
    .registers 2

    .line 169
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 170
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isExists()Z

    move-result v0

    .line 173
    :goto_e
    return v0

    .line 172
    :cond_f
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkEntry()V

    .line 173
    invoke-super {p0}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v0

    goto :goto_e
.end method

.method public setArchive(Ljava/io/File;)V
    .registers 3

    .line 84
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkAttributesAllowed()V

    .line 85
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    .line 86
    return-void
.end method

.method public setMode(I)V
    .registers 3

    .line 93
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->checkAttributesAllowed()V

    .line 94
    iput p1, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->mode:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    .line 96
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->archive:Lorg/apache/tools/ant/types/Resource;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/resources/ArchiveResource;->modeSet:Z

    if-nez v0, :cond_c

    .line 197
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/Resource;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 198
    return-void

    .line 195
    :cond_c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 249
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getRef()Lorg/apache/tools/ant/types/resources/ArchiveResource;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    .line 250
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getArchive()Lorg/apache/tools/ant/types/Resource;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Resource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/resources/ArchiveResource;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
