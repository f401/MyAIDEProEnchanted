.class Landroid/support/customtabs/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/f;->VH(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/support/customtabs/f;

.field final j6:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/customtabs/f;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Landroid/support/customtabs/d;->DW:Landroid/support/customtabs/f;

    iput-object p2, p0, Landroid/support/customtabs/d;->j6:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroid/support/customtabs/d;->DW:Landroid/support/customtabs/f;

    iget-object v0, v0, Landroid/support/customtabs/f;->DW:Landroid/support/customtabs/a;

    iget-object v1, p0, Landroid/support/customtabs/d;->j6:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/customtabs/a;->j6(Landroid/os/Bundle;)V

    return-void
.end method
