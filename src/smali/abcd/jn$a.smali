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
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_1

    mul-int/lit8 v0, p3, 0x2

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Labcd/Pt;->j6(II)Labcd/Pt;

    move-result-object v2

    iput-object v2, p0, Labcd/jn$a;->j6:Labcd/Pt;

    iput p3, p0, Labcd/jn$a;->DW:I

    iput-object p4, p0, Labcd/jn$a;->FH:Labcd/Ls;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    mul-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Labcd/Pt;->Zo(I)I

    move-result v0

    :try_start_0
    invoke-virtual {p4, v0}, Labcd/Ls;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p5, v2, v3, v0, v4}, Labcd/xn;->j6(Labcd/Pt;IILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bogus class cpi"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public Zo()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getType(I)Labcd/Qs;
    .registers 4

    iget-object v0, p0, Labcd/jn$a;->j6:Labcd/Pt;

    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Labcd/Pt;->Zo(I)I

    move-result v0

    iget-object v1, p0, Labcd/jn$a;->FH:Labcd/Ls;

    invoke-virtual {v1, v0}, Labcd/Ls;->get(I)Labcd/ms;

    move-result-object v0

    check-cast v0, Labcd/Ks;

    invoke-virtual {v0}, Labcd/Ks;->VH()Labcd/Qs;

    move-result-object v0

    return-object v0
.end method

.method public j6(Labcd/Qs;)Labcd/Ss;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Labcd/jn$a;->DW:I

    return v0
.end method
