.class public Lorg/apache/tools/ant/types/TarFileSet;
.super Lorg/apache/tools/ant/types/ArchiveFileSet;
.source "TarFileSet.java"


# instance fields
.field private gid:I

.field private groupIdSet:Z

.field private groupName:Ljava/lang/String;

.field private groupNameSet:Z

.field private uid:I

.field private userIdSet:Z

.field private userName:Ljava/lang/String;

.field private userNameSet:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/FileSet;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method protected constructor <init>(Lorg/apache/tools/ant/types/TarFileSet;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;-><init>(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private checkTarFileSetAttributesAllowed()V
    .registers 3

    .line 274
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 275
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 276
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    .line 276
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/tools/ant/types/TarFileSet;

    if-eqz v0, :cond_1f

    .line 279
    :cond_1c
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkAttributesAllowed()V

    .line 281
    :cond_1f
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    .line 261
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 262
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/AbstractFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 264
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lorg/apache/tools/ant/types/ArchiveFileSet;->clone()Ljava/lang/Object;

    move-result-object v0

    goto :goto_e
.end method

.method protected configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V
    .registers 3

    .line 244
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    .line 245
    instance-of v0, p1, Lorg/apache/tools/ant/types/TarFileSet;

    if-eqz v0, :cond_1d

    .line 246
    check-cast p1, Lorg/apache/tools/ant/types/TarFileSet;

    .line 247
    iget-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/TarFileSet;->setUserName(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/TarFileSet;->setGroup(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->uid:I

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/TarFileSet;->setUid(I)V

    .line 250
    iget v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->gid:I

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/TarFileSet;->setGid(I)V

    .line 252
    :cond_1d
    return-void
.end method

.method public getGid()I
    .registers 2

    .line 164
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 165
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/TarFileSet;->getGid()I

    move-result v0

    .line 167
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->gid:I

    goto :goto_10
.end method

.method public getGroup()Ljava/lang/String;
    .registers 2

    .line 136
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 137
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/TarFileSet;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    goto :goto_10
.end method

.method protected getRef()Lorg/apache/tools/ant/types/AbstractFileSet;
    .registers 2

    .line 233
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    return-object v0
.end method

.method protected getRef(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/AbstractFileSet;
    .registers 4

    .line 212
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/TarFileSet;->dieOnCircularReference(Lorg/apache/tools/ant/Project;)V

    .line 213
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Reference;->getReferencedObject(Lorg/apache/tools/ant/Project;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    instance-of v1, v0, Lorg/apache/tools/ant/types/TarFileSet;

    if-eqz v1, :cond_12

    .line 215
    check-cast v0, Lorg/apache/tools/ant/types/AbstractFileSet;

    .line 220
    :goto_11
    return-object v0

    .line 217
    :cond_12
    instance-of v1, v0, Lorg/apache/tools/ant/types/FileSet;

    if-eqz v1, :cond_22

    .line 218
    new-instance v1, Lorg/apache/tools/ant/types/TarFileSet;

    check-cast v0, Lorg/apache/tools/ant/types/FileSet;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/TarFileSet;-><init>(Lorg/apache/tools/ant/types/FileSet;)V

    .line 219
    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/TarFileSet;->configureFileSet(Lorg/apache/tools/ant/types/ArchiveFileSet;)V

    move-object v0, v1

    .line 220
    goto :goto_11

    .line 222
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRefid()Lorg/apache/tools/ant/types/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Reference;->getRefId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t denote a tarfileset or a fileset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUid()I
    .registers 2

    .line 108
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/TarFileSet;->getUid()I

    move-result v0

    .line 111
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->uid:I

    goto :goto_10
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .line 80
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->isReference()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 81
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getRef()Lorg/apache/tools/ant/types/AbstractFileSet;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/TarFileSet;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/TarFileSet;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    goto :goto_10
.end method

.method public hasGroupBeenSet()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupNameSet:Z

    return v0
.end method

.method public hasGroupIdBeenSet()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupIdSet:Z

    return v0
.end method

.method public hasUserIdBeenSet()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userIdSet:Z

    return v0
.end method

.method public hasUserNameBeenSet()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userNameSet:Z

    return v0
.end method

.method protected newArchiveScanner()Lorg/apache/tools/ant/types/ArchiveScanner;
    .registers 3

    .line 183
    new-instance v0, Lorg/apache/tools/ant/types/TarScanner;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/TarScanner;-><init>()V

    .line 184
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/TarScanner;->setEncoding(Ljava/lang/String;)V

    .line 185
    return-object v0
.end method

.method public setGid(I)V
    .registers 3

    .line 155
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkTarFileSetAttributesAllowed()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupIdSet:Z

    .line 157
    iput p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->gid:I

    .line 158
    return-void
.end method

.method public setGroup(Ljava/lang/String;)V
    .registers 3

    .line 127
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkTarFileSetAttributesAllowed()V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupNameSet:Z

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupName:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setRefid(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 198
    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userNameSet:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userIdSet:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupNameSet:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->groupIdSet:Z

    if-nez v0, :cond_14

    .line 201
    invoke-super {p0, p1}, Lorg/apache/tools/ant/types/ArchiveFileSet;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 202
    return-void

    .line 199
    :cond_14
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/TarFileSet;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setUid(I)V
    .registers 3

    .line 99
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkTarFileSetAttributesAllowed()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userIdSet:Z

    .line 101
    iput p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->uid:I

    .line 102
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Lorg/apache/tools/ant/types/TarFileSet;->checkTarFileSetAttributesAllowed()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/TarFileSet;->userNameSet:Z

    .line 73
    iput-object p1, p0, Lorg/apache/tools/ant/types/TarFileSet;->userName:Ljava/lang/String;

    .line 74
    return-void
.end method
