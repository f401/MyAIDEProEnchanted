.class public final Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
.super Ljava/lang/Object;
.source "ChainReaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field public bufferSize:I

.field public filterChains:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field public primaryReader:Ljava/io/Reader;

.field private project:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->bufferSize:I

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->filterChains:Ljava/util/Vector;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/io/Reader;Ljava/lang/Iterable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/io/Reader;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x2000

    iput v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->bufferSize:I

    .line 98
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->filterChains:Ljava/util/Vector;

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->withProject(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->withPrimaryReader(Ljava/io/Reader;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->withFilterChains(Ljava/lang/Iterable;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    .line 121
    return-void
.end method

.method static synthetic access$000(Ljava/util/List;)V
    .registers 1

    .line 49
    invoke-static {p0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->cleanUpClassLoaders(Ljava/util/List;)V

    return-void
.end method

.method private static cleanUpClassLoaders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/AntClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 284
    sget-object v0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda1;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 285
    return-void
.end method

.method private expandReader(Lorg/apache/tools/ant/types/AntFilterReader;Ljava/io/Reader;Ljava/util/List;)Ljava/io/Reader;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/types/AntFilterReader;",
            "Ljava/io/Reader;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/AntClassLoader;",
            ">;)",
            "Ljava/io/Reader;"
        }
    .end annotation

    .line 307
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AntFilterReader;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AntFilterReader;->getClasspath()Lorg/apache/tools/ant/types/Path;

    move-result-object v1

    .line 309
    if-eqz v2, :cond_8e

    .line 313
    if-nez v1, :cond_57

    .line 314
    :try_start_c
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 315
    const-class v3, Ljava/io/FilterReader;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_15} :catch_6f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_15} :catch_87
    .catch Ljava/lang/InstantiationException; {:try_start_c .. :try_end_15} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_15} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_15} :catch_94

    move-result-object v1

    move-object v3, v1

    .line 326
    :goto_17
    :try_start_17
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v4, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda4;

    .line 329
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 332
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 334
    new-instance v4, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 338
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 340
    invoke-direct {p0, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProjectOnObject(Ljava/lang/Object;)V

    .line 341
    const-class v1, Lorg/apache/tools/ant/types/Parameterizable;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 342
    move-object v0, v2

    check-cast v0, Lorg/apache/tools/ant/types/Parameterizable;

    move-object v1, v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AntFilterReader;->getParams()[Lorg/apache/tools/ant/types/Parameter;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/tools/ant/types/Parameterizable;->setParameters([Lorg/apache/tools/ant/types/Parameter;)V

    .line 344
    :cond_54
    check-cast v2, Ljava/io/Reader;
    :try_end_56
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_56} :catch_87
    .catch Ljava/lang/InstantiationException; {:try_start_17 .. :try_end_56} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_56} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_56} :catch_94

    .line 353
    :goto_56
    return-object v2

    .line 317
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/AntFilterReader;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/tools/ant/Project;->createClassLoader(Lorg/apache/tools/ant/types/Path;)Lorg/apache/tools/ant/AntClassLoader;

    move-result-object v1

    .line 319
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 321
    const-class v3, Ljava/io/FilterReader;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_6c
    .catch Ljava/lang/ClassCastException; {:try_start_57 .. :try_end_6c} :catch_6f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_57 .. :try_end_6c} :catch_87
    .catch Ljava/lang/InstantiationException; {:try_start_57 .. :try_end_6c} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_57 .. :try_end_6c} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_57 .. :try_end_6c} :catch_94

    move-result-object v1

    move-object v3, v1

    goto :goto_17

    .line 323
    :catch_6f
    move-exception v1

    .line 324
    :try_start_70
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 325
    const-string v3, "%s does not extend %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-class v5, Ljava/io/FilterReader;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-direct {v1, v3, v4}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_87
    .catch Ljava/lang/ClassNotFoundException; {:try_start_70 .. :try_end_87} :catch_87
    .catch Ljava/lang/InstantiationException; {:try_start_70 .. :try_end_87} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_70 .. :try_end_87} :catch_92
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_70 .. :try_end_87} :catch_94

    .line 345
    :catch_87
    move-exception v1

    .line 347
    :goto_88
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_8e
    move-object v2, p2

    .line 353
    goto :goto_56

    .line 345
    :catch_90
    move-exception v1

    goto :goto_88

    :catch_92
    move-exception v1

    goto :goto_88

    :catch_94
    move-exception v1

    goto :goto_88
.end method

