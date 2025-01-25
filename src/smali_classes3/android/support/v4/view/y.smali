.class Landroid/support/v4/view/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPager;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/support/v4/view/ViewPager;

.field private final j6:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/view/y;->DW:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/y;->j6:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public j6(Landroid/view/View;Landroid/support/v4/view/B;)Landroid/support/v4/view/B;
    .registers 8

    invoke-static {p1, p2}, Landroid/support/v4/view/s;->DW(Landroid/view/View;Landroid/support/v4/view/B;)Landroid/support/v4/view/B;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/view/B;->v5()Z

    move-result p2

    if-eqz p2, :cond_b

    return-object p1

    :cond_b
    iget-object p2, p0, Landroid/support/v4/view/y;->j6:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/support/v4/view/B;->DW()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/support/v4/view/B;->Hw()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/support/v4/view/B;->FH()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/support/v4/view/B;->j6()I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Landroid/support/v4/view/y;->DW:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v0, :cond_6b

    iget-object v2, p0, Landroid/support/v4/view/y;->DW:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/support/v4/view/s;->j6(Landroid/view/View;Landroid/support/v4/view/B;)Landroid/support/v4/view/B;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/B;->DW()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/support/v4/view/B;->Hw()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/support/v4/view/B;->FH()I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/support/v4/view/B;->j6()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_6b
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/support/v4/view/B;->j6(IIII)Landroid/support/v4/view/B;

    move-result-object p1

    return-object p1
.end method
