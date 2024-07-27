.class Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;


# direct methods
.method constructor <init>(Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;)V
    .registers 2

    iput-object p1, p0, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v0}, Landroidj/support/v4/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V

    return-void
.end method
