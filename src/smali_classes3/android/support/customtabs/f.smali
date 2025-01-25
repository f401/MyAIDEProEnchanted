.class Landroid/support/customtabs/f;
.super Landroid/support/customtabs/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/g;->j6(Landroid/support/customtabs/a;)Landroid/support/customtabs/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/support/customtabs/a;

.field final FH:Landroid/support/customtabs/g;

.field private j6:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/support/customtabs/g;Landroid/support/customtabs/a;)V
    .registers 3

    iput-object p1, p0, Landroid/support/customtabs/f;->FH:Landroid/support/customtabs/g;

    iput-object p2, p0, Landroid/support/customtabs/f;->DW:Landroid/support/customtabs/a;

    invoke-direct {p0}, Landroid/support/customtabs/q$a;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/support/customtabs/f;->j6:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public DW(ILandroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/customtabs/f;->DW:Landroid/support/customtabs/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/f;->j6:Landroid/os/Handler;

    new-instance v1, Landroid/support/customtabs/b;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/customtabs/b;-><init>(Landroid/support/customtabs/f;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public DW(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/customtabs/f;->DW:Landroid/support/customtabs/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/f;->j6:Landroid/os/Handler;

    new-instance v1, Landroid/support/customtabs/c;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/customtabs/c;-><init>(Landroid/support/customtabs/f;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public FH(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/customtabs/f;->DW:Landroid/support/customtabs/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/f;->j6:Landroid/os/Handler;

    new-instance v1, Landroid/support/customtabs/e;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/customtabs/e;-><init>(Landroid/support/customtabs/f;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public VH(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Landroid/support/customtabs/f;->DW:Landroid/support/customtabs/a;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/customtabs/f;->j6:Landroid/os/Handler;

    new-instance v1, Landroid/support/customtabs/d;

    invoke-direct {v1, p0, p1}, Landroid/support/customtabs/d;-><init>(Landroid/support/customtabs/f;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
