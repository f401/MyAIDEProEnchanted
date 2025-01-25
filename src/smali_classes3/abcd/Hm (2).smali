.class public final Labcd/Hm;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/cu;


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Labcd/au;

.field private final j6:I

.field private final v5:Labcd/Jm;


# direct methods
.method public constructor <init>(IIILabcd/au;Labcd/Jm;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_6b

    if-ltz p2, :cond_63

    if-le p3, p2, :cond_5b

    if-eqz p4, :cond_53

    invoke-virtual {p4}, Labcd/au;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_3e

    invoke-virtual {p4, v1}, Labcd/au;->get(I)I

    move-result v2

    if-ltz v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "successors["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] == "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Labcd/au;->get(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3e
    if-eqz p5, :cond_4b

    iput p1, p0, Labcd/Hm;->j6:I

    iput p2, p0, Labcd/Hm;->DW:I

    iput p3, p0, Labcd/Hm;->FH:I

    iput-object p4, p0, Labcd/Hm;->Hw:Labcd/au;

    iput-object p5, p0, Labcd/Hm;->v5:Labcd/Jm;

    return-void

    :cond_4b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "catches == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "targets == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "end <= start"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "start < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "label < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_74

    :goto_73
    throw p1

    :goto_74
    goto :goto_73
.end method


# virtual methods
.method public DW()I
    .registers 2

    iget v0, p0, Labcd/Hm;->j6:I

    return v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/Hm;->FH:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/Hm;->DW:I

    return v0
.end method

.method public j6()Labcd/Jm;
    .registers 2

    iget-object v0, p0, Labcd/Hm;->v5:Labcd/Jm;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Hm;->j6:I

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Hm;->DW:I

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Hm;->FH:I

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v5()Labcd/au;
    .registers 2

    iget-object v0, p0, Labcd/Hm;->Hw:Labcd/au;

    return-object v0
.end method
