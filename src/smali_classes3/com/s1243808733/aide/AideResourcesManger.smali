.class public Lcom/s1243808733/aide/AideResourcesManger;
.super Ljava/lang/Object;
.source "AideResourcesManger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s1243808733/aide/AideResourcesManger$DataCallback;
    }
.end annotation


# static fields
.field static sAideResources:Lcom/s1243808733/data/AideResources;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/app/Activity;Lcom/s1243808733/aide/AideResourcesManger$DataCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/s1243808733/aide/AideResourcesManger$DataCallback;",
            ")V"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/s1243808733/aide/AideResourcesManger;->sAideResources:Lcom/s1243808733/data/AideResources;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/s1243808733/aide/AideResourcesManger;->sAideResources:Lcom/s1243808733/data/AideResources;

    invoke-interface {p1, v0}, Lcom/s1243808733/aide/AideResourcesManger$DataCallback;->onResult(Lcom/s1243808733/data/AideResources;)V

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    new-instance v0, Lorg/xutils/http/RequestParams;

    const-string v1, "https://api.aidepro.top/resources"

    invoke-direct {v0, v1}, Lorg/xutils/http/RequestParams;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lorg/xutils/x;->http()Lorg/xutils/HttpManager;

    move-result-object v1

    new-instance v2, Lcom/s1243808733/aide/AideResourcesManger$100000000;

    invoke-direct {v2, p1}, Lcom/s1243808733/aide/AideResourcesManger$100000000;-><init>(Lcom/s1243808733/aide/AideResourcesManger$DataCallback;)V

    invoke-interface {v1, v0, v2}, Lorg/xutils/HttpManager;->get(Lorg/xutils/http/RequestParams;Lorg/xutils/common/Callback$CommonCallback;)Lorg/xutils/common/Callback$Cancelable;

    goto :goto_0
.end method
