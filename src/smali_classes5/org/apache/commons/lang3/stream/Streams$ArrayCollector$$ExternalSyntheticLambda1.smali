.class public final synthetic Lorg/apache/commons/lang3/stream/Streams$ArrayCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/stream/Streams$ArrayCollector;->lambda$finisher$1$Streams$ArrayCollector(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
