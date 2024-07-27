.class Labcd/or;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/xr$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/xr;->v5(Labcd/yr;)V
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
        "Labcd/Vp;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/xr;


# direct methods
.method constructor <init>(Labcd/xr;)V
    .registers 2

    iput-object p1, p0, Labcd/or;->j6:Labcd/xr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/Vp;Labcd/yr;)Labcd/Vp;
    .registers 4

    invoke-virtual {p2, p1}, Labcd/yr;->j6(Labcd/Vp;)Labcd/Vp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j6(Ljava/lang/Object;Labcd/yr;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Labcd/Vp;

    invoke-virtual {p0, p1, p2}, Labcd/or;->j6(Labcd/Vp;Labcd/yr;)Labcd/Vp;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/hr$a;Labcd/Vp;IILabcd/yr;)V
    .registers 6

    invoke-virtual {p5, p3, p4}, Labcd/yr;->DW(II)V

    invoke-virtual {p2, p1}, Labcd/Vp;->j6(Labcd/hr$a;)V

    return-void
.end method

.method public bridge synthetic j6(Labcd/hr$a;Ljava/lang/Object;IILabcd/yr;)V
    .registers 12

    move-object v2, p2

    check-cast v2, Labcd/Vp;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Labcd/or;->j6(Labcd/hr$a;Labcd/Vp;IILabcd/yr;)V

    return-void
.end method
