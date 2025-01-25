.class public Landroid/support/customtabs/p;
.super Ljava/lang/Object;


# instance fields
.field private final DW:Landroid/support/customtabs/a;

.field private final j6:Landroid/support/customtabs/q;


# direct methods
.method constructor <init>(Landroid/support/customtabs/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/customtabs/p;->j6:Landroid/support/customtabs/q;

    new-instance p1, Landroid/support/customtabs/o;

    invoke-direct {p1, p0}, Landroid/support/customtabs/o;-><init>(Landroid/support/customtabs/p;)V

    iput-object p1, p0, Landroid/support/customtabs/p;->DW:Landroid/support/customtabs/a;

    return-void
.end method

.method static synthetic j6(Landroid/support/customtabs/p;)Landroid/support/customtabs/q;
    .registers 1

    iget-object p0, p0, Landroid/support/customtabs/p;->j6:Landroid/support/customtabs/q;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/customtabs/p;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    check-cast p1, Landroid/support/customtabs/p;

    invoke-virtual {p1}, Landroid/support/customtabs/p;->j6()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Landroid/support/customtabs/p;->j6:Landroid/support/customtabs/q;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
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
