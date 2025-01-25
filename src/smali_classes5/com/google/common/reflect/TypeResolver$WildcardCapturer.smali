.class Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WildcardCapturer"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;


# instance fields
.field private final id:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 450
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>()V

    sput-object v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->INSTANCE:Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 455
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 456
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 460
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/reflect/TypeResolver$1;)V
    .registers 3

    .line 448
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method private captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 3
    .param p1  # Ljava/lang/reflect/Type;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 532
    if-nez p1, :cond_4

    .line 533
    const/4 v0, 0x0

    .line 535
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_3
.end method

.method private forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Lcom/google/common/reflect/TypeResolver$WildcardCapturer;"
        }
    .end annotation

    .line 508
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer$1;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer$1;-><init>(Lcom/google/common/reflect/TypeResolver$WildcardCapturer;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/reflect/TypeVariable;)V

    return-object v0
.end method

.method private notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;
    .registers 3

    .line 528
    new-instance v0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v0
.end method


# virtual methods
.method final capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 8

    .line 463
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_8

    .line 495
    :cond_7
    :goto_7
    return-object p1

    .line 467
    :cond_8
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_7

    .line 470
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_23

    .line 471
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 472
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_7

    .line 475
    :cond_23
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_5d

    .line 476
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 477
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 478
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 479
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 480
    const/4 v1, 0x0

    :goto_38
    array-length v4, v3

    if-ge v1, v4, :cond_4c

    .line 481
    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->forTypeVariable(Ljava/lang/reflect/TypeVariable;)Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->capture(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    aput-object v4, v3, v1

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 483
    :cond_4c
    invoke-direct {p0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->notForTypeVariable()Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureNullable(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, v0, v3}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_7

    .line 488
    :cond_5d
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_74

    move-object v0, p1

    .line 489
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .line 490
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 491
    array-length v1, v1

    if-nez v1, :cond_7

    .line 492
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_7

    .line 498
    :cond_74
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "must have been one of the known types"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method captureAsTypeVariable([Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;->id:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 503
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-of ? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 504
    const-class v1, Lcom/google/common/reflect/TypeResolver$WildcardCapturer;

    invoke-static {v1, v0, p1}, Lcom/google/common/reflect/Types;->newArtificialTypeVariable(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method
