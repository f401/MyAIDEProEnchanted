.class public Lorg/apache/tools/ant/types/selectors/ExtendSelector;
.super Lorg/apache/tools/ant/types/selectors/BaseSelector;
.source "ExtendSelector.java"


# instance fields
.field private classname:Ljava/lang/String;

.field private classpath:Lorg/apache/tools/ant/types/Path;

.field private dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/types/Parameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lorg/apache/tools/ant/types/selectors/BaseSelector;-><init>()V

    .line 41
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    .line 45
    iput-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    return-void
.end method


# virtual methods
.method public addParam(Lorg/apache/tools/ant/types/Parameter;)V
    .registers 3

    .line 98
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public final createClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 121
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0}, Lorg/apache/tools/ant/types/Path;->createPath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->noChildrenAllowed()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public final getClasspath()Lorg/apache/tools/ant/types/Path;
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->validate()V

    .line 188
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    instance-of v1, v0, Lorg/apache/tools/ant/types/selectors/ExtendFileSelector;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Lorg/apache/tools/ant/types/selectors/ExtendFileSelector;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    .line 191
    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/tools/ant/types/Parameter;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/tools/ant/types/Parameter;

    .line 190
    invoke-interface {v0, v1}, Lorg/apache/tools/ant/types/selectors/ExtendFileSelector;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/tools/ant/types/selectors/FileSelector;->isSelected(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public selectorCreate()V
    .registers 4

    .line 60
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 63
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    :goto_0
    const-class v1, Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/selectors/FileSelector;

    iput-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    .line 72
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    .line 90
    :cond_0
    :goto_1
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selector "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not initialized, class not accessible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 81
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selector "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not initialized, could not create class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 76
    :catch_2
    move-exception v0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selector "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not initialized, no such class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_2
    const-string v0, "There is no classname specified"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public setClassname(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public final setClasspath(Lorg/apache/tools/ant/types/Path;)V
    .registers 3

    .line 106
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->isReference()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classpath:Lorg/apache/tools/ant/types/Path;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->append(Lorg/apache/tools/ant/types/Path;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public setClasspathref(Lorg/apache/tools/ant/types/Reference;)V
    .registers 3

    .line 144
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->isReference()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->createClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/Path;->setRefid(Lorg/apache/tools/ant/types/Reference;)V

    .line 148
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->tooManyAttributes()Lorg/apache/tools/ant/BuildException;

    move-result-object v0

    throw v0
.end method

.method public verifySettings()V
    .registers 3

    .line 159
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->selectorCreate()V

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->classname:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 163
    :cond_1
    const-string v0, "The classname attribute is required"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    .line 171
    :cond_2
    :goto_0
    return-void

    .line 164
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->dynselector:Lorg/apache/tools/ant/types/selectors/FileSelector;

    if-nez v0, :cond_4

    .line 165
    const-string v0, "Internal Error: The custom selector was not created"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_4
    instance-of v0, v0, Lorg/apache/tools/ant/types/selectors/ExtendFileSelector;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->parameters:Ljava/util/List;

    .line 167
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    const-string v0, "Cannot set parameters on custom selector that does not implement ExtendFileSelector"

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/selectors/ExtendSelector;->setError(Ljava/lang/String;)V

    goto :goto_0
.end method
