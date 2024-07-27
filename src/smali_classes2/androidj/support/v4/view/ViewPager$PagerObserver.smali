.class Landroidj/support/v4/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/view/ViewPager$PagerObserver;->this$0:Landroidj/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager$PagerObserver;->this$0:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager$PagerObserver;->this$0:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroidj/support/v4/view/ViewPager;->dataSetChanged()V

    return-void
.end method
