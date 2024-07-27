.class final Lcom/baidu/mobstat/dg$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/dg;->b(Landroid/app/Activity;Landroid/webkit/WebView;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final a:Landroid/webkit/WebView;

.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/baidu/mobstat/dg$1;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/baidu/mobstat/dg$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/baidu/mobstat/dg$1;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/mobstat/dg$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    return-void
.end method
