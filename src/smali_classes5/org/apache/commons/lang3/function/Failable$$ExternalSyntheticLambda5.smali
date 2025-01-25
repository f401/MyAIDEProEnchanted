.class public final synthetic Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/function/FailableConsumer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/function/Failable$$ExternalSyntheticLambda5;->f$0:Lorg/apache/commons/lang3/function/FailableConsumer;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/function/Failable;->lambda$asConsumer$12(Lorg/apache/commons/lang3/function/FailableConsumer;Ljava/lang/Object;)V

    return-void
.end method
