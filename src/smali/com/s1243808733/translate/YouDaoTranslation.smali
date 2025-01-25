.class public Lcom/s1243808733/translate/YouDaoTranslation;
.super Ljava/lang/Object;
.source "YouDaoTranslation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;,
        Lcom/s1243808733/translate/YouDaoTranslation$TranslationCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Ljava/lang/String;Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;)V
    .registers 4

    .line 15
    new-instance v0, Lorg/xutils/http/RequestParams;

    const-string v1, "http://fanyi.youdao.com/openapi.do?keyfrom=ucweb123&key=1077957012&type=data&doctype=json&version=1.1"

    invoke-direct {v0, v1}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "q"

    invoke-virtual {v0, v1, p0}, Lorg/xutils/http/RequestParams;->addQueryStringParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    invoke-interface {p1}, Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;->onStart()V

    .line 18
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object p0

    new-instance v1, Lcom/s1243808733/translate/YouDaoTranslation$TranslationCallback;

    invoke-direct {v1, p1}, Lcom/s1243808733/translate/YouDaoTranslation$TranslationCallback;-><init>(Lcom/s1243808733/translate/YouDaoTranslation$OnTranslationCallback;)V

    invoke-interface {p0, v0, v1}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method
