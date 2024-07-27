.class public Landroid/support/customtabs/p;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/support/customtabs/a;

.field private final j6:Landroid/support/customtabs/q;


# direct methods
.method constructor <init>(Landroid/support/customtabs/q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/customtabs/p;->j6:Landroid/support/customtabs/q;

    new-instance v0, Landroid/support/customtabs/o;

    invoke-direct {v0, p0}, Landroid/support/customtabs/o;-><init>(Landroid/support/customtabs/p;)V

    iput-object v0, p0, Landroid/support/customtabs/p;->DW:Landroid/support/customtabs/a;

    return-void
.end method

.method static synthetic j6(Landroid/support/customtabs/p;)Landroid/support/customtabs/q;
    .registers 2

    iget-object v0, p0, Landroid/support/customtabs/p;->j6:Landroid/support/customtabs/q;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Landroid/support/customtabs/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Landroid/support/customtabs/p;

    invoke-virtual {p1}, Landroid/support/customtabs/p;->j6()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/customtabs/p;->j6:Landroid/support/customtabs/q;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Landroid/support/customtabs/p;->j6()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method j6()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Landroid/support/customtabs/p;->j6:Landroid/support/customtabs/q;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
