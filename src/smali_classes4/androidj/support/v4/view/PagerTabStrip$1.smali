.class Landroidj/support/v4/view/PagerTabStrip$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidj/support/v4/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/view/PagerTabStrip;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/PagerTabStrip;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/view/PagerTabStrip$1;->this$0:Landroidj/support/v4/view/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroidj/support/v4/view/PagerTabStrip$1;->this$0:Landroidj/support/v4/view/PagerTabStrip;

    iget-object v0, v0, Landroidj/support/v4/view/PagerTabStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    iget-object v1, p0, Landroidj/support/v4/view/PagerTabStrip$1;->this$0:Landroidj/support/v4/view/PagerTabStrip;

    iget-object v1, v1, Landroidj/support/v4/view/PagerTabStrip;->mPager:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroidj/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void
.end method
