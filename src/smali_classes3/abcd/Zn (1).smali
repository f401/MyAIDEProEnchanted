.class public abstract Labcd/Zn;
.super Labcd/Vn;


# direct methods
.method public constructor <init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Labcd/Vn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    return-void
.end method


# virtual methods
.method public final DW()I
    .registers 2

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v0

    invoke-virtual {v0}, Labcd/ao;->j6()I

    move-result v0

    return v0
.end method

.method public final DW(I)Labcd/Vn;
    .registers 3

    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/cs;->v5(I)Labcd/cs;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/Vn;->j6(Labcd/cs;)Labcd/Vn;

    move-result-object p1

    return-object p1
.end method

.method protected final j6(Z)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Labcd/ao;->DW(Labcd/Vn;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final j6(Labcd/Lt;)V
    .registers 3

    invoke-virtual {p0}, Labcd/Vn;->Zo()Labcd/Xn;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Xn;->DW()Labcd/ao;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Labcd/ao;->j6(Labcd/Lt;Labcd/Vn;)V

    return-void
.end method
