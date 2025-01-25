.class Landroidx/customview/widget/FocusStrategy$SequentialComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/FocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIsLayoutRtl:Z

.field private final mTemp1:Landroid/graphics/Rect;

.field private final mTemp2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    iput-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    iput-object p2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x1

    iget-object v2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    iget-object v3, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    iget-object v4, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    invoke-interface {v4, p1, v2}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    invoke-interface {v4, p2, v3}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_17

    :cond_16
    :goto_16
    return v1

    :cond_17
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1f

    move v1, v0

    goto :goto_16

    :cond_1f
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_2b

    iget-boolean v2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v2, :cond_61

    :goto_29
    move v1, v0

    goto :goto_16

    :cond_2b
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_37

    iget-boolean v2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-nez v2, :cond_16

    move v1, v0

    goto :goto_16

    :cond_37
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_16

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_45

    move v1, v0

    goto :goto_16

    :cond_45
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_51

    iget-boolean v2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v2, :cond_5f

    :goto_4f
    move v1, v0

    goto :goto_16

    :cond_51
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v2, v3, :cond_5d

    iget-boolean v2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-nez v2, :cond_16

    move v1, v0

    goto :goto_16

    :cond_5d
    const/4 v1, 0x0

    goto :goto_16

    :cond_5f
    move v0, v1

    goto :goto_4f

    :cond_61
    move v0, v1

    goto :goto_29
.end method
