.class Labcd/lr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/xr$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/xr;->DW()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxr$a<",
        "Labcd/nq;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/xr;

.field final j6:Labcd/yr;


# direct methods
.method constructor <init>(Labcd/xr;Labcd/yr;)V
    .registers 3

    iput-object p1, p0, Labcd/lr;->DW:Labcd/xr;

    iput-object p2, p0, Labcd/lr;->j6:Labcd/yr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/nq;Labcd/yr;)Labcd/nq;
    .registers 3

    invoke-virtual {p2, p1}, Labcd/yr;->j6(Labcd/nq;)Labcd/nq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j6(Ljava/lang/Object;Labcd/yr;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Labcd/nq;

    invoke-virtual {p0, p1, p2}, Labcd/lr;->j6(Labcd/nq;Labcd/yr;)Labcd/nq;

    move-result-object p1

    return-object p1
.end method

.method public j6(II)V
    .registers 4

    iget-object v0, p0, Labcd/lr;->j6:Labcd/yr;

    invoke-virtual {v0, p1, p2}, Labcd/yr;->VH(II)V

    return-void
.end method
