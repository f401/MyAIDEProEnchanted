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
        "Ljava/lang/Comparable<",
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
    .registers 2

    const-string v0, ""

    invoke-virtual {p0, v0, v0}, Labcd/Qn;->j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Qn;

    invoke-virtual {p0, p1}, Labcd/Qn;->j6(Labcd/Qn;)I

    move-result p1

    return p1
.end method

.method public get(I)Labcd/Qn$a;
    .registers 2

    invoke-virtual {p0, p1}, Labcd/Xt;->DW(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/Qn$a;

    return-object p1
.end method

.method public j6(Labcd/Qn;)I
    .registers 9

    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    invoke-virtual {p1}, Labcd/Xt;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v3, :cond_25

    invoke-virtual {p0, v4}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v5

    invoke-virtual {p1, v4}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v6

    invoke-virtual {v5, v6}, Labcd/Qn$a;->j6(Labcd/Qn$a;)I

    move-result v5

    if-eqz v5, :cond_22

    return v5

    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_25
    if-ge v1, v2, :cond_29

    const/4 p1, -0x1

    return p1

    :cond_29
    if-le v1, v2, :cond_2d

    const/4 p1, 0x1

    return p1

    :cond_2d
    return v0
.end method

.method public j6(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Labcd/Xt;->size()I

    move-result v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "catch "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    :goto_17
    if-ge p2, v1, :cond_57

    invoke-virtual {p0, p2}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v2

    if-eqz p2, :cond_2c

    const-string v3, ",\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    add-int/lit8 v3, v1, -0x1

    if-ne p2, v3, :cond_39

    invoke-virtual {p0}, Labcd/Qn;->rN()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "<any>"

    goto :goto_41

    :cond_39
    invoke-virtual {v2}, Labcd/Qn$a;->Hw()Labcd/Ks;

    move-result-object v3

    invoke-virtual {v3}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v3

    :goto_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/Qn$a;->Zo()I

    move-result v2

    invoke-static {v2}, Labcd/Yt;->Zo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_17

    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Labcd/Qn;->get(I)Labcd/Qn$a;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Qn$a;->Hw()Labcd/Ks;

    move-result-object v0

    sget-object v1, Labcd/Ks;->DW:Labcd/Ks;

    invoke-virtual {v0, v1}, Labcd/Ks;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
