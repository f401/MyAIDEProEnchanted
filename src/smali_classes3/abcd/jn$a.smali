.class Labcd/jn$a;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/Ss;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final DW:I

.field private final FH:Labcd/Ls;

.field private final j6:Labcd/Pt;


# direct methods
.method public constructor <init>(Labcd/Pt;IILabcd/Ls;Labcd/xn;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_45

    mul-int/lit8 v0, p3, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object p1

    iput-object p1, p0, Labcd/jn$a;->j6:Labcd/Pt;

    iput p3, p0, Labcd/jn$a;->DW:I

    iput-object p4, p0, Labcd/jn$a;->FH:Labcd/Ls;

    const/4 p2, 0x0

    :goto_13
    if-ge p2, p3, :cond_44

    mul-int/lit8 v0, p2, 0x2

    invoke-virtual {p1, v0}, Labcd/Pt;->Zo(I)I

    move-result v1

    :try_start_1b
    invoke-virtual {p4, v1}, Labcd/Ls;->get(I)Labcd/ms;

    move-result-object v1

    check-cast v1, Labcd/Ks;
    :try_end_21
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_21} :catch_3b

    if-eqz p5, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p5, p1, v0, v2, v1}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_38
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    :catch_3b
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "bogus class cpi"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_44
    return-void

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4e

    :goto_4d
    throw p1

    :goto_4e
    goto :goto_4d
.end method


# virtual methods
.method public Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getType(I)Labcd/Qs;
    .registers 3

    iget-object v0, p0, Labcd/jn$a;->j6:Labcd/Pt;

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Labcd/Pt;->Zo(I)I

    move-result p1

    iget-object v0, p0, Labcd/jn$a;->FH:Labcd/Ls;

    invoke-virtual {v0, p1}, Labcd/Ls;->get(I)Labcd/ms;

    move-result-object p1

    check-cast p1, Labcd/Ks;

    invoke-virtual {p1}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object p1

    return-object p1
.end method

.method public j6(Labcd/Qs;)Labcd/Ss;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/jn$a;->DW:I

    return v0
.end method