.method static synthetic lambda$expandReader$0(Ljava/lang/reflect/Constructor;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v2

    if-ne v2, v0, :cond_17

    .line 330
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    aget-object v2, v2, v1

    .line 331
    const-class v3, Ljava/io/Reader;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 329
    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method static synthetic lambda$expandReader$1(Ljava/lang/String;)Lorg/apache/tools/ant/BuildException;
    .registers 6

    .line 335
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "%s does not define a public constructor that takes in a %s as its single argument."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/io/Reader;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private setProjectOnObject(Ljava/lang/Object;)V
    .registers 4

    .line 270
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    if-nez v0, :cond_5

    .line 278
    :goto_4
    return-void

    .line 273
    :cond_5
    instance-of v1, p1, Lorg/apache/tools/ant/filters/BaseFilterReader;

    if-eqz v1, :cond_f

    .line 274
    check-cast p1, Lorg/apache/tools/ant/filters/BaseFilterReader;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/filters/BaseFilterReader;->setProject(Lorg/apache/tools/ant/Project;)V

    goto :goto_4

    .line 277
    :cond_f
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->setProjectReference(Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public getAssembledReader()Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->primaryReader:Ljava/io/Reader;

    if-eqz v0, :cond_6a

    .line 233
    iget-object v1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->primaryReader:Ljava/io/Reader;

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->filterChains:Ljava/util/Vector;

    .line 237
    invoke-virtual {v0}, Ljava/util/Vector;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda3;

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda2;

    .line 238
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 240
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    .line 241
    :try_start_2d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 244
    instance-of v4, v0, Lorg/apache/tools/ant/types/AntFilterReader;

    if-eqz v4, :cond_47

    .line 245
    check-cast v0, Lorg/apache/tools/ant/types/AntFilterReader;

    .line 246
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->expandReader(Lorg/apache/tools/ant/types/AntFilterReader;Ljava/io/Reader;Ljava/util/List;)Ljava/io/Reader;

    move-result-object v0

    :goto_45
    move-object v1, v0

    .line 253
    goto :goto_31

    .line 248
    :cond_47
    instance-of v4, v0, Lorg/apache/tools/ant/filters/ChainableReader;

    if-eqz v4, :cond_72

    .line 249
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProjectOnObject(Ljava/lang/Object;)V

    .line 250
    check-cast v0, Lorg/apache/tools/ant/filters/ChainableReader;

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/filters/ChainableReader;->chain(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    .line 251
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProjectOnObject(Ljava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_2d .. :try_end_57} :catchall_58

    goto :goto_45

    .line 256
    :catchall_58
    move-exception v0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_62

    .line 257
    invoke-static {v2}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->cleanUpClassLoaders(Ljava/util/List;)V

    .line 259
    :cond_62
    throw v0

    .line 261
    :cond_63
    new-instance v0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;-><init>(Lorg/apache/tools/ant/filters/util/ChainReaderHelper;Ljava/io/Reader;Ljava/util/List;Lorg/apache/tools/ant/filters/util/ChainReaderHelper$1;)V

    return-object v0

    .line 230
    :cond_6a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "primaryReader must not be null."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    move-object v0, v1

    goto :goto_45
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method public readFully(Ljava/io/Reader;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    iget v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->bufferSize:I

    invoke-static {p1, v0}, Lorg/apache/tools/ant/util/FileUtils;->readFully(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBufferSize(I)V
    .registers 2

    .line 174
    iput p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->bufferSize:I

    .line 175
    return-void
.end method

.method public setFilterChains(Ljava/util/Vector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->filterChains:Ljava/util/Vector;

    .line 194
    return-void
.end method

.method public setPrimaryReader(Ljava/io/Reader;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->primaryReader:Ljava/io/Reader;

    .line 129
    return-void
.end method

.method public setProject(Lorg/apache/tools/ant/Project;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->project:Lorg/apache/tools/ant/Project;

    .line 147
    return-void
.end method

.method public with(Ljava/util/function/Consumer;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Lorg/apache/tools/ant/filters/util/ChainReaderHelper;",
            ">;)",
            "Lorg/apache/tools/ant/filters/util/ChainReaderHelper;"
        }
    .end annotation

    .line 219
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 220
    return-object p0
.end method

.method public withBufferSize(I)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .registers 2

    .line 183
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setBufferSize(I)V

    .line 184
    return-object p0
.end method

.method public withFilterChains(Ljava/lang/Iterable;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/tools/ant/types/FilterChain;",
            ">;)",
            "Lorg/apache/tools/ant/filters/util/ChainReaderHelper;"
        }
    .end annotation

    .line 203
    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 204
    check-cast p1, Ljava/util/Vector;

    .line 209
    :goto_6
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setFilterChains(Ljava/util/Vector;)V

    .line 210
    return-object p0

    .line 206
    :cond_a
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/Vector;)V

    invoke-interface {p1, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    move-object p1, v0

    goto :goto_6
.end method

.method public withPrimaryReader(Ljava/io/Reader;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .registers 2

    .line 137
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setPrimaryReader(Ljava/io/Reader;)V

    .line 138
    return-object p0
.end method

.method public withProject(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
    .registers 2

    .line 155
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 156
    return-object p0
.end method
