.class Landroid/support/customtabs/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/k;->j6(Landroid/support/customtabs/q;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Landroid/support/customtabs/k;

.field final j6:Landroid/support/customtabs/p;


# direct methods
.method constructor <init>(Landroid/support/customtabs/k;Landroid/support/customtabs/p;)V
    .registers 3

    iput-object p1, p0, Landroid/support/customtabs/j;->DW:Landroid/support/customtabs/k;

    iput-object p2, p0, Landroid/support/customtabs/j;->j6:Landroid/support/customtabs/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    iget-object v0, p0, Landroid/support/customtabs/j;->DW:Landroid/support/customtabs/k;

    iget-object v0, v0, Landroid/support/customtabs/k;->j6:Landroid/support/customtabs/CustomTabsService;

    iget-object v1, p0, Landroid/support/customtabs/j;->j6:Landroid/support/customtabs/p;

    invoke-virtual {v0, v1}, Landroid/support/customtabs/CustomTabsService;->j6(Landroid/support/customtabs/p;)Z

    return-void
.end method
