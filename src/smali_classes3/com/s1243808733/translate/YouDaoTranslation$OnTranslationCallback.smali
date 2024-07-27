.class public interface Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;
.super Ljava/lang/Object;
.source "YouDaoTranslation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/translate/YouDaoTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x209
    name = "OnTranslationCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onResult(Lcom/s1243808733/translate/YouDaoTransltionResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/translate/YouDaoTransltionResponse;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onStart()V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method
