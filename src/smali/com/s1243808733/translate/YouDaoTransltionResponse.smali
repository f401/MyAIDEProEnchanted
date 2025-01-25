.class public Lcom/s1243808733/translate/YouDaoTransltionResponse;
.super Ljava/lang/Object;
.source "YouDaoTransltionResponse.java"


# annotations
.annotation runtime Lorg/xutils/http/annotation/HttpResponse;
    parser = Lcom/s1243808733/app/http/response/JsonResponseParser;
.end annotation


# instance fields
.field private errorCode:I

.field private query:Ljava/lang/String;

.field private translation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/s1243808733/translate/YouDaoTransltionResponse;->errorCode:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/s1243808733/translate/YouDaoTransltionResponse;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/s1243808733/translate/YouDaoTransltionResponse;->translation:Ljava/util/List;

    return-object v0
.end method

.method public setErrorCode(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/s1243808733/translate/YouDaoTransltionResponse;->errorCode:I

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/s1243808733/translate/YouDaoTransltionResponse;->query:Ljava/lang/String;

    return-void
.end method

.method public setTranslation(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/s1243808733/translate/YouDaoTransltionResponse;->translation:Ljava/util/List;

    return-void
.end method
