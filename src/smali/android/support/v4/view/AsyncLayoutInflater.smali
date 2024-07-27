.class public final Landroid/support/v4/view/AsyncLayoutInflater;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/AsyncLayoutInflater$a;,
        Landroid/support/v4/view/AsyncLayoutInflater$b;,
        Landroid/support/v4/view/AsyncLayoutInflater$c;,
        Landroid/support/v4/view/AsyncLayoutInflater$d;
    }
.end annotation


# instance fields
.field DW:Landroid/os/Handler;

.field FH:Landroid/support/v4/view/AsyncLayoutInflater$c;

.field private Hw:Landroid/os/Handler$Callback;

.field j6:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/view/e;

    invoke-direct {v0, p0}, Landroid/support/v4/view/e;-><init>(Landroid/support/v4/view/AsyncLayoutInflater;)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->Hw:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->j6:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater;->Hw:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->DW:Landroid/os/Handler;

    invoke-static {}, Landroid/support/v4/view/AsyncLayoutInflater$c;->j6()Landroid/support/v4/view/AsyncLayoutInflater$c;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater;->FH:Landroid/support/v4/view/AsyncLayoutInflater$c;

    return-void
.end method
