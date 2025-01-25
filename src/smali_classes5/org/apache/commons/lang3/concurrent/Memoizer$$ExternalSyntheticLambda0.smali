.class public final synthetic Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final f$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

.field public final f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/Memoizer;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/lang3/concurrent/Memoizer;

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/Memoizer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/concurrent/Memoizer;->lambda$compute$0$Memoizer(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
