.class public final Labcd/Sn;
.super Labcd/ro;


# direct methods
.method public constructor <init>(Labcd/hs;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/ro;-><init>(Labcd/hs;)V

    return-void
.end method


# virtual methods
.method public final j6(Labcd/cs;)Labcd/Vn;
    .registers 3

    new-instance p1, Labcd/Sn;

    invoke-virtual {p0}, Labcd/Vn;->VH()Labcd/hs;

    move-result-object v0

    invoke-direct {p1, v0}, Labcd/Sn;-><init>(Labcd/hs;)V

    return-object p1
.end method

.method protected j6()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected j6(Z)Ljava/lang/String;
    .registers 2

    const-string p1, "code-address"

    return-object p1
.end method
