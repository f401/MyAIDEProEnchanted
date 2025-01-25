.class public Lorg/apache/commons/lang3/Streams$ArrayCollector;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/Collector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Collector",
        "<TO;",
        "Ljava/util/List",
        "<TO;>;[TO;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final characteristics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 450
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/Streams$ArrayCollector;->characteristics:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TO;>;)V"
        }
    .end annotation

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lorg/apache/commons/lang3/Streams$ArrayCollector;->elementType:Ljava/lang/Class;

    .line 460
    return-void
.end method

.method static synthetic lambda$combiner$0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 475
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 476
    return-object p0
.end method


# virtual methods
.method public accumulator()Ljava/util/function/BiConsumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BiConsumer",
            "<",
            "Ljava/util/List",
            "<TO;>;TO;>;"
        }
    .end annotation

    .line 469
    sget-object v0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda0;

    return-object v0
.end method

.method public characteristics()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation

    .line 491
    sget-object v0, Lorg/apache/commons/lang3/Streams$ArrayCollector;->characteristics:Ljava/util/Set;

    return-object v0
.end method

.method public combiner()Ljava/util/function/BinaryOperator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/BinaryOperator",
            "<",
            "Ljava/util/List",
            "<TO;>;>;"
        }
    .end annotation

    .line 474
    sget-object v0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda1;

    return-object v0
.end method

.method public finisher()Ljava/util/function/Function;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function",
            "<",
            "Ljava/util/List",
            "<TO;>;[TO;>;"
        }
    .end annotation

    .line 482
    new-instance v0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda2;-><init>(Lorg/apache/commons/lang3/Streams$ArrayCollector;)V

    return-object v0
.end method

.method public synthetic lambda$finisher$1$Streams$ArrayCollector(Ljava/util/List;)[Ljava/lang/Object;
    .registers 4

    .line 484
    iget-object v0, p0, Lorg/apache/commons/lang3/Streams$ArrayCollector;->elementType:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 485
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public supplier()Ljava/util/function/Supplier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/List",
            "<TO;>;>;"
        }
    .end annotation

    .line 464
    sget-object v0, Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/commons/lang3/Streams$ArrayCollector$$ExternalSyntheticLambda3;

    return-object v0
.end method
