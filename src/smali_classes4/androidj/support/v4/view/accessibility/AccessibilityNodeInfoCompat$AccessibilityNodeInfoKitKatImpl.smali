.class Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
.super Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoKitKatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public canOpenPopup(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->canOpenPopup(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionInfoColumnCount(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getColumnCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionInfoRowCount(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->getRowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnIndex(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemColumnSpan(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getColumnSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionItemRowIndex(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCollectionItemRowSpan(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->getRowSpan(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getInputType(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getInputType(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getLiveRegion(Ljava/lang/Object;)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getLiveRegion(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isCollectionInfoHierarchical(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;->isHierarchical(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCollectionItemHeading(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;->isHeading(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isContentInvalid(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDismissable(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isDismissable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMultiLine(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->isMultiLine(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public obtainCollectionInfo(IIZ)Ljava/lang/Object;
    .registers 5

    invoke-static {p1, p2, p3}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionInfo(IIZI)Ljava/lang/Object;
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;
    .registers 7

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainCollectionItemInfo(IIIIZZ)Ljava/lang/Object;
    .registers 8

    invoke-static {p1, p2, p3, p4, p5}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainCollectionItemInfo(IIIIZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtainRangeInfo(IFFF)Ljava/lang/Object;
    .registers 6

    invoke-static {p1, p2, p3, p4}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->obtainRangeInfo(IFFF)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setCanOpenPopup(Ljava/lang/Object;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCanOpenPopup(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setContentInvalid(Ljava/lang/Object;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setContentInvalid(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setDismissable(Ljava/lang/Object;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setDismissable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setInputType(Ljava/lang/Object;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setInputType(Ljava/lang/Object;I)V

    return-void
.end method

.method public setLiveRegion(Ljava/lang/Object;I)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setLiveRegion(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMultiLine(Ljava/lang/Object;Z)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setMultiLine(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .registers 3

    invoke-static {p1, p2}, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;->setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method
