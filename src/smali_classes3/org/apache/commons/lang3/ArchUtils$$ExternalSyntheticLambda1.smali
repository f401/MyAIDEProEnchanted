.class public final synthetic Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/arch/Processor;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/arch/Processor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/arch/Processor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/arch/Processor;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArchUtils;->lambda$addProcessors$0(Lorg/apache/commons/lang3/arch/Processor;Ljava/lang/String;)V

    return-void
.end method
