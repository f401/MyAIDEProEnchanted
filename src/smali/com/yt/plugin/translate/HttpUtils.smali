.class public Lcom/yt/plugin/translate/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yt/plugin/translate/HttpUtils$Request;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;
    .registers 4

    .line 26
    new-instance v0, Lcom/yt/plugin/translate/HttpUtils$Request;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/yt/plugin/translate/HttpUtils$Request;-><init>(Ljava/lang/String;ZLcom/yt/plugin/translate/HttpUtils$Request-IA;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;)Lcom/yt/plugin/translate/HttpUtils$Request;
    .registers 4

    .line 22
    new-instance v0, Lcom/yt/plugin/translate/HttpUtils$Request;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/yt/plugin/translate/HttpUtils$Request;-><init>(Ljava/lang/String;ZLcom/yt/plugin/translate/HttpUtils$Request-IA;)V

    return-object v0
.end method
