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
    .locals 2

    new-instance v0, Labcd/Qn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Qn;-><init>(I)V

    sput-object v0, Labcd/Qn;->FH:Labcd/Qn;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Labcd/Xt;-><init>(I)V

    return-void
.end method


# virtual methods
.method public aM()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Labcd/Qn;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Labcd/Qn;

    invoke-virtual {p0, p1}, Labcd/Qn;->j6(Labcd/Qn;)I

    move-result v0

    return v0
.end method

.method public get(I)Labcd/Qn$a;
    .locals 1

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Qn$a;

    return-object v0
.end method

.method public j6(Labcd/Qn;)I
    .locals 7

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
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "catch "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v4

    if-eqz v1, :cond_0

    const-string v0, ",\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v3, -0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Labcd/Qn;->rN()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "<any>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Labcd/Qn$a;->Zo()I

    move-result v0

    invoke-static {v0}, Labcd/Yt;->Zo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Labcd/Qn$a;->Hw()Labcd/Ks;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j6(ILabcd/Ks;I)V
    .locals 1

    new-instance v0, Labcd/Qn$a;

    invoke-direct {v0, p2, p3}, Labcd/Qn$a;-><init>(Labcd/Ks;I)V

    invoke-virtual {p0, p1, v0}, Labcd/Xt;->j6(ILjava/lang/Object;)V

    return-void
.end method

.method public rN()Z
    .locals 2

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
