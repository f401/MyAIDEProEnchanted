.class public Lorg/apache/tools/ant/util/ChainedMapper;
.super Lorg/apache/tools/ant/util/ContainerMapper;
.source "ChainedMapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ContainerMapper;-><init>()V

    return-void
.end method

.method static synthetic lambda$mapFileName$0(I)[Ljava/lang/String;
    .registers 2

    .line 41
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$mapFileName$1([Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;
    .registers 4

    .line 41
    invoke-static {p0}, Lorg/apache/tools/ant/DirectoryScanner$$ExternalSyntheticStaticInterfaceCall1;->m([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda2;-><init>(Lorg/apache/tools/ant/util/FileNameMapper;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda6;->INSTANCE:Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda6;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$mapFileName$2([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 42
    return-object p1
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 38
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/ChainedMapper;->getMappers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda5;->INSTANCE:Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda5;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda0;

    sget-object v2, Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/util/ChainedMapper$$ExternalSyntheticLambda1;

    .line 40
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v3, v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BiFunction;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 43
    if-eqz v0, :cond_23

    array-length v1, v0

    if-nez v1, :cond_24

    :cond_23
    const/4 v0, 0x0

    :cond_24
    return-object v0
.end method
