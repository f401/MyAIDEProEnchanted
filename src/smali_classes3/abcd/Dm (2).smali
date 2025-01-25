.class public final Labcd/Dm;
.super Labcd/Xt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Dm$a;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Labcd/Dm$a;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Dm$a;

    return-object p1
.end method

.method public j6(ILabcd/Ks;Labcd/Ks;Labcd/Js;I)V
    .registers 7

    new-instance v0, Labcd/Dm$a;

    invoke-direct {v0, p2, p3, p4, p5}, Labcd/Dm$a;-><init>(Labcd/Ks;Labcd/Ks;Labcd/Js;I)V

    invoke-virtual {p0, p1, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method
