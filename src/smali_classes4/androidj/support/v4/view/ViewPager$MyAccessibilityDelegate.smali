.class Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;
.super Landroidj/support/v4/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAccessibilityDelegate"
.end annotation


# instance fields
.field final this$0:Landroidj/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroidj/support/v4/view/ViewPager;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroidj/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method

.method private canScroll()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget-object v1, v1, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget-object v1, v1, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroidj/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget-object v1, v1, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget-object v1, v1, Landroidj/support/v4/view/ViewPager;->mAdapter:Landroidj/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroidj/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget v1, v1, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget v1, v1, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_3e
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const-class v0, Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->canScroll()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    iget-object v0, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_21
    iget-object v0, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidj/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_2f
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroidj/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_8
    return v0

    :cond_9
    sparse-switch p2, :sswitch_data_3a

    move v0, v1

    goto :goto_8

    :sswitch_e
    iget-object v2, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroidj/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget v2, v2, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidj/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :sswitch_22
    iget-object v2, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroidj/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v1, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget-object v2, p0, Landroidj/support/v4/view/ViewPager$MyAccessibilityDelegate;->this$0:Landroidj/support/v4/view/ViewPager;

    iget v2, v2, Landroidj/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroidj/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_8

    :cond_37
    move v0, v1

    goto :goto_8

    nop

    :sswitch_data_3a
    .sparse-switch
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_22
    .end sparse-switch
.end method
