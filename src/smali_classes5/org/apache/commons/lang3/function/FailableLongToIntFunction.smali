.class public interface abstract Lorg/apache/commons/lang3/function/FailableLongToIntFunction;
.super Ljava/lang/Object;
.source "FailableLongToIntFunction.java"


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
.field public static final NOP:Lorg/apache/commons/lang3/function/FailableLongToIntFunction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    sget-object v0, Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;->INSTANCE:Lorg/apache/commons/lang3/function/FailableLongToIntFunction$$ExternalSyntheticLambda0;

    sput-object v0, Lorg/apache/commons/lang3/function/FailableLongToIntFunction;->NOP:Lorg/apache/commons/lang3/function/FailableLongToIntFunction;

    return-void
.end method


# virtual methods
.method public abstract applyAsInt(J)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)I^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
