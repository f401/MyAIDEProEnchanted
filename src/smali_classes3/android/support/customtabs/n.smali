.class public final Landroid/support/customtabs/n;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/support/customtabs/r;

.field private final FH:Landroid/support/customtabs/q;

.field private final Hw:Landroid/content/ComponentName;

.field private final j6:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/support/customtabs/r;Landroid/support/customtabs/q;Landroid/content/ComponentName;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/customtabs/n;->j6:Ljava/lang/Object;

    iput-object p1, p0, Landroid/support/customtabs/n;->DW:Landroid/support/customtabs/r;

    iput-object p2, p0, Landroid/support/customtabs/n;->FH:Landroid/support/customtabs/q;

    iput-object p3, p0, Landroid/support/customtabs/n;->Hw:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method DW()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/support/customtabs/n;->Hw:Landroid/content/ComponentName;

    return-object v0
.end method

.method j6()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/support/customtabs/n;->FH:Landroid/support/customtabs/q;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public j6(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/support/customtabs/n;->DW:Landroid/support/customtabs/r;

    iget-object v1, p0, Landroid/support/customtabs/n;->FH:Landroid/support/customtabs/q;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/support/customtabs/r;->j6(Landroid/support/customtabs/q;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p1

    :catch_9
    move-exception p1

    const/4 p1, 0x0

    return p1
.end method
