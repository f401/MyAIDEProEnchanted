.class Landroidj/support/v4/view/ViewCompat$ICSMr1ViewCompatImpl;
.super Landroidj/support/v4/view/ViewCompat$ICSViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSMr1ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidj/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasOnClickListeners(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroidj/support/v4/view/ViewCompatICSMr1;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
