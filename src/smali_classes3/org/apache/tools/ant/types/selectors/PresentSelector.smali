.class public Lorg/apache/tools/ant/types/selectors/PresentSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "PresentSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/selectors/PresentSelector$FilePresence;
    }
.end annotation


# instance fields
.field private destmustexist:Z

.field private map:Lorg/apache/tools/ant/util/FileNameMapper;

.field private mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field private targetdir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->destmustexist:Z

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 4

    .line 100
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 104
    return-void

    .line 101
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createMapper()Lorg/apache/tools/ant/types/Mapper;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/PresentSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 90
    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/PresentSelector;->validate()V

    .line 161
    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {v2, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 164
    if-nez v2, :cond_0

    .line 174
    :goto_0
    return v1

    .line 168
    :cond_0
    array-length v3, v2

    if-ne v3, v0, :cond_1

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 172
    aget-object v2, v2, v1

    .line 173
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    invoke-virtual {v3, v4, v2}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->destmustexist:Z

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid destination file results for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with filename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setPresent(Lorg/apache/tools/ant/types/selectors/PresentSelector$FilePresence;)V
    .registers 3

    .line 119
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/selectors/PresentSelector$FilePresence;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->destmustexist:Z

    .line 122
    :cond_0
    return-void
.end method

.method public setTargetdir(Ljava/io/File;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{presentselector targetdir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    if-nez v1, :cond_1

    .line 51
    const-string v1, "NOT YET SET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_0
    const-string v1, " present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->destmustexist:Z

    if-eqz v1, :cond_2

    .line 57
    const-string v1, "both"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v1, :cond_3

    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_0
    :goto_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    :cond_2
    const-string v1, "srconly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Mapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public verifySettings()V
    .registers 2

    .line 130
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->targetdir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "The targetdir attribute is required."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/PresentSelector;->setError(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/PresentSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 138
    if-nez v0, :cond_1

    .line 139
    const-string v0, "Could not set <mapper> element."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/PresentSelector;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method
