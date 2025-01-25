.class Landroid/support/customtabs/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/f;->DW(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/os/Bundle;

.field final FH:Landroid/support/customtabs/f;

.field final j6:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/customtabs/f;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Landroid/support/customtabs/c;->FH:Landroid/support/customtabs/f;

    iput-object p2, p0, Landroid/support/customtabs/c;->j6:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/customtabs/c;->DW:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/support/customtabs/c;->FH:Landroid/support/customtabs/f;

    iget-object v0, v0, Landroid/support/customtabs/f;->DW:Landroid/support/customtabs/a;

    iget-object v1, p0, Landroid/support/customtabs/c;->j6:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/customtabs/c;->DW:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/customtabs/a;->j6(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
