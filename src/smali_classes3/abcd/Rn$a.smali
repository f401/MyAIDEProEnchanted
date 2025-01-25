.class public Labcd/Rn$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/Rn$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Labcd/Qn;

.field private final j6:I


# direct methods
.method public constructor <init>(IILabcd/Qn;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_24

    if-le p2, p1, :cond_1c

    invoke-virtual {p3}, Labcd/hu;->Zo()Z

    move-result v0

    if-nez v0, :cond_14

    iput p1, p0, Labcd/Rn$a;->j6:I

    iput p2, p0, Labcd/Rn$a;->DW:I

    iput-object p3, p0, Labcd/Rn$a;->FH:Labcd/Qn;

    return-void

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlers.isMutable()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end <= start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/Rn$a;->DW:I

    return v0
.end method

.method public VH()I
    .registers 2

    iget v0, p0, Labcd/Rn$a;->j6:I

    return v0
.end method

.method public Zo()Labcd/Qn;
    .registers 2

    iget-object v0, p0, Labcd/Rn$a;->FH:Labcd/Qn;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Rn$a;

    invoke-virtual {p0, p1}, Labcd/Rn$a;->j6(Labcd/Rn$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/Rn$a;

    if-eqz v0, :cond_e

    check-cast p1, Labcd/Rn$a;

    invoke-virtual {p0, p1}, Labcd/Rn$a;->j6(Labcd/Rn$a;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Labcd/Rn$a;->j6:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Labcd/Rn$a;->DW:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/Rn$a;->FH:Labcd/Qn;

    invoke-virtual {v1}, Labcd/Xt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j6(Labcd/Rn$a;)I
    .registers 6

    iget v0, p0, Labcd/Rn$a;->j6:I

    iget v1, p1, Labcd/Rn$a;->j6:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v3, 0x1

    if-le v0, v1, :cond_c

    return v3

    :cond_c
    iget v0, p0, Labcd/Rn$a;->DW:I

    iget v1, p1, Labcd/Rn$a;->DW:I

    if-ge v0, v1, :cond_13

    return v2

    :cond_13
    if-le v0, v1, :cond_16

    return v3

    :cond_16
    iget-object v0, p0, Labcd/Rn$a;->FH:Labcd/Qn;

    iget-object p1, p1, Labcd/Rn$a;->FH:Labcd/Qn;

    invoke-virtual {v0, p1}, Labcd/Qn;->j6(Labcd/Qn;)I

    move-result p1

    return p1
.end method
