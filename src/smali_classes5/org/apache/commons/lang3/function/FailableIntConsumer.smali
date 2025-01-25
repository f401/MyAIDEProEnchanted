.class public interface abstract Lorg/apache/commons/lang3/function/FailableIntConsumer;
.super Ljava/lang/Object;
.source "FailableIntConsumer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableIntConsumer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    sget-object v0, Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda1;->INSTANCE:Lorg/apache/commons/lang3/function/FailableIntConsumer$$ExternalSyntheticLambda1;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableIntConsumer;->NOP:Lorg/apache/commons/lang3/function/FailableIntConsumer;

    return-void
.end method


# virtual methods
.method public abstract accept(I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract andThen(Lorg/apache/commons/lang3/function/FailableIntConsumer;)Lorg/apache/commons/lang3/function/FailableIntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableIntConsumer",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableIntConsumer",
            "<TE;>;"
        }
    .end annotation
.end method
