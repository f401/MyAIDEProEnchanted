.class final Lcom/baidu/mobstat/util/CuidUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/helios/OnGetIdResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/util/CuidUtil;->getCuid3(Landroid/content/Context;)Ljava/lang/String;
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

    .line 86
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

    .line 86
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/util/CuidUtil$2;->onResult(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method
