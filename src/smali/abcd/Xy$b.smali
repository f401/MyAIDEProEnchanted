.class Labcd/Xy$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Xy;
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

    check-cast v0, Labcd/Xy$a;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Labcd/Xy$a;->j6:Labcd/Xy;

    iget-object v0, v0, Labcd/Xy$a;->DW:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Labcd/Xy;->DW([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Labcd/Xy$a;->j6:Labcd/Xy;

    iget-object v0, v0, Labcd/Xy$a;->DW:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Labcd/Xy;->FH(Labcd/Xy;Ljava/lang/Object;)V

    goto :goto_0
.end method
