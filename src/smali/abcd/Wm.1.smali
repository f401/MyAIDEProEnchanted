.class public final Labcd/Wm;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Rs;


# instance fields
.field private final j6:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Labcd/Wm;->j6:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "subroutineAddress < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Mr()I
    .registers 2

    sget-object v0, Labcd/Qs;->we:Labcd/Qs;

    invoke-virtual {v0}, Labcd/Qs;->Mr()I

    move-result v0

    return v0
.end method

.method public U2()Labcd/Rs;
    .registers 1

    return-object p0
.end method

.method public a8()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Labcd/Wm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Labcd/Wm;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Labcd/Wm;->j6:I

    check-cast p1, Labcd/Wm;

    iget v2, p1, Labcd/Wm;->j6:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getType()Labcd/Qs;
    .registers 2

    sget-object v0, Labcd/Qs;->we:Labcd/Qs;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Labcd/Wm;->j6:I

    return v0
.end method

.method public j3()I
    .registers 2

    sget-object v0, Labcd/Qs;->we:Labcd/Qs;

    invoke-virtual {v0}, Labcd/Qs;->j3()I

    move-result v0

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Wm;->j6:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Wm;->j6:I

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
