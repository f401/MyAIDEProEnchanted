.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrollToPositionArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .registers 3

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRow()I
    .registers 3

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
