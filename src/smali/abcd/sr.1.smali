.class Labcd/sr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/xr$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/xr;->Hw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxr$d",
        "<",
        "Labcd/_p;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/xr;

.field final j6:Labcd/Dr;


# direct methods
.method constructor <init>(Labcd/xr;Labcd/Dr;)V
    .registers 3

    iput-object p1, p0, Labcd/sr;->DW:Labcd/xr;

    iput-object p2, p0, Labcd/sr;->j6:Labcd/Dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/_p;Labcd/yr;)Labcd/_p;
    .registers 3

    return-object p1
.end method

.method public bridge synthetic j6(Ljava/lang/Object;Labcd/yr;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Labcd/_p;

    invoke-virtual {p0, p1, p2}, Labcd/sr;->j6(Labcd/_p;Labcd/yr;)Labcd/_p;

    return-object p1
.end method

.method public j6(Labcd/hr$a;Labcd/_p;IILabcd/yr;)V
    .registers 7

    invoke-virtual {p2, p1}, Labcd/_p;->j6(Labcd/hr$a;)V

    iget-object v0, p0, Labcd/sr;->j6:Labcd/Dr;

    invoke-virtual {v0, p3, p4}, Labcd/Dr;->DW(II)V

    return-void
.end method

.method public bridge synthetic j6(Labcd/hr$a;Ljava/lang/Object;IILabcd/yr;)V
    .registers 12

    move-object v2, p2

    check-cast v2, Labcd/_p;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Labcd/sr;->j6(Labcd/hr$a;Labcd/_p;IILabcd/yr;)V

    return-void
.end method
