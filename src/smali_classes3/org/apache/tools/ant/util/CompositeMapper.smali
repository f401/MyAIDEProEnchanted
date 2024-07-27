.class public Lorg/apache/tools/ant/util/CompositeMapper;
.super Lorg/apache/tools/ant/util/ContainerMapper;
.source "CompositeMapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ContainerMapper;-><init>()V

    return-void
.end method

.method static synthetic lambda$mapFileName$0(Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;
    .registers 3

    .line 32
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$mapFileName$1(I)[Ljava/lang/String;
    .registers 2

    .line 33
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 31
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/CompositeMapper;->getMappers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda3;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda4;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda1;

    .line 33
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/CompositeMapper$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 34
    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
