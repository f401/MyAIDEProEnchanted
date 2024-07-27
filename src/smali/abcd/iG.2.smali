.class public abstract Labcd/iG;
.super Labcd/AE$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/AE$a;"
    }
.end annotation


# instance fields
.field EQ:I


# direct methods
.method constructor <init>(Labcd/YD;)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/AE$a;-><init>(Labcd/YD;)V

    return-void
.end method


# virtual methods
.method public final DW(Labcd/fG;)Z
    .registers 4

    iget v0, p0, Labcd/iG;->EQ:I

    iget v1, p1, Labcd/fG;->Hw:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract aM()I
.end method

.method public final getId()Labcd/yE;
    .registers 1

    return-object p0
.end method

.method public final j6(Labcd/fG;)V
    .registers 4

    iget v0, p0, Labcd/iG;->EQ:I

    iget v1, p1, Labcd/fG;->Hw:I

    or-int/2addr v0, v1

    iput v0, p0, Labcd/iG;->EQ:I

    return-void
.end method

.method abstract j6(Labcd/qG;)V
.end method

.method protected j6(Ljava/lang/StringBuilder;)V
    .registers 4

    const/16 v1, 0x2d

    iget v0, p0, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    const/16 v0, 0x6f

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const/16 v0, 0x74

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const/16 v0, 0x72

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    const/16 v0, 0x75

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/16 v0, 0x73

    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Labcd/iG;->EQ:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/16 v1, 0x70

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/iG;->aM()I

    move-result v1

    invoke-static {v1}, Labcd/hE;->DW(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Labcd/iG;->j6(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
