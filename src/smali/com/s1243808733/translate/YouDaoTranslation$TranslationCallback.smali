.class Lcom/s1243808733/translate/YouDaoTranslation$TranslationCallback;
.super Ljava/lang/Object;
.source "YouDaoTranslation.java"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/translate/YouDaoTranslation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TranslationCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CommonCallback<",
        "Lcom/s1243808733/translate/YouDaoTransltionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field mOnTranslationCallback:Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;


# direct methods
.method public constructor <init>(Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/s1243808733/translate/YouDaoTranslation$TranslationCallback;->mOnTranslationCallback:Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;

    return-void
.end method


# virtual methods
.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .registers 2

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .registers 3

    .line 39
    iget-object p2, p0, Lcom/s1243808733/translate/YouDaoTranslation$TranslationCallback;->mOnTranslationCallback:Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;

    invoke-interface {p2, p1}, Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinished()V
    .registers 1

    return-void
.end method

.method public onSuccess(Lcom/s1243808733/translate/YouDaoTransltionResponse;)V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/s1243808733/translate/YouDaoTranslation$TranslationCallback;->mOnTranslationCallback:Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;

    invoke-interface {v0, p1}, Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;->onResult(Lcom/s1243808733/translate/YouDaoTransltionResponse;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 22
    check-cast p1, Lcom/s1243808733/translate/YouDaoTransltionResponse;

    invoke-virtual {p0, p1}, Lcom/s1243808733/translate/YouDaoTranslation$TranslationCallback;->onSuccess(Lcom/s1243808733/translate/YouDaoTransltionResponse;)V

    return-void
.end method
