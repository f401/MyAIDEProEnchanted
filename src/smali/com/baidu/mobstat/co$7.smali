.class Lcom/baidu/mobstat/co$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->a(Landroid/app/Activity;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/webkit/WebView;

.field final b:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;Landroid/webkit/WebView;)V
    .registers 3

    .line 1680
    iput-object p1, p0, Lcom/baidu/mobstat/co$7;->b:Lcom/baidu/mobstat/co;

    iput-object p2, p0, Lcom/baidu/mobstat/co$7;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1683
    iget-object v0, p0, Lcom/baidu/mobstat/co$7;->b:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->i(Lcom/baidu/mobstat/co;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1686
    :try_start_7
    iget-object v1, p0, Lcom/baidu/mobstat/co$7;->b:Lcom/baidu/mobstat/co;

    iget-object v2, p0, Lcom/baidu/mobstat/co$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;F)F

    .line 1687
    iget-object v1, p0, Lcom/baidu/mobstat/co$7;->b:Lcom/baidu/mobstat/co;

    iget-object v2, p0, Lcom/baidu/mobstat/co$7;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    invoke-static {v1, v2}, Lcom/baidu/mobstat/co;->b(Lcom/baidu/mobstat/co;F)F

    .line 1689
    iget-object v1, p0, Lcom/baidu/mobstat/co$7;->b:Lcom/baidu/mobstat/co;

    invoke-static {v1}, Lcom/baidu/mobstat/co;->i(Lcom/baidu/mobstat/co;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1690
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v1
.end method
