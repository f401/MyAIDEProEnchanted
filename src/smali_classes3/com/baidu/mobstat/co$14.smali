.class Lcom/baidu/mobstat/co$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->d()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Lcom/baidu/mobstat/co;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/co;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/baidu/mobstat/co$14;->a:Lcom/baidu/mobstat/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/baidu/mobstat/co$14;->a:Lcom/baidu/mobstat/co;

    iget-object v1, p0, Lcom/baidu/mobstat/co$14;->a:Lcom/baidu/mobstat/co;

    invoke-static {v1}, Lcom/baidu/mobstat/co;->c(Lcom/baidu/mobstat/co;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/co;->a(Ljava/lang/ref/WeakReference;)V

    .line 440
    return-void
.end method
