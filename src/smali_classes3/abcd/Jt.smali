.class Labcd/Jt;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/tt$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Kt;->Hw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final DW:Labcd/Kt;

.field final j6:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Labcd/Kt;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Labcd/Jt;->DW:Labcd/Kt;

    iput-object p2, p0, Labcd/Jt;->j6:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(Labcd/tt;Labcd/tt;)V
    .registers 7

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Labcd/vt;

    invoke-virtual {p2}, Labcd/vt;->v5()Labcd/es;

    move-result-object p2

    sget-object v1, Labcd/gs;->j3:Labcd/es;

    if-ne p2, v1, :cond_40

    invoke-virtual {p1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/BitSet;

    :goto_24
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    if-ltz v0, :cond_40

    iget-object v1, p0, Labcd/Jt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v2

    invoke-virtual {p1}, Labcd/tt;->u7()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Labcd/tt;->j6(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_40
    return-void
.end method
