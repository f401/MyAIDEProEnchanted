.class Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionItemInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CollectionItemInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getColumnIndex(Ljava/lang/Object;)I
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v0

    return v0
.end method

.method static getColumnSpan(Ljava/lang/Object;)I
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v0

    return v0
.end method

.method static getRowIndex(Ljava/lang/Object;)I
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v0

    return v0
.end method

.method static getRowSpan(Ljava/lang/Object;)I
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v0

    return v0
.end method

.method static isHeading(Ljava/lang/Object;)Z
    .registers 2

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v0

    return v0
.end method
