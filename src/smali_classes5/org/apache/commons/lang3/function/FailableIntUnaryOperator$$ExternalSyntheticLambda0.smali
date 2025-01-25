.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method public final applyAsInt(I)I
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$_CC;->lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;I)I

    move-result v0

    return v0
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntUnaryOperator$_CC;->$default$compose(Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;)Lorg/apache/commons/lang3/function/FailableIntUnaryOperator;

    move-result-object v0

    return-object v0
.end method
