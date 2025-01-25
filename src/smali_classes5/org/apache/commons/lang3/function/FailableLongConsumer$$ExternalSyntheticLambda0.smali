.class public final synthetic Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableLongConsumer;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableLongConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .registers 6

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableLongConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang3/function/FailableLongConsumer$_CC;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableLongConsumer$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableLongConsumer;Lorg/apache/commons/lang3/function/FailableLongConsumer;)Lorg/apache/commons/lang3/function/FailableLongConsumer;

    move-result-object v0

    return-object v0
.end method
