.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntPredicate;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;->$default$and(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic negate()Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;->$default$negate(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;->$default$or(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;)Lorg/apache/commons/lang3/function/FailableIntPredicate;

    move-result-object v0

    return-object v0
.end method

.method public final test(I)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableIntPredicate$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableIntPredicate;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/FailableIntPredicate$_CC;->lambda$and$2(Lorg/apache/commons/lang3/function/FailableIntPredicate;Lorg/apache/commons/lang3/function/FailableIntPredicate;I)Z

    move-result v0

    return v0
.end method
