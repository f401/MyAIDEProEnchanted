.class public interface abstract Lorg/apache/commons/lang3/function/FailableToDoubleBiFunction;
.super Ljava/lang/Object;
.source "FailableToDoubleBiFunction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableToDoubleBiFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    sget-object v0, Lorg/apache/commons/lang3/function/FailableToDoubleBiFunction$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/lang3/function/FailableToDoubleBiFunction$$ExternalSyntheticLambda0;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableToDoubleBiFunction;->NOP:Lorg/apache/commons/lang3/function/FailableToDoubleBiFunction;

    return-void
.end method


# virtual methods
.method public abstract applyAsDouble(Ljava/lang/Object;Ljava/lang/Object;)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)D^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
