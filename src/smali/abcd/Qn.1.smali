.class public final Labcd/Qn;
.super Labcd/Xt;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Qn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Labcd/Xt;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/Qn;",
        ">;"
    }
.end annotation


# static fields
.field public static final FH:Labcd/Qn;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Qn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Qn;-><init>(I)V

    sput-object v0, Labcd/Qn;->FH:Labcd/Qn;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public aM()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Labcd/Qn;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/Qn;

    invoke-virtual {p0, p1}, Labcd/Qn;->j6(Labcd/Qn;)I

    move-result v0

    return v0
.end method

.method public get(I)Labcd/Qn$a;
    .registers 3

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qn$a;

    return-object v0
.end method

.method public j6(Labcd/Qn;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v1

    invoke-virtual {p1, v2}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v6

    invoke-virtual {v1, v6}, Labcd/Qn$a;->j6(Labcd/Qn$a;)I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    if-ge v3, v4, :cond_4

    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    if-le v3, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "catch "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v3

    if-eqz v0, :cond_0

    const-string v4, ",\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v2, -0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Labcd/Qn;->rN()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "<any>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Labcd/Qn$a;->Zo()I

    move-result v3

    invoke-static {v3}, Labcd/Yt;->Zo(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Labcd/Qn$a;->Hw()Labcd/Ks;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILabcd/Ks;I)V
    .registers 5

    new-instance v0, Labcd/Qn$a;

    invoke-direct {v0, p2, p3}, Labcd/Qn$a;-><init>(Labcd/Ks;I)V

    invoke-virtual {p0, p1, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public rN()Z
    .registers 3

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qn$a;->Hw()Labcd/Ks;

    move-result-object v0

    sget-object v1, Labcd/Ks;->DW:Labcd/Ks;

    invoke-virtual {v0, v1}, Labcd/Ks;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
