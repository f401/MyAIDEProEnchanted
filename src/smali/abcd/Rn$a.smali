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
        "Ljava/lang/Comparable",
        "<",
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
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-le p2, p1, :cond_1

    invoke-virtual {p3}, Labcd/hu;->Zo()Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Labcd/Rn$a;->j6:I

    iput p2, p0, Labcd/Rn$a;->DW:I

    iput-object p3, p0, Labcd/Rn$a;->FH:Labcd/Qn;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handlers.isMutable()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end <= start"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 3

    check-cast p1, Labcd/Rn$a;

    invoke-virtual {p0, p1}, Labcd/Rn$a;->j6(Labcd/Rn$a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v1, p1, Labcd/Rn$a;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Labcd/Rn$a;

    invoke-virtual {p0, p1}, Labcd/Rn$a;->j6(Labcd/Rn$a;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

    const/4 v1, 0x1

    const/4 v0, -0x1

    iget v2, p0, Labcd/Rn$a;->j6:I

    iget v3, p1, Labcd/Rn$a;->j6:I

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Labcd/Rn$a;->DW:I

    iget v3, p1, Labcd/Rn$a;->DW:I

    if-lt v2, v3, :cond_0

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Labcd/Rn$a;->FH:Labcd/Qn;

    iget-object v1, p1, Labcd/Rn$a;->FH:Labcd/Qn;

    invoke-virtual {v0, v1}, Labcd/Qn;->j6(Labcd/Qn;)I

    move-result v0

    goto :goto_0
.end method
