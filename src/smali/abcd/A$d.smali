.class Labcd/A$d;
.super Labcd/A$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Labcd/A$c;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
