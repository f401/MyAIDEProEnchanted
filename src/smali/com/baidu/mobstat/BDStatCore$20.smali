.class Lcom/baidu/mobstat/BDStatCore$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/BDStatCore;->autoTrackSessionEndTime(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:J

.field final c:Lcom/baidu/mobstat/BDStatCore;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/BDStatCore;Landroid/content/Context;J)V
    .registers 5

    .line 217
    iput-object p1, p0, Lcom/baidu/mobstat/BDStatCore$20;->c:Lcom/baidu/mobstat/BDStatCore;

    iput-object p2, p0, Lcom/baidu/mobstat/BDStatCore$20;->a:Landroid/content/Context;

    iput-wide p3, p0, Lcom/baidu/mobstat/BDStatCore$20;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/baidu/mobstat/BDStatCore$20;->c:Lcom/baidu/mobstat/BDStatCore;

    invoke-static {v0}, Lcom/baidu/mobstat/BDStatCore;->b(Lcom/baidu/mobstat/BDStatCore;)Lcom/baidu/mobstat/SessionAnalysis;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/BDStatCore$20;->a:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/mobstat/BDStatCore$20;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mobstat/SessionAnalysis;->autoTrackSessionEndTime(Landroid/content/Context;J)V

    return-void
.end method
