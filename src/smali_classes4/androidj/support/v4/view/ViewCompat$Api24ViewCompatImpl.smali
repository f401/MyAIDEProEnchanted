.class Landroidj/support/v4/view/ViewCompat$Api24ViewCompatImpl;
.super Landroidj/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public setPointerIcon(Landroid/view/View;Landroidj/support/v4/view/PointerIconCompat;)V
    .registers 4

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroidj/support/v4/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    :goto_6
    invoke-static {p1, v0}, Landroidj/support/v4/view/ViewCompatApi24;->setPointerIcon(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method
