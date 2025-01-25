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

    if-eqz p1, :cond_a9

    if-ltz p2, :cond_a1

    const/4 v1, 0x4

    if-ge p2, v1, :cond_a1

    :try_start_7
    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object v2

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v3

    invoke-virtual {v2, p3}, Labcd/Pt;->Zo(I)I

    move-result v4

    add-int/lit8 v5, p3, 0x2

    invoke-virtual {v2, v5}, Labcd/Pt;->DW(I)I

    move-result v6

    invoke-interface {v3, v4}, Labcd/ns;->get(I)Labcd/ms;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Labcd/Js;
    :try_end_20
    .catch Labcd/wn; {:try_start_7 .. :try_end_20} :catch_64

    if-eqz p4, :cond_53

    :try_start_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p4, v2, p3, v4, v3}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v2, v5, v1, v3}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_53
    invoke-virtual {v8}, Labcd/Js;->we()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, p3, 0x6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Labcd/gn;->j6(Labcd/jn;ILjava/lang/String;IILabcd/xn;)Labcd/on;

    move-result-object v0
    :try_end_61
    .catch Labcd/wn; {:try_start_22 .. :try_end_61} :catch_62

    return-object v0

    :catch_62
    move-exception v0

    goto :goto_66

    :catch_64
    move-exception v0

    const/4 v8, 0x0

    :goto_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...while parsing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_88

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8a

    :cond_88
    const-string v2, ""

    :goto_8a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute at offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Vt;->j6(Ljava/lang/String;)V

    throw v0

    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cf == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected j6(Labcd/jn;ILjava/lang/String;IILabcd/xn;)Labcd/on;
    .registers 14

    invoke-virtual {p1}, Labcd/jn;->Hw()Labcd/Pt;

    move-result-object p2

    new-instance v6, Labcd/Em;

    invoke-virtual {p1}, Labcd/jn;->v5()Labcd/ns;

    move-result-object v5

    move-object v0, v6

    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Labcd/Em;-><init>(Ljava/lang/String;Labcd/Pt;IILabcd/ns;)V

    if-eqz p6, :cond_19

    const-string p1, "attribute data"

    invoke-interface {p6, p2, p4, p5, p1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_19
    return-object v6
.end method
