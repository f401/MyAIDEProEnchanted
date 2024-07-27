.class public Lorg/apache/tools/ant/taskdefs/Get$NullProgress;
.super Ljava/lang/Object;
.source "Get.java"

# interfaces
.implements Lorg/apache/tools/ant/taskdefs/Get$DownloadProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Get;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullProgress"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beginDownload()V
    .registers 1

    .line 580
    return-void
.end method

.method public endDownload()V
    .registers 1

    .line 595
    return-void
.end method

.method public onTick()V
    .registers 1

    .line 588
    return-void
.end method
