.class public Labcd/gn;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(Labcd/jn;IILabcd/xn;)Labcd/on;
    .registers 14

    const/4 v1, 0x4

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ge p2, v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v2

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v1

    invoke-virtual {v2, p3}, Labcd/Pt;->Zo(I)I

    move-result v3

    add-int/lit8 v4, p3, 0x2

    invoke-virtual {v2, v4}, Labcd/Pt;->DW(I)I

    move-result v6

    invoke-interface {v1, v3}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Labcd/Js;

    move-object v8, v0
    :try_end_0
    .catch Labcd/wn; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, p3, v3, v1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, v4, v3, v1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    invoke-virtual {v8}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p3, 0x6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Labcd/gn;->j6(Labcd/jn;ILjava/lang/String;IILabcd/xn;)Labcd/on;
    :try_end_1
    .catch Labcd/wn; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    const/4 v8, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while parsing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute at offset "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bad context"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "cf == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected j6(Labcd/jn;ILjava/lang/String;IILabcd/xn;)Labcd/on;
    .registers 13

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v2

    new-instance v0, Labcd/Em;

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v5

    move-object v1, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Labcd/Em;-><init>(Ljava/lang/String;Labcd/Pt;IILabcd/ns;)V

    if-eqz p6, :cond_0

    const-string v1, "attribute data"

    invoke-interface {p6, v2, p4, p5, v1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    return-object v0
.end method
