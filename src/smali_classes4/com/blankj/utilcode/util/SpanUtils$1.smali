.class Lcom/blankj/utilcode/util/SpanUtils$1;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/SpanUtils;->setClickSpan(IZLandroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/SpanUtils;

.field final val$color:I

.field final val$listener:Landroid/view/View$OnClickListener;

.field final val$underlineText:Z


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/SpanUtils;IZLandroid/view/View$OnClickListener;)V
    .registers 5

    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->this$0:Lcom/blankj/utilcode/util/SpanUtils;

    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$color:I

    iput-boolean p3, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$underlineText:Z

    iput-object p4, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    iget-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$underlineText:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
