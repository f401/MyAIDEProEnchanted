.class public final Labcd/Im;
.super Labcd/du;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/du;-><init>(I)V

    return-void
.end method


# virtual methods
.method public get(I)Labcd/Hm;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Hm;

    return-object v0
.end method

.method public j6(ILabcd/Hm;)V
    .registers 3

    invoke-super {p0, p1, p2}, Labcd/du;->j6(ILabcd/cu;)V

    return-void
.end method

.method public v5(I)Labcd/Hm;
    .registers 4

    invoke-virtual {p0, p1}, Labcd/du;->Hw(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Labcd/Im;->get(I)Labcd/Hm;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
