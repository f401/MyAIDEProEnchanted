.class public final synthetic Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableBiConsumer;


# instance fields
.field public final f$0:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Thread;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    iget-object v0, p0, Lorg/apache/commons/lang3/ThreadUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Thread;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/Thread;->join(JI)V

    return-void
.end method

.method public synthetic andThen(Lorg/apache/commons/lang3/function/FailableBiConsumer;)Lorg/apache/commons/lang3/function/FailableBiConsumer;
    .registers 3

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/function/FailableBiConsumer$_CC;->$default$andThen(Lorg/apache/commons/lang3/function/FailableBiConsumer;Lorg/apache/commons/lang3/function/FailableBiConsumer;)Lorg/apache/commons/lang3/function/FailableBiConsumer;

    move-result-object v0

    return-object v0
.end method
