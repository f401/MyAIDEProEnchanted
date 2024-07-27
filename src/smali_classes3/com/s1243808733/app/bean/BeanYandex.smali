.class public Lcom/s1243808733/app/bean/BeanYandex;
.super Ljava/lang/Object;
.source "BeanYandex.java"


# annotations
.annotation runtime Lorg/xutils/http/annotation/HttpResponse;
    parser = Lcom/s1243808733/app/http/response/JsonResponseParser;
.end annotation


# instance fields
.field private code:I

.field private lang:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 22
    iget v0, p0, Lcom/s1243808733/app/bean/BeanYandex;->code:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .line 73
    invoke-virtual {p0}, Lcom/s1243808733/app/bean/BeanYandex;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/s1243808733/app/bean/BeanYandex;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/s1243808733/app/bean/BeanYandex;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/s1243808733/app/bean/BeanYandex;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage(I)Ljava/lang/String;
    .registers 3

    .line 51
    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    .line 52
    const-string/jumbo v0, "\u65e0\u6548\u7684API\u5bc6\u94a5"

    .line 65
    :goto_0
    return-object v0

    .line 53
    :cond_0
    const/16 v0, 0x192

    if-ne p1, v0, :cond_1

    .line 54
    const-string v0, "\u5c01\u9501\u7684API\u5bc6\u94a5"

    goto :goto_0

    .line 55
    :cond_1
    const/16 v0, 0x194

    if-ne p1, v0, :cond_2

    .line 56
    const-string/jumbo v0, "\u8d85\u51fa\u6bcf\u65e5\u7ffb\u8bd1\u91cf\u9650\u5236"

    goto :goto_0

    .line 57
    :cond_2
    const/16 v0, 0x19d

    if-ne p1, v0, :cond_3

    .line 58
    const-string/jumbo v0, "\u8d85\u8fc7\u6700\u5927\u6587\u5b57\u5927\u5c0f"

    goto :goto_0

    .line 59
    :cond_3
    const/16 v0, 0x1a6

    if-ne p1, v0, :cond_4

    .line 60
    const-string/jumbo v0, "\u6587\u5b57\u65e0\u6cd5\u7ffb\u8bd1"

    goto :goto_0

    .line 61
    :cond_4
    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_5

    .line 62
    const-string v0, "\u4e0d\u652f\u6301\u6307\u5b9a\u7684\u7ffb\u8bd1\u65b9\u5411"

    goto :goto_0

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/s1243808733/app/bean/BeanYandex;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public getText()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/s1243808733/app/bean/BeanYandex;->text:Ljava/util/List;

    return-object v0
.end method

.method public isSuccess()Z
    .registers 3

    .line 69
    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/s1243808733/app/bean/BeanYandex;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCode(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    iput p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->code:I

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->lang:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->message:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->text:Ljava/util/List;

    return-void
.end method
