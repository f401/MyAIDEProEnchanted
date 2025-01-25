.class public final synthetic Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableConsumer;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

.field public final f$1:Lorg/apache/commons/lang3/function/FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    iput-object p2, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    iget-object v1, p0, Lorg/apache/commons/lang3/function/FailableConsumer$$ExternalSyntheticLambda0;->f$1:Lorg/apache/commons/lang3/function/FailableConsumer;

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/function/FailableConsumer$_CC;->lambda$andThen$1(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableConsumer;)Lorg/apache/commons/lang3/function/FailableConsumer;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableConsumer$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableConsumer;Lorg/apache/commons/lang3/function/FailableConsumer;)Lorg/apache/commons/lang3/function/FailableConsumer;

    move-result-object v0

    return-object v0
.end method
