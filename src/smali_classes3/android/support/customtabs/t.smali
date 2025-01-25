.class Landroid/support/customtabs/t;
.super Landroid/support/customtabs/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/PostMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final j6:Landroid/support/customtabs/PostMessageService;


# direct methods
.method constructor <init>(Landroid/support/customtabs/PostMessageService;)V
    .registers 2

    iput-object p1, p0, Landroid/support/customtabs/t;->j6:Landroid/support/customtabs/PostMessageService;

    invoke-direct {p0}, Landroid/support/customtabs/s$a;-><init>()V

    return-void
.end method


# virtual methods
.method public DW(Landroid/support/customtabs/q;Landroid/os/Bundle;)V
    .registers 3

    invoke-interface {p1, p2}, Landroid/support/customtabs/q;->VH(Landroid/os/Bundle;)V

    return-void
.end method

.method public DW(Landroid/support/customtabs/q;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-interface {p1, p2, p3}, Landroid/support/customtabs/q;->FH(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
