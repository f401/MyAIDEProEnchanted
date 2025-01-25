.class Landroid/support/v4/widget/r;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/v4/widget/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/r;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 3

    iget-object p2, p0, Landroid/support/v4/widget/r;->j6:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p2, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->j6(F)V

    return-void
.end method
