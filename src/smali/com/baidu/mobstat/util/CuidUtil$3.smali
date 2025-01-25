.class final Lcom/baidu/mobstat/util/CuidUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/helios/OnGetIdResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/util/CuidUtil;->getGaid(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/helios/OnGetIdResultCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/Throwable;Landroid/os/Bundle;)V
    .registers 4

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;Landroid/os/Bundle;)V
    .registers 3

    .line 198
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/util/CuidUtil$3;->onResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    .line 202
    invoke-static {}, Lcom/baidu/mobstat/dq;->a()Lcom/baidu/mobstat/dq;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;)V

    :cond_d
    return-void
.end method
