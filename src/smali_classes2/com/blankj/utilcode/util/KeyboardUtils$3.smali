.class Lcom/blankj/utilcode/util/KeyboardUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/KeyboardUtils;->fixAndroidBug5497(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$contentViewChild:Landroid/view/View;

.field final val$contentViewInvisibleHeightPre5497:[I

.field final val$paddingBottom:I

.field final val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;[ILandroid/view/View;I)V
    .registers 5

    iput-object p1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$window:Landroid/view/Window;

    iput-object p2, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewInvisibleHeightPre5497:[I

    iput-object p3, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewChild:Landroid/view/View;

    iput p4, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$paddingBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$window:Landroid/view/Window;

    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$100(Landroid/view/Window;)I

    move-result v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewInvisibleHeightPre5497:[I

    aget v1, v1, v7

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewChild:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewChild:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    iget v5, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$paddingBottom:I

    iget-object v6, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$window:Landroid/view/Window;

    invoke-static {v6}, Lcom/blankj/utilcode/util/KeyboardUtils;->access$000(Landroid/view/Window;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/KeyboardUtils$3;->val$contentViewInvisibleHeightPre5497:[I

    aput v0, v1, v7

    :cond_0
    return-void
.end method
