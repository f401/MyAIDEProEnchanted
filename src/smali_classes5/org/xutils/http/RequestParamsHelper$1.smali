.class final Lorg/xutils/http/RequestParamsHelper$1;
.super Ljava/lang/Object;
.source "RequestParamsHelper.java"

# interfaces
.implements Lorg/xutils/http/RequestParamsHelper$ParseKVListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final val$jo:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lorg/xutils/http/RequestParamsHelper$1;->val$jo:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseKV(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    .line 102
    :try_start_0
    invoke-static {p2}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lorg/xutils/http/RequestParamsHelper$1;->val$jo:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    .line 106
    return-void

    .line 104
    :catch_a
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parse RequestParams to json failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
