.class public Lorg/apache/tools/ant/util/FirstMatchMapper;
.super Lorg/apache/tools/ant/util/ContainerMapper;
.source "FirstMatchMapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/util/ContainerMapper;-><init>()V

    return-void
.end method

.method static synthetic lambda$mapFileName$0(Ljava/lang/String;Lorg/apache/tools/ant/util/FileNameMapper;)[Ljava/lang/String;
    .registers 3

    .line 34
    invoke-interface {p1, p0}, Lorg/apache/tools/ant/util/FileNameMapper;->mapFileName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public mapFileName(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 33
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/FirstMatchMapper;->getMappers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/FirstMatchMapper$$ExternalSyntheticLambda2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 33
    return-object v0
.end method
