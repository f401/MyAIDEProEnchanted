.class Labcd/vr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/xr$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/xr;->j6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxr$b<",
        "Labcd/lq;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/xr;


# direct methods
.method constructor <init>(Labcd/xr;)V
    .registers 2

    iput-object p1, p0, Labcd/vr;->j6:Labcd/xr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/hr$a;Labcd/lq;)V
    .registers 3

    invoke-virtual {p2, p1}, Labcd/lq;->j6(Labcd/hr$a;)V

    return-void
.end method

.method public bridge synthetic j6(Labcd/hr$a;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Labcd/lq;

    invoke-virtual {p0, p1, p2}, Labcd/vr;->j6(Labcd/hr$a;Labcd/lq;)V

    return-void
.end method
