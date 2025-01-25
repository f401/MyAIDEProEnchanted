.class Labcd/A$i;
.super Labcd/A$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/A$h;-><init>()V

    return-void
.end method


# virtual methods
.method public VH()Ljava/lang/Object;
    .registers 2

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method
