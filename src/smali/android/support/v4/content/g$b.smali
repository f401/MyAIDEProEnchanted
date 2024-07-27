.class Landroid/support/v4/content/g$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/content/g$a;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Landroid/support/v4/content/g$a;->j6:Landroid/support/v4/content/g;

    iget-object v0, v0, Landroid/support/v4/content/g$a;->DW:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/g;->FH([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/support/v4/content/g$a;->j6:Landroid/support/v4/content/g;

    iget-object v0, v0, Landroid/support/v4/content/g$a;->DW:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/content/g;->j6(Ljava/lang/Object;)V

    goto :goto_0
.end method
