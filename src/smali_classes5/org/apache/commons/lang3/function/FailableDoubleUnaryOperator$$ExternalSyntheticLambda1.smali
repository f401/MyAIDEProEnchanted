.class public final synthetic Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method public final applyAsDouble(D)D
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$$ExternalSyntheticLambda1;->f$1:Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$_CC;->lambda$compose$3(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator$_CC;->$default$compose(Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;)Lorg/apache/commons/lang3/function/FailableDoubleUnaryOperator;

    move-result-object v0

    return-object v0
.end method
