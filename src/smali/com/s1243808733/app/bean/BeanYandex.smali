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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
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

    const/16 v0, 0x191

    if-ne p1, v0, :cond_7

    .line 52
    const-string p1, "无效的API密钥"

    return-object p1

    :cond_7
    const/16 v0, 0x192

    if-ne p1, v0, :cond_e

    .line 54
    const-string p1, "封锁的API密钥"

    return-object p1

    :cond_e
    const/16 v0, 0x194

    if-ne p1, v0, :cond_15

    .line 56
    const-string p1, "超出每日翻译量限制"

    return-object p1

    :cond_15
    const/16 v0, 0x19d

    if-ne p1, v0, :cond_1c

    .line 58
    const-string p1, "超过最大文字大小"

    return-object p1

    :cond_1c
    const/16 v0, 0x1a6

    if-ne p1, v0, :cond_23

    .line 60
    const-string p1, "文字无法翻译"

    return-object p1

    :cond_23
    const/16 v0, 0x1f5

    if-ne p1, v0, :cond_2a

    .line 62
    const-string p1, "不支持指定的翻译方向"

    return-object p1

    .line 65
    :cond_2a
    iget-object p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->message:Ljava/lang/String;

    return-object p1
.end method

.method public getText()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
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

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setCode(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->code:I

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->lang:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->message:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/s1243808733/app/bean/BeanYandex;->text:Ljava/util/List;

    return-void
.end method
