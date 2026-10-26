.class Labcd/C$a;
.super Labcd/C$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Labcd/C$c;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    return-void
.end method

.method public j6(Landroid/view/accessibility/AccessibilityRecord;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    return-void
.end method
