.class Landroid/support/v4/widget/o;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;->j6(II)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:I

.field final FH:Landroid/support/v4/widget/SwipeRefreshLayout;

.field final j6:I


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;II)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/widget/o;->FH:Landroid/support/v4/widget/SwipeRefreshLayout;

    iput p2, p0, Landroid/support/v4/widget/o;->j6:I

    iput p3, p0, Landroid/support/v4/widget/o;->DW:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    iget-object p2, p0, Landroid/support/v4/widget/o;->FH:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object p2, p2, Landroid/support/v4/widget/SwipeRefreshLayout;->vy:Landroid/support/v4/widget/CircularProgressDrawable;

    iget v0, p0, Landroid/support/v4/widget/o;->j6:I

    int-to-float v1, v0

    iget v2, p0, Landroid/support/v4/widget/o;->DW:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/CircularProgressDrawable;->setAlpha(I)V

    return-void
.end method
