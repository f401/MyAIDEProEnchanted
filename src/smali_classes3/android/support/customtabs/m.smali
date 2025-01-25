.class public abstract Landroid/support/customtabs/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract j6(Landroid/content/ComponentName;Landroid/support/customtabs/g;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    new-instance v0, Landroid/support/customtabs/l;

    invoke-static {p2}, Landroid/support/customtabs/r$a;->j6(Landroid/os/IBinder;)Landroid/support/customtabs/r;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Landroid/support/customtabs/l;-><init>(Landroid/support/customtabs/m;Landroid/support/customtabs/r;Landroid/content/ComponentName;)V

    invoke-virtual {p0, p1, v0}, Landroid/support/customtabs/m;->j6(Landroid/content/ComponentName;Landroid/support/customtabs/g;)V

    return-void
.end method
