.class public abstract Labcd/Fs;
.super Labcd/Ms;


# instance fields
.field private final DW:Labcd/Hs;

.field private final j6:Labcd/Ks;


# direct methods
.method constructor <init>(Labcd/Ks;Labcd/Hs;)V
    .registers 3

    invoke-direct {p0}, Labcd/Ms;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Labcd/Fs;->j6:Labcd/Ks;

    iput-object p2, p0, Labcd/Fs;->DW:Labcd/Hs;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "nat == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "definingClass == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected DW(Labcd/ms;)I
    .registers 4

    check-cast p1, Labcd/Fs;

    iget-object v0, p0, Labcd/Fs;->j6:Labcd/Ks;

    iget-object v1, p1, Labcd/Fs;->j6:Labcd/Ks;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    iget-object v0, p0, Labcd/Fs;->DW:Labcd/Hs;

    invoke-virtual {v0}, Labcd/Hs;->J8()Labcd/Js;

    move-result-object v0

    iget-object p1, p1, Labcd/Fs;->DW:Labcd/Hs;

    invoke-virtual {p1}, Labcd/Hs;->J8()Labcd/Js;

    move-result-object p1

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public final Hw()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final VH()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/Fs;->j6:Labcd/Ks;

    return-object v0
.end method

.method public final aM()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Labcd/Fs;->j6:Labcd/Ks;

    invoke-virtual {v1}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Fs;->DW:Labcd/Hs;

    invoke-virtual {v1}, Labcd/Hs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_25

    :cond_d
    check-cast p1, Labcd/Fs;

    iget-object v0, p0, Labcd/Fs;->j6:Labcd/Ks;

    iget-object v1, p1, Labcd/Fs;->j6:Labcd/Ks;

    invoke-virtual {v0, v1}, Labcd/Ks;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Labcd/Fs;->DW:Labcd/Hs;

    iget-object p1, p1, Labcd/Fs;->DW:Labcd/Hs;

    invoke-virtual {v0, p1}, Labcd/Hs;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p1, 0x0

    :goto_26
    return p1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/Fs;->j6:Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/Fs;->DW:Labcd/Hs;

    invoke-virtual {v1}, Labcd/Hs;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/ms;->Zo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final we()Labcd/Hs;
    .registers 2

    iget-object v0, p0, Labcd/Fs;->DW:Labcd/Hs;

    return-object v0
.end method
