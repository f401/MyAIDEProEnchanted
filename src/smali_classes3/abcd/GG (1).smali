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

    invoke-virtual {p0, p1, p2, p3}, Labcd/GG;->j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_b

    return-wide v0

    :cond_b
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_11
    if-lt v4, v1, :cond_16

    const-wide/16 p1, -0x1

    return-wide p1

    :cond_16
    aget-object v5, v0, v4

    iget-object v5, v5, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v5, p1, p2, p3}, Labcd/GG;->DW(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gtz v7, :cond_23

    return-wide v5

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_11
.end method

.method DW(Labcd/YD;)Ljava/io/File;
    .registers 2

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/GG;->j6(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method abstract DW(Ljava/lang/String;)Z
.end method

.method abstract EQ()Labcd/GG;
.end method

.method final FH(Labcd/wH;Labcd/YD;)J
    .registers 11

    invoke-virtual {p0, p1, p2}, Labcd/GG;->DW(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_b

    return-wide v0

    :cond_b
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v0

    array-length v1, v0

    const/4 v4, 0x0

    :goto_11
    if-lt v4, v1, :cond_25

    invoke-virtual {p0}, Labcd/GG;->we()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0, p1, p2}, Labcd/GG;->DW(Labcd/wH;Labcd/YD;)J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-gtz v0, :cond_22

    return-wide p1

    :cond_22
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_25
    aget-object v5, v0, v4

    iget-object v5, v5, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v5, p1, p2}, Labcd/GG;->FH(Labcd/wH;Labcd/YD;)J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gtz v7, :cond_32

    return-wide v5

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_11
.end method

.method abstract FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;
.end method

.method abstract FH(Labcd/YD;)Z
.end method

.method final FH(Ljava/lang/String;)Z
    .registers 8

    invoke-virtual {p0, p1}, Labcd/GG;->DW(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-lt v4, v2, :cond_12

    return v3

    :cond_12
    aget-object v5, v0, v4

    iget-object v5, v5, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v5, p1}, Labcd/GG;->FH(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_f
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

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Labcd/GG;->Hw(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object p1

    if-eqz p1, :cond_12

    return-object p1

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method

.method final Hw(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;
    .registers 8

    invoke-virtual {p0, p1, p2, p3}, Labcd/GG;->FH(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-lt v2, v1, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    aget-object v3, v0, v2

    iget-object v3, v3, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v3, p1, p2, p3}, Labcd/GG;->Hw(Labcd/wH;Ljava/lang/String;Labcd/YD;)Labcd/FE;

    move-result-object v3

    if-eqz v3, :cond_1c

    return-object v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
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

    invoke-virtual {p0, p1}, Labcd/GG;->FH(Labcd/YD;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-lt v4, v2, :cond_1f

    invoke-virtual {p0}, Labcd/GG;->we()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Labcd/GG;->FH(Labcd/YD;)Z

    move-result p1

    if-eqz p1, :cond_1e

    return v1

    :cond_1e
    return v3

    :cond_1f
    aget-object v5, v0, v4

    iget-object v5, v5, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v5, p1}, Labcd/GG;->Hw(Labcd/YD;)Z

    move-result v5

    if-eqz v5, :cond_2a

    return v1

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f
.end method

.method abstract VH()Labcd/gE;
.end method

.method final Zo(Labcd/wH;Labcd/YD;)Labcd/FE;
    .registers 7

    invoke-virtual {p0, p1, p2}, Labcd/GG;->v5(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {p0}, Labcd/GG;->tp()[Labcd/GG$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-lt v2, v1, :cond_1e

    invoke-virtual {p0}, Labcd/GG;->we()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1, p2}, Labcd/GG;->v5(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object p1

    if-eqz p1, :cond_1c

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1

    :cond_1e
    aget-object v3, v0, v2

    iget-object v3, v3, Labcd/GG$a;->j6:Labcd/GG;

    invoke-virtual {v3, p1, p2}, Labcd/GG;->Zo(Labcd/wH;Labcd/YD;)Labcd/FE;

    move-result-object v3

    if-eqz v3, :cond_29

    return-object v3

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method abstract Zo()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Labcd/BH;",
            ">;"
        }
    .end annotation
.end method

.method abstract gn()Ljava/io/File;
.end method

.method j6(Labcd/wH;Labcd/YD;)J
    .registers 8

    invoke-virtual {p0, p1, p2}, Labcd/GG;->FH(Labcd/wH;Labcd/YD;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v2, v0

    if-gtz v4, :cond_b

    return-wide v0

    :cond_b
    invoke-virtual {p2}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Labcd/GG;->DW(Labcd/wH;Ljava/lang/String;Labcd/YD;)J

    move-result-wide p1

    return-wide p1
.end method

.method abstract j6(Labcd/wH;Ljava/lang/String;Labcd/YD;)J
.end method

.method abstract j6(Ljava/io/File;Labcd/yE;Z)Labcd/GG$c;
.end method

.method abstract j6(Ljava/io/File;Ljava/io/File;)Labcd/aH;
.end method

.method j6(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Labcd/GG;->gn()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method abstract j6(Labcd/TH;Labcd/MH;Labcd/wH;)V
.end method

.method abstract j6(Ljava/util/Set;Labcd/WD;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
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

    if-nez v0, :cond_12

    invoke-virtual {p1}, Labcd/YD;->we()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Labcd/GG;->FH(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_12

    const/4 p1, 0x0

    return p1

    :cond_12
    const/4 p1, 0x1

    return p1
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
