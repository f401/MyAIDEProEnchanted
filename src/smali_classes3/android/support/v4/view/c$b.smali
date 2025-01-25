.class Landroid/support/v4/view/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;)Labcd/B;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public j6(Landroid/support/v4/view/c;)Landroid/view/View$AccessibilityDelegate;
    .registers 3

    new-instance v0, Landroid/support/v4/view/d;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/d;-><init>(Landroid/support/v4/view/c$b;Landroid/support/v4/view/c;)V

    return-object v0
.end method

.method public j6(Landroid/view/View$AccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method
