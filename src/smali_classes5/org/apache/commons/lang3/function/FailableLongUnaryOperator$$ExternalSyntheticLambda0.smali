.class public final synthetic Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method public final applyAsLong(J)J
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$_CC;->lambda$andThen$2(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic compose(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$_CC;->$default$compose(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    move-result-object v0

    return-object v0
.end method
