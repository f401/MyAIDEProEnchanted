.class final Landroidj/support/v4/widget/ExploreByTouchHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidj/support/v4/widget/FocusStrategy$CollectionAdapter",
        "<",
        "Landroidj/support/v4/util/SparseArrayCompat",
        "<",
        "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;",
        "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroidj/support/v4/util/SparseArrayCompat;I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/SparseArrayCompat",
            "<",
            "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;I)",
            "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroidj/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4

    check-cast p1, Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0, p1, p2}, Landroidj/support/v4/widget/ExploreByTouchHelper$2;->get(Landroidj/support/v4/util/SparseArrayCompat;I)Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public size(Landroidj/support/v4/util/SparseArrayCompat;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidj/support/v4/util/SparseArrayCompat",
            "<",
            "Landroidj/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroidj/support/v4/util/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic size(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroidj/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0, p1}, Landroidj/support/v4/widget/ExploreByTouchHelper$2;->size(Landroidj/support/v4/util/SparseArrayCompat;)I

    move-result v0

    return v0
.end method
