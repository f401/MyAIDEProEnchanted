.class public final Labcd/Vo;
.super Labcd/Gp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/Vo$a;
    }
.end annotation


# static fields
.field private static final v5:Labcd/Vo$a;


# instance fields
.field private VH:Labcd/Pp;

.field private final Zo:Labcd/Hr;

.field private gn:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/Vo$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/Vo$a;-><init>(Labcd/Uo;)V

    sput-object v0, Labcd/Vo;->v5:Labcd/Vo$a;

    return-void
.end method

.method public constructor <init>(Labcd/Hr;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Labcd/Gp;-><init>(II)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Labcd/Vo;->Zo:Labcd/Hr;

    iput-object v2, p0, Labcd/Vo;->VH:Labcd/Pp;

    iput-object v2, p0, Labcd/Vo;->gn:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic j6(Labcd/Vo;)Labcd/Pp;
    .registers 2

    iget-object v0, p0, Labcd/Vo;->VH:Labcd/Pp;

    return-object v0
.end method

.method public static j6([Labcd/Vo;)V
    .registers 2

    sget-object v0, Labcd/Vo;->v5:Labcd/Vo$a;

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method protected DW(Labcd/Gp;)I
    .registers 4

    check-cast p1, Labcd/Vo;

    iget-object v0, p0, Labcd/Vo;->Zo:Labcd/Hr;

    iget-object v1, p1, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v0, v1}, Labcd/Hr;->j6(Labcd/Hr;)I

    move-result v0

    return v0
.end method

.method protected DW(Labcd/Kp;I)V
    .registers 7

    new-instance v0, Labcd/Qt;

    invoke-direct {v0}, Labcd/Qt;-><init>()V

    new-instance v1, Labcd/Up;

    invoke-virtual {p1}, Labcd/Kp;->DW()Labcd/jp;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Labcd/Up;-><init>(Labcd/jp;Labcd/Lt;)V

    iget-object v2, p0, Labcd/Vo;->Zo:Labcd/Hr;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Labcd/Up;->j6(Labcd/Hr;Z)V

    invoke-virtual {v0}, Labcd/Qt;->gn()[B

    move-result-object v0

    iput-object v0, p0, Labcd/Vo;->gn:[B

    iget-object v0, p0, Labcd/Vo;->gn:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Labcd/Gp;->j6(I)V

    return-void
.end method

.method protected DW(Labcd/jp;Labcd/Lt;)V
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-interface {p2}, Labcd/Lt;->Hw()Z

    move-result v0

    iget-object v1, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v1}, Labcd/Hr;->rN()Labcd/Ir;

    move-result-object v1

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Labcd/Gp;->Ws()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " annotation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  visibility: VISBILITY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Labcd/Lt;->j6(ILjava/lang/String;)V

    :cond_0
    sget-object v2, Labcd/Uo;->j6:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v4, :cond_3

    if-eq v1, v6, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p2, v6}, Labcd/ku;->writeByte(I)V

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Labcd/Up;

    invoke-direct {v0, p1, p2}, Labcd/Up;-><init>(Labcd/jp;Labcd/Lt;)V

    iget-object v1, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v0, v1, v4}, Labcd/Up;->j6(Labcd/Hr;Z)V

    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {p2, v4}, Labcd/ku;->writeByte(I)V

    goto :goto_0

    :cond_3
    invoke-interface {p2, v5}, Labcd/ku;->writeByte(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Labcd/Vo;->gn:[B

    invoke-interface {p2, v0}, Labcd/ku;->write([B)V

    goto :goto_1
.end method

.method public Hw()Labcd/wp;
    .registers 2

    sget-object v0, Labcd/wp;->QX:Labcd/wp;

    return-object v0
.end method

.method public aM()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v0}, Labcd/Hr;->aM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v0}, Labcd/Hr;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(Labcd/Lt;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v1}, Labcd/Hr;->rN()Labcd/Ir;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ir;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v1

    invoke-virtual {v1}, Labcd/Ks;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    iget-object v0, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v0}, Labcd/Hr;->lg()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/Lr;

    invoke-virtual {v0}, Labcd/Lr;->Hw()Labcd/Js;

    move-result-object v2

    invoke-virtual {v0}, Labcd/Lr;->Zo()Labcd/ms;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Labcd/Up;->j6(Labcd/ms;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Labcd/Lt;->j6(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j6(Labcd/jp;)V
    .registers 4

    invoke-virtual {p1}, Labcd/jp;->Ws()Labcd/Qp;

    move-result-object v0

    iget-object v1, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-virtual {v1}, Labcd/Hr;->getType()Labcd/Ks;

    move-result-object v1

    invoke-virtual {v0, v1}, Labcd/Qp;->DW(Labcd/Ks;)Labcd/Pp;

    move-result-object v0

    iput-object v0, p0, Labcd/Vo;->VH:Labcd/Pp;

    iget-object v0, p0, Labcd/Vo;->Zo:Labcd/Hr;

    invoke-static {p1, v0}, Labcd/Up;->j6(Labcd/jp;Labcd/Hr;)V

    return-void
.end method
