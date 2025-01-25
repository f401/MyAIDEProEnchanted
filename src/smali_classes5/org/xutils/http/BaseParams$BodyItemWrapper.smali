.class public final Lorg/xutils/http/BaseParams$BodyItemWrapper;
.super Lorg/xutils/common/util/KeyValue;
.source "BaseParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/http/BaseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BodyItemWrapper"
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 515
    invoke-direct {p0, p1, p2}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 517
    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    .line 521
    :goto_d
    iput-object p4, p0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->fileName:Ljava/lang/String;

    .line 522
    return-void

    .line 519
    :cond_10
    iput-object p3, p0, Lorg/xutils/http/BaseParams$BodyItemWrapper;->contentType:Ljava/lang/String;

    goto :goto_d
.end method
