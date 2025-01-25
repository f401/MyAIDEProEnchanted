.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/commons/lang3/function/FailableRunnable;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

.field public final f$1:J


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;->f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iput-wide p2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;->f$0:Lorg/apache/commons/lang3/function/FailableLongConsumer;

    iget-wide v2, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda17;->f$1:J

    invoke-static {v0, v2, v3}, Lorg/apache/commons/lang3/function/Failable;->lambda$accept$4(Lorg/apache/commons/lang3/function/FailableLongConsumer;J)V

    return-void
.end method
