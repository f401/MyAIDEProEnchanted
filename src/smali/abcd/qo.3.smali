.class public abstract Labcd/qo;
.super Labcd/Vn;


# direct methods
.method public constructor <init>(Labcd/hs;Labcd/cs;)V
    .registers 4

    sget-object v0, Labcd/Yn;->DW:Labcd/Xn;

    invoke-direct {p0, v0, p1, p2}, Labcd/Vn;-><init>(Labcd/Xn;Labcd/hs;Labcd/cs;)V

    return-void
.end method


# virtual methods
.method public final DW(I)Labcd/Vn;
    .registers 3

    invoke-virtual {p0}, Labcd/Vn;->gn()Labcd/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Labcd/cs;->v5(I)Labcd/cs;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/Vn;->j6(Labcd/cs;)Labcd/Vn;

    move-result-object v0

    return-object v0
.end method

.method public final j6(Labcd/Xn;)Labcd/Vn;
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
