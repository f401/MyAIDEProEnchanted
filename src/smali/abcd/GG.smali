.class abstract Labcd/GG;
.super Labcd/xE;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/xE;-><init>()V

    return-void
.end method


# virtual methods
.method abstract DW(Labcd/wH;Labcd/YD;)J
.end method

.method final DW(Labcd/wH;Ljava/lang/String;Labcd/YD;)J
    .registers 12

    const-wide/16 v6, 0x0

    invoke-virtual {p0, p1, p2, p3}, Labcd/GG;->j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide v0

    cmp-long v2, v6, v0

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_2
    aget-object v0, v3, v2

    iget-object v0, v0, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/GG;->DW(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide v0

    cmp-long v5, v6, v0

    if-lez v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method DW(Labcd/YD;)Ljava/io/File;
    .registers 3

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/GG;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method abstract DW(Ljava/lang/String;)Z
.end method

.method abstract EQ()Labcd/GG;
.end method

.method final FH(Labcd/wH;Labcd/YD;)J
    .registers 11

    const-wide/16 v6, 0x0

    invoke-virtual {p0, p1, p2}, Labcd/GG;->DW(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    cmp-long v2, v6, v0

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v4, :cond_3

    invoke-virtual {p0}, Labcd/GG;->we()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Labcd/GG;->DW(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    cmp-long v2, v6, v0

    if-lez v2, :cond_0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_3
    aget-object v0, v3, v2

    iget-object v0, v0, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v0, p1, p2}, Labcd/GG;->FH(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    cmp-long v5, v6, v0

    if-lez v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method abstract FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;
.end method

.method abstract FH(Labcd/YD;)Z
.end method

.method final FH(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Labcd/GG;->DW(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v5, v3, v2

    iget-object v5, v5, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v5, p1}, Labcd/GG;->FH(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public bridge synthetic Hw()Labcd/EE;
    .registers 2

    invoke-virtual {p0}, Labcd/GG;->Hw()Labcd/YG;

    move-result-object v0

    return-object v0
.end method

.method Hw(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 4

    invoke-virtual {p0, p1, p2}, Labcd/GG;->Zo(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Labcd/GG;->Hw(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final Hw(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;
    .registers 8

    invoke-virtual {p0, p1, p2, p3}, Labcd/GG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    aget-object v0, v2, v1

    iget-object v0, v0, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v0, p1, p2, p3}, Labcd/GG;->Hw(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public Hw()Labcd/YG;
    .registers 3

    new-instance v0, Labcd/YG;

    invoke-virtual {p0}, Labcd/GG;->VH()Labcd/gE;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labcd/YG;-><init>(Labcd/GG;Labcd/gE;)V

    return-object v0
.end method

.method final Hw(Labcd/YD;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Labcd/GG;->FH(Labcd/YD;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-lt v2, v4, :cond_3

    invoke-virtual {p0}, Labcd/GG;->we()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Labcd/GG;->FH(Labcd/YD;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    aget-object v5, v3, v2

    iget-object v5, v5, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v5, p1}, Labcd/GG;->Hw(Labcd/YD;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method abstract VH()Labcd/gE;
.end method

.method final Zo(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 7

    invoke-virtual {p0, p1, p2}, Labcd/GG;->v5(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_3

    invoke-virtual {p0}, Labcd/GG;->we()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Labcd/GG;->v5(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    aget-object v0, v2, v1

    iget-object v0, v0, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v0, p1, p2}, Labcd/GG;->Zo(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method abstract Zo()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Labcd/BH;",
            ">;"
        }
    .end annotation
.end method

.method abstract gn()Ljava/io/File;
.end method

.method j6(Labcd/wH;Labcd/YD;)J
    .registers 7

    invoke-virtual {p0, p1, p2}, Labcd/GG;->FH(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Labcd/GG;->DW(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide v0

    goto :goto_0
.end method

.method abstract j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J
.end method

.method abstract j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;
.end method

.method abstract j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;
.end method

.method j6(Ljava/lang/String;)Ljava/io/File;
    .registers 7

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method abstract j6(Labcd/TH;Labcd/MH;Labcd/wH;)V
.end method

.method abstract j6(Ljava/util/Set;Labcd/WD;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Labcd/yE;",
            ">;",
            "Labcd/WD;",
            ")V"
        }
    .end annotation
.end method

.method public j6(Labcd/YD;)Z
    .registers 3

    invoke-virtual {p0, p1}, Labcd/GG;->Hw(Labcd/YD;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Labcd/GG;->FH(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract tp()[Labcd/GG$a;
.end method

.method abstract u7()Labcd/pK;
.end method

.method abstract v5(Labcd/wH;Labcd/YD;)Labcd/FE;
.end method

.method public v5()Labcd/IE;
    .registers 2

    new-instance v0, Labcd/wH;

    invoke-direct {v0, p0}, Labcd/wH;-><init>(Labcd/GG;)V

    return-object v0
.end method

.method abstract we()Z
.end method
