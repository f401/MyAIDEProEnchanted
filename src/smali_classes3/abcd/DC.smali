.class public abstract Labcd/DC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract j6(Labcd/CC;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;I)I"
        }
    .end annotation
.end method

.method public j6(Labcd/CC;Labcd/CC;Labcd/jC;)Labcd/jC;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TS;",
            "Labcd/jC;",
            ")",
            "Labcd/jC;"
        }
    .end annotation

    :goto_0
    iget v0, p3, Labcd/jC;->j6:I

    iget v1, p3, Labcd/jC;->DW:I

    if-ge v0, v1, :cond_20

    iget v1, p3, Labcd/jC;->FH:I

    iget v2, p3, Labcd/jC;->Hw:I

    if-ge v1, v2, :cond_20

    invoke-virtual {p0, p1, v0, p2, v1}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_20

    :cond_13
    iget v0, p3, Labcd/jC;->j6:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Labcd/jC;->j6:I

    iget v0, p3, Labcd/jC;->FH:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Labcd/jC;->FH:I

    goto :goto_0

    :cond_20
    :goto_20
    iget v0, p3, Labcd/jC;->j6:I

    iget v1, p3, Labcd/jC;->DW:I

    if-ge v0, v1, :cond_44

    iget v0, p3, Labcd/jC;->FH:I

    iget v2, p3, Labcd/jC;->Hw:I

    if-ge v0, v2, :cond_44

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, p1, v1, p2, v2}, Labcd/DC;->j6(Labcd/CC;ILabcd/CC;I)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_44

    :cond_37
    iget v0, p3, Labcd/jC;->DW:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Labcd/jC;->DW:I

    iget v0, p3, Labcd/jC;->Hw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Labcd/jC;->Hw:I

    goto :goto_20

    :cond_44
    :goto_44
    return-object p3
.end method

.method public abstract j6(Labcd/CC;ILabcd/CC;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;ITS;I)Z"
        }
    .end annotation
.end method
