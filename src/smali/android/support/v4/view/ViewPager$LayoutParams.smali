.class public Landroid/support/v4/view/ViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public DW:I

.field FH:F

.field Hw:Z

.field Zo:I

.field public j6:Z

.field v5:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/view/ViewPager$LayoutParams;->FH:F

    sget-object v0, Landroid/support/v4/view/ViewPager;->j6:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager$LayoutParams;->DW:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
