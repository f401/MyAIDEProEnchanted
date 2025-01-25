.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
.super Ljava/lang/Object;
.source "FailableLongUnaryOperator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Throwable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda3;->INSTANCE:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator$$ExternalSyntheticLambda3;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;->NOP:Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;

    return-void
.end method


# virtual methods
.method public abstract andThen(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public abstract applyAsLong(J)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract compose(Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;)Lorg/apache/commons/lang3/function/FailableLongUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator",
            "<TE;>;)",
            "Lorg/apache/commons/lang3/function/FailableLongUnaryOperator",
            "<TE;>;"
        }
    .end annotation
.end method
