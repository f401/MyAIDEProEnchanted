.class Labcd/wr;
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
        "Labcd/nq;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/xr;


# direct methods
.method constructor <init>(Labcd/xr;)V
    .registers 2

    iput-object p1, p0, Labcd/wr;->j6:Labcd/xr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/hr$a;Labcd/nq;)V
    .registers 3

    invoke-virtual {p2, p1}, Labcd/nq;->j6(Labcd/hr$a;)V

    return-void
.end method

.method public bridge synthetic j6(Labcd/hr$a;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Labcd/nq;

    invoke-virtual {p0, p1, p2}, Labcd/wr;->j6(Labcd/hr$a;Labcd/nq;)V

    return-void
.end method
