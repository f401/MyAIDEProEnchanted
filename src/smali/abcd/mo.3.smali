.class public final Labcd/mo;
.super Labcd/Zn;


# direct methods
.method public constructor <init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/Zn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    return-void
.end method


# virtual methods
.method public j6(Labcd/Xn;)Labcd/Vn;
    .registers 5

    new-instance v0, Labcd/mo;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    return-object v0
.end method

.method public j6(Labcd/cs;)Labcd/Vn;
    .registers 5

    new-instance v0, Labcd/mo;

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v1

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Labcd/mo;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    return-object v0
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
