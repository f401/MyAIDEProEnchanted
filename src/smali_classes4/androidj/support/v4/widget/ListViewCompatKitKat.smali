.class Landroidj/support/v4/widget/ListViewCompatKitKat;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation build Landroidj/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scrollListBy(Landroid/widget/ListView;I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->scrollListBy(I)V

    return-void
.end method
