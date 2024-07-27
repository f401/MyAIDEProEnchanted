.class public final synthetic Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailablePredicate;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;->INSTANCE:Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$_CC;->$default$and(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic negate()Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailablePredicate$_CC;->$default$negate(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$_CC;->$default$or(Lorg/apache/commons/lang3/function/FailablePredicate;Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/function/FailablePredicate;

    move-result-object v0

    return-object v0
.end method

.method public final test(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Lorg/apache/commons/lang3/function/FailablePredicate$_CC;->lambda$static$1(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
