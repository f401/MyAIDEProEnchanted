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
    .registers 8

    const/4 v3, 0x0

    invoke-virtual {p1}, Labcd/tt;->FH()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/vt;

    invoke-virtual {v0}, Labcd/vt;->v5()Labcd/es;

    move-result-object v0

    sget-object v1, Labcd/gs;->j3:Labcd/es;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Labcd/tt;->VH()Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v1, p0, Labcd/Jt;->j6:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labcd/tt;

    invoke-virtual {p1}, Labcd/tt;->DW()I

    move-result v3

    invoke-virtual {p1}, Labcd/tt;->u7()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Labcd/tt;->j6(II)V

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method
