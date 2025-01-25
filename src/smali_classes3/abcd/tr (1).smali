.class Labcd/tr;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/xr$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/xr;->Zo(Labcd/yr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxr$d<",
        "Labcd/jq;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/xr;


# direct methods
.method constructor <init>(Labcd/xr;)V
    .registers 2

    iput-object p1, p0, Labcd/tr;->j6:Labcd/xr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/jq;Labcd/yr;)Labcd/jq;
    .registers 3

    invoke-virtual {p2, p1}, Labcd/yr;->j6(Labcd/jq;)Labcd/jq;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j6(Ljava/lang/Object;Labcd/yr;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Labcd/jq;

    invoke-virtual {p0, p1, p2}, Labcd/tr;->j6(Labcd/jq;Labcd/yr;)Labcd/jq;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/hr$a;Labcd/jq;IILabcd/yr;)V
    .registers 6

    invoke-virtual {p5, p3, p4}, Labcd/yr;->v5(II)V

    invoke-virtual {p2, p1}, Labcd/jq;->j6(Labcd/hr$a;)V

    return-void
.end method

.method public bridge synthetic j6(Labcd/hr$a;Ljava/lang/Object;IILabcd/yr;)V
    .registers 6

    check-cast p2, Labcd/jq;

    invoke-virtual/range {p0 .. p5}, Labcd/tr;->j6(Labcd/hr$a;Labcd/jq;IILabcd/yr;)V

    return-void
.end method
