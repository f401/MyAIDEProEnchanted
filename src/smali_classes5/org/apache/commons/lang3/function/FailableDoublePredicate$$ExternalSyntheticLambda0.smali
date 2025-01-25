.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$_CC;->$default$and(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic negate()Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .registers 2

    invoke-static {p0}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$_CC;->$default$negate(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$_CC;->$default$or(Lorg/apache/commons/lang3/function/FailableDoublePredicate;Lorg/apache/commons/lang3/function/FailableDoublePredicate;)Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    move-result-object v0

    return-object v0
.end method

.method public final test(D)Z
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableDoublePredicate$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableDoublePredicate;

    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoublePredicate$_CC;->lambda$negate$3(Lorg/apache/commons/lang3/function/FailableDoublePredicate;D)Z

    move-result v0

    return v0
.end method
