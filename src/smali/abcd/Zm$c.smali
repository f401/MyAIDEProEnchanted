.class Labcd/Zm$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Zm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final DW:Ljava/util/BitSet;

.field private FH:I

.field private Hw:I

.field final VH:Labcd/Zm;

.field private final Zo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labcd/au;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Labcd/Zm$a;


# direct methods
.method constructor <init>(Labcd/Zm;Labcd/Zm$a;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Zm$a;",
            "Ljava/util/ArrayList",
            "<",
            "Labcd/au;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Labcd/Zm$c;->j6:Ljava/util/HashMap;

    new-instance v0, Ljava/util/BitSet;

    invoke-static {p1}, Labcd/Zm;->j6(Labcd/Zm;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/Zm$c;->DW:Ljava/util/BitSet;

    iput-object p2, p0, Labcd/Zm$c;->v5:Labcd/Zm$a;

    iput-object p3, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    return-void
.end method

.method private DW(II)Z
    .registers 5

    iget-object v0, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/au;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Labcd/au;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Labcd/au;->yS()I

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j6(I)I
    .registers 6

    iget-object v0, p0, Labcd/Zm$c;->j6:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Labcd/Zm$c;->FH:I

    invoke-direct {p0, p1, v0}, Labcd/Zm$c;->DW(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labcd/Zm$c;->v5:Labcd/Zm$a;

    invoke-virtual {v0}, Labcd/Zm$a;->j6()I

    move-result v0

    iget-object v1, p0, Labcd/Zm$c;->DW:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    iget-object v1, p0, Labcd/Zm$c;->j6:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v1, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_2

    iget-object v1, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    goto :goto_0
.end method

.method private j6(II)V
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v1, p1}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v4

    invoke-virtual {v4}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v5

    iget-object v1, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v1, v4}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Nr;)Z

    move-result v2

    const/4 v1, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v5, v0}, Labcd/au;->get(I)I

    move-result v0

    invoke-direct {p0, v0}, Labcd/Zm$c;->j6(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Labcd/au;->get(I)I

    move-result v2

    invoke-static {v0, v2}, Labcd/au;->DW(II)Labcd/au;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    new-instance v3, Labcd/Nr;

    invoke-virtual {v4}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v4

    invoke-static {v2, v4}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Ur;)Labcd/Ur;

    move-result-object v4

    invoke-direct {v3, p2, v4, v0, v1}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    iget-object v0, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/au;

    invoke-static {v2, v3, v0}, Labcd/Zm;->DW(Labcd/Zm;Labcd/Nr;Labcd/au;)V

    return-void

    :cond_0
    iget-object v2, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v2, p1}, Labcd/Zm;->DW(Labcd/Zm;I)Labcd/Zm$b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Labcd/Zm$b;->DW(Labcd/Zm$b;)I

    move-result v0

    iget v1, p0, Labcd/Zm$c;->FH:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Labcd/Zm$c;->Hw:I

    invoke-static {v0}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v0

    iget v1, p0, Labcd/Zm$c;->Hw:I

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ret instruction returns to label "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Labcd/Zm$b;->DW(Labcd/Zm$b;)I

    move-result v1

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Labcd/Zm$c;->FH:I

    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v4}, Labcd/Nr;->Zo()I

    move-result v6

    invoke-virtual {v5}, Labcd/au;->size()I

    move-result v7

    new-instance v2, Labcd/au;

    invoke-direct {v2, v7}, Labcd/au;-><init>(I)V

    move v3, v0

    :goto_1
    if-ge v3, v7, :cond_3

    invoke-virtual {v5, v3}, Labcd/au;->get(I)I

    move-result v8

    invoke-direct {p0, v8}, Labcd/Zm$c;->j6(I)I

    move-result v0

    invoke-virtual {v2, v0}, Labcd/au;->DW(I)V

    if-ne v6, v8, :cond_4

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Labcd/hu;->we()V

    move-object v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method j6(Labcd/Nr;)V
    .registers 9

    const/4 v6, 0x0

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    invoke-virtual {v0, v6}, Labcd/au;->get(I)I

    move-result v0

    iput v0, p0, Labcd/Zm$c;->Hw:I

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0

    iput v0, p0, Labcd/Zm$c;->FH:I

    iget v0, p0, Labcd/Zm$c;->FH:I

    invoke-direct {p0, v0}, Labcd/Zm$c;->j6(I)I

    move-result v2

    iget-object v0, p0, Labcd/Zm$c;->DW:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Labcd/Zm$c;->DW:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    iget-object v0, p0, Labcd/Zm$c;->j6:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Labcd/Zm$c;->j6(II)V

    iget-object v3, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v3, v1}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v1

    invoke-static {v3, v1}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Nr;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Labcd/Zm$c;

    iget-object v3, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    iget-object v4, p0, Labcd/Zm$c;->v5:Labcd/Zm$a;

    iget-object v5, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-direct {v1, v3, v4, v5}, Labcd/Zm$c;-><init>(Labcd/Zm;Labcd/Zm$a;Ljava/util/ArrayList;)V

    iget-object v3, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v3, v0}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v0

    invoke-virtual {v1, v0}, Labcd/Zm$c;->j6(Labcd/Nr;)V

    :cond_0
    iget-object v0, p0, Labcd/Zm$c;->DW:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    new-instance v3, Labcd/Nr;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v0

    invoke-virtual {p1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v4

    invoke-static {v2}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5, v2}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    iget-object v0, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/au;

    invoke-static {v1, v3, v0}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Nr;Labcd/au;)Z

    return-void
.end method
