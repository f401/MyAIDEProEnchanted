.class public final synthetic Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableIntConsumer;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableIntConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/FailableIntConsumer$_CC;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;I)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableIntConsumer;)Lorg/apache/commons/lang3/function/FailableIntConsumer;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableIntConsumer$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableIntConsumer;Lorg/apache/commons/lang3/function/FailableIntConsumer;)Lorg/apache/commons/lang3/function/FailableIntConsumer;

    move-result-object v0

    return-object v0
.end method
