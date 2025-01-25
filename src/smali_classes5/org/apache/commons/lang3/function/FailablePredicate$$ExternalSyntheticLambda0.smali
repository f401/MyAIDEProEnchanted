.class public final synthetic Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailablePredicate;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailablePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailablePredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

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

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailablePredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailablePredicate;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/function/FailablePredicate$_CC;->lambda$negate$3(Lorg/apache/commons/lang3/function/FailablePredicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
