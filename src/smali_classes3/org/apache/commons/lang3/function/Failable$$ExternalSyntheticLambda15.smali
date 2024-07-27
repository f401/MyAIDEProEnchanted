.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

.field public final f$1:D


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iput-wide p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;->f$1:D

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;->f$0:Lorg/apache/commons/lang3/function/FailableDoubleConsumer;

    iget-wide v2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda15;->f$1:D

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/function/Failable;->lambda$accept$2(Lorg/apache/commons/lang3/function/FailableDoubleConsumer;D)V

    return-void
.end method
