.class Lcom/baidu/mobstat/co$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mobstat/co;->b(Landroid/app/Activity;J)V
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

    .line 251
    iput-object p1, p0, Lcom/baidu/mobstat/co$9;->a:Lcom/baidu/mobstat/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 254
    iget-object v0, p0, Lcom/baidu/mobstat/co$9;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobstat/co$9;->a:Lcom/baidu/mobstat/co;

    invoke-static {v2}, Lcom/baidu/mobstat/co;->b(Lcom/baidu/mobstat/co;)Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;Ljava/util/List;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method
