.class Lorg/xutils/http/RequestParams$1;
.super Ljava/lang/Object;
.source "RequestParams.java"

# interfaces
.implements Lorg/xutils/http/RequestParamsHelper$ParseKVListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/RequestParams;->initEntityParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lorg/xutils/http/RequestParams;


# direct methods
.method constructor <init>(Lorg/xutils/http/RequestParams;)V
    .registers 2

    .line 377
    iput-object p1, p0, Lorg/xutils/http/RequestParams$1;->this$0:Lorg/xutils/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseKV(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 380
    iget-object v0, p0, Lorg/xutils/http/RequestParams$1;->this$0:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0, p1, p2}, Lorg/xutils/http/RequestParams;->addParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 381
    return-void
.end method
