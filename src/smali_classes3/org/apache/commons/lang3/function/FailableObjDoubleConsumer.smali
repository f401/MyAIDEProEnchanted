.class public interface abstract Lorg/apache/commons/lang3/function/FailableObjDoubleConsumer;
.super Ljava/lang/Object;
.source "FailableObjDoubleConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableObjDoubleConsumer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget-object v0, Lorg/apache/commons/lang3/function/FailableObjDoubleConsumer$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/lang3/function/FailableObjDoubleConsumer$$ExternalSyntheticLambda0;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableObjDoubleConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableObjDoubleConsumer;

    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;D)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
