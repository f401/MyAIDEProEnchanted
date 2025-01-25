.class public Lorg/apache/tools/ant/types/selectors/DependSelector;
.super Lorg/apache/tools/ant/types/selectors/MappingSelector;
.source "DependSelector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/MappingSelector;-><init>()V

    return-void
.end method


# virtual methods
.method public selectionTest(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    .line 62
    iget v0, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->granularity:I

    invoke-static {p1, p2, v0}, Lorg/apache/tools/ant/types/selectors/SelectorUtils;->isOutOfDate(Ljava/io/File;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{dependselector targetdir: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->targetdir:Ljava/io/File;

    if-nez v1, :cond_36

    .line 39
    const-string v1, "NOT YET SET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :goto_10
    const-string v1, " granularity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->granularity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    if-eqz v1, :cond_40

    .line 45
    const-string v1, " mapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->map:Lorg/apache/tools/ant/util/FileNameMapper;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    :cond_2c
    :goto_2c
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 41
    :cond_36
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->targetdir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 47
    :cond_40
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    if-eqz v1, :cond_2c

    .line 48
    const-string v1, " mapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/DependSelector;->mapperElement:Lorg/apache/tools/ant/types/Mapper;

    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Mapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c
.end method
