.class public final Labcd/Hp;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/lu;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Labcd/lu;",
        "Ljava/lang/Comparable",
        "<",
        "Labcd/Hp;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:Labcd/Kr;

.field private final FH:Labcd/Tp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LTp",
            "<",
            "Labcd/Xo;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Labcd/Gs;


# direct methods
.method public constructor <init>(Labcd/Gs;Labcd/Kr;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iput-object p1, p0, Labcd/Hp;->j6:Labcd/Gs;

    iput-object p2, p0, Labcd/Hp;->DW:Labcd/Kr;

    invoke-virtual {p2}, Labcd/Xt;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v3, Labcd/Xo;

    new-instance v4, Labcd/Wo;

    invoke-virtual {p2, v0}, Labcd/Kr;->get(I)Labcd/Jr;

    move-result-object v5

    invoke-direct {v4, v5}, Labcd/Wo;-><init>(Labcd/Jr;)V

    invoke-direct {v3, v4}, Labcd/Xo;-><init>(Labcd/Wo;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Labcd/Tp;

    sget-object v1, Labcd/wp;->tp:Labcd/wp;

    invoke-direct {v0, v1, v2}, Labcd/Tp;-><init>(Labcd/wp;Ljava/util/List;)V

    iput-object v0, p0, Labcd/Hp;->FH:Labcd/Tp;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationsList == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public aM()Ljava/lang/String;
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Labcd/Hp;->FH:Labcd/Tp;

    invoke-virtual {v0}, Labcd/Tp;->j3()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Xo;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Labcd/Xo;->aM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/Hp;

    invoke-virtual {p0, p1}, Labcd/Hp;->j6(Labcd/Hp;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Labcd/Hp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/Hp;->j6:Labcd/Gs;

    check-cast p1, Labcd/Hp;

    iget-object v1, p1, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0, v1}, Labcd/Fs;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0}, Labcd/Fs;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Hp;)I
    .registers 4

    iget-object v0, p0, Labcd/Hp;->j6:Labcd/Gs;

    iget-object v1, p1, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    return v0
.end method

.method public j6(Labcd/jp;)V
    .registers 5

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v0

    invoke-virtual {p1}, Labcd/jp;->XL()Labcd/Fp;

    move-result-object v1

    iget-object v2, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0, v2}, Labcd/Cp;->DW(Labcd/qs;)Labcd/Bp;

    iget-object v0, p0, Labcd/Hp;->FH:Labcd/Tp;

    invoke-virtual {v1, v0}, Labcd/Fp;->j6(Labcd/Gp;)V

    return-void
.end method

.method public j6(Labcd/jp;Labcd/Lt;)V
    .registers 8

    const/4 v4, 0x4

    invoke-virtual {p1}, Labcd/jp;->tp()Labcd/Cp;

    move-result-object v0

    iget-object v1, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v0, v1}, Labcd/Cp;->j6(Labcd/qs;)I

    move-result v0

    iget-object v1, p0, Labcd/Hp;->FH:Labcd/Tp;

    invoke-virtual {v1}, Labcd/Gp;->we()I

    move-result v1

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Labcd/Hp;->j6:Labcd/Gs;

    invoke-virtual {v3}, Labcd/Fs;->aM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v3, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      method_idx:      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Labcd/Yt;->gn(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Labcd/ku;->writeInt(I)V

    invoke-interface {p2, v1}, Labcd/ku;->writeInt(I)V

    return-void
.end method
