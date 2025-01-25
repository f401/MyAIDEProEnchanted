.class public final Landroidj/support/v4/widget/ListViewCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scrollListBy(Landroid/widget/ListView;I)V
    .registers 4
    .param p0  # Landroid/widget/ListView;
        .annotation build Landroidj/support/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    invoke-static {p0, p1}, Landroidj/support/v4/widget/ListViewCompatKitKat;->scrollListBy(Landroid/widget/ListView;I)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p0, p1}, Landroidj/support/v4/widget/ListViewCompatGingerbread;->scrollListBy(Landroid/widget/ListView;I)V

    goto :goto_9
.end method
