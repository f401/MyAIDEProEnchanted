.class Landroidj/support/v4/view/KeyEventCompat$HoneycombKeyEventVersionImpl;
.super Landroidj/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isCtrlPressed(Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/KeyEventCompatHoneycomb;->isCtrlPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public metaStateHasModifiers(II)Z
    .registers 4

    invoke-static {p1, p2}, Landroidj/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method

.method public metaStateHasNoModifiers(I)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/KeyEventCompatHoneycomb;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public normalizeMetaState(I)I
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/KeyEventCompatHoneycomb;->normalizeMetaState(I)I

    move-result v0

    return v0
.end method
