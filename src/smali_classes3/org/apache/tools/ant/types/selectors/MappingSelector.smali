.class public abstract Lorg/apache/tools/ant/types/selectors/MappingSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "MappingSelector.java"


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;


# instance fields
.field protected granularity:I

.field protected map:Lorg/apache/tools/ant/util/FileNameMapper;

.field protected mapperElement:Lorg/apache/tools/ant/types/Mapper;

.field protected targetdir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    .line 40
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    .line 41
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 42
    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 43
    sget-object v0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/FileUtils;->getFileTimestampGranularity()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->granularity:I

    return-void
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/util/FileNameMapper;)V
    .registers 4

    .line 77
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 81
    return-void

    .line 78
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

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Mapper;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    .line 67
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Cannot define more than one mapper"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 8

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->validate()V

    .line 120
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-interface {v1, p2}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 123
    if-nez v1, :cond_0

    .line 134
    :goto_0
    return v0

    .line 127
    :cond_0
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 131
    aget-object v0, v1, v0

    .line 132
    sget-object v1, Lorg/apache/tools/ant/types/selectors/MappingSelector;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v2, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    invoke-virtual {v1, v2, v0}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 134
    invoke-virtual {p0, p3, v0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->selectionTest(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid destination file results for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    .line 129
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with filename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected abstract selectionTest(Ljava/io/File;Ljava/io/File;)Z
.end method

.method public setGranularity(I)V
    .registers 2

    .line 152
    iput p1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->granularity:I

    .line 153
    return-void
.end method

.method public setTargetdir(Ljava/io/File;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    .line 55
    return-void
.end method

.method public verifySettings()V
    .registers 2

    .line 89
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->targetdir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 90
    const-string v0, "The targetdir attribute is required."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->setError(Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-nez v0, :cond_2

    .line 94
    new-instance v0, Lorg/apache/tools/ant/util/IdentityMapper;

    invoke-direct {v0}, Lorg/apache/tools/ant/util/IdentityMapper;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Mapper;->getImplementation()Lorg/apache/tools/ant/util/FileNameMapper;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/MappingSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    .line 97
    if-nez v0, :cond_1

    .line 98
    const-string v0, "Could not set <mapper> element."

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method
