.class public Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;
.super Ljava/lang/Object;
.source "FacadeTaskHelper.java"


# instance fields
.field private args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;",
            ">;"
        }
    .end annotation
.end field

.field private defaultValue:Ljava/lang/String;

.field private implementationClasspath:Lorg/apache/tools/ant/types/Path;

.field private magicValue:Ljava/lang/String;

.field private userChoice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->args:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->defaultValue:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->magicValue:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic lambda$getArgs$0(Ljava/lang/String;Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)[Ljava/lang/String;
    .registers 3

    .line 132
    invoke-virtual {p1, p0}, Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;->getParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getArgs$1(I)[Ljava/lang/String;
    .registers 2

    .line 134
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addImplementationArgument(Lorg/apache/tools/ant/util/facade/ImplementationSpecificArgument;)V
    .registers 3

    .line 122
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->args:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public getArgs()[Ljava/lang/String;
    .registers 4

    .line 131
    invoke-virtual {p0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->getImplementation()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->args:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper$$ExternalSyntheticLambda3;

    .line 133
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper$$ExternalSyntheticLambda1;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper$$ExternalSyntheticLambda2;->INSTANCE:Lorg/apache/tools/ant/util/facade/FacadeTaskHelper$$ExternalSyntheticLambda2;

    .line 134
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 132
    return-object v0
.end method

.method public getExplicitChoice()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->userChoice:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementation()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->userChoice:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->magicValue:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->defaultValue:Ljava/lang/String;

    goto :goto_0
.end method

.method public getImplementationClasspath(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/types/Path;
    .registers 3

    .line 155
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->implementationClasspath:Lorg/apache/tools/ant/types/Path;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lorg/apache/tools/ant/types/Path;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    iput-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->implementationClasspath:Lorg/apache/tools/ant/types/Path;

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->implementationClasspath:Lorg/apache/tools/ant/types/Path;

    return-object v0
.end method

.method public hasBeenSet()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->userChoice:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->magicValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setImplementation(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->userChoice:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setMagicValue(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lorg/apache/tools/ant/util/facade/FacadeTaskHelper;->magicValue:Ljava/lang/String;

    .line 89
    return-void
.end method
