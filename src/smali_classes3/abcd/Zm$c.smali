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
            "Ljava/util/ArrayList<",
            "Labcd/au;",
            ">;"
        }
    .end annotation
.end field

.field private final j6:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Labcd/Zm$a;


# direct methods
.method constructor <init>(Labcd/Zm;Labcd/Zm$a;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/Zm$a;",
            "Ljava/util/ArrayList<",
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

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Labcd/Zm$c;->DW:Ljava/util/BitSet;

    iput-object p2, p0, Labcd/Zm$c;->v5:Labcd/Zm$a;

    iput-object p3, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    return-void
.end method

.method private DW(II)Z
    .registers 4

    iget-object v0, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/au;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Labcd/au;->size()I

    move-result v0

    if-lez v0, :cond_18

    invoke-virtual {p1}, Labcd/au;->yS()I

    move-result p1

    if-ne p1, p2, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    return p1
.end method

.method private j6(I)I
    .registers 6

    iget-object v0, p0, Labcd/Zm$c;->j6:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4d

    :cond_13
    iget v0, p0, Labcd/Zm$c;->FH:I

    invoke-direct {p0, p1, v0}, Labcd/Zm$c;->DW(II)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_4d

    :cond_1c
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

    :goto_34
    iget-object v1, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_43

    iget-object v1, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_43
    iget-object v1, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    :goto_4d
    return p1
.end method

.method private j6(II)V
    .registers 11

    iget-object v0, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v0, p1}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v0

    invoke-virtual {v0}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v1

    iget-object v2, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v2, v0}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Nr;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_26

    invoke-virtual {v1, v3}, Labcd/au;->get(I)I

    move-result p1

    invoke-direct {p0, p1}, Labcd/Zm$c;->j6(I)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Labcd/au;->get(I)I

    move-result v1

    invoke-static {p1, v1}, Labcd/au;->DW(II)Labcd/au;

    move-result-object p1

    goto :goto_90

    :cond_26
    iget-object v2, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v2, p1}, Labcd/Zm;->DW(Labcd/Zm;I)Labcd/Zm$b;

    move-result-object p1

    if-eqz p1, :cond_6c

    invoke-static {p1}, Labcd/Zm$b;->DW(Labcd/Zm$b;)I

    move-result v1

    iget v2, p0, Labcd/Zm$c;->FH:I

    if-ne v1, v2, :cond_3f

    iget p1, p0, Labcd/Zm$c;->Hw:I

    invoke-static {p1}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object p1

    iget v4, p0, Labcd/Zm$c;->Hw:I

    goto :goto_90

    :cond_3f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ret instruction returns to label "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labcd/Zm$b;->DW(Labcd/Zm$b;)I

    move-result p1

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Labcd/Zm$c;->FH:I

    invoke-static {p1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    invoke-virtual {v0}, Labcd/Nr;->Zo()I

    move-result p1

    invoke-virtual {v1}, Labcd/au;->size()I

    move-result v2

    new-instance v5, Labcd/au;

    invoke-direct {v5, v2}, Labcd/au;-><init>(I)V

    :goto_79
    if-ge v3, v2, :cond_8c

    invoke-virtual {v1, v3}, Labcd/au;->get(I)I

    move-result v6

    invoke-direct {p0, v6}, Labcd/Zm$c;->j6(I)I

    move-result v7

    invoke-virtual {v5, v7}, Labcd/au;->DW(I)V

    if-ne p1, v6, :cond_89

    move v4, v7

    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_8c
    invoke-virtual {v5}, Labcd/hu;->we()V

    move-object p1, v5

    :goto_90
    iget-object v1, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    new-instance v2, Labcd/Nr;

    invoke-virtual {v0}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v0

    invoke-static {v1, v0}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Ur;)Labcd/Ur;

    move-result-object v0

    invoke-direct {v2, p2, v0, p1, v4}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    iget-object p1, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/au;

    invoke-static {v1, v2, p1}, Labcd/Zm;->DW(Labcd/Zm;Labcd/Nr;Labcd/au;)V

    return-void
.end method


# virtual methods
.method j6(Labcd/Nr;)V
    .registers 9

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Labcd/au;->get(I)I

    move-result v0

    iput v0, p0, Labcd/Zm$c;->Hw:I

    invoke-virtual {p1}, Labcd/Nr;->gn()Labcd/au;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Labcd/au;->get(I)I

    move-result v0

    iput v0, p0, Labcd/Zm$c;->FH:I

    invoke-direct {p0, v0}, Labcd/Zm$c;->j6(I)I

    move-result v0

    :cond_1a
    :goto_1a
    iget-object v2, p0, Labcd/Zm$c;->DW:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    if-ltz v2, :cond_5b

    iget-object v3, p0, Labcd/Zm$c;->DW:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->clear(I)V

    iget-object v3, p0, Labcd/Zm$c;->j6:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Labcd/Zm$c;->j6(II)V

    iget-object v4, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v4, v2}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v2

    invoke-static {v4, v2}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Nr;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Labcd/Zm$c;

    iget-object v4, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    iget-object v5, p0, Labcd/Zm$c;->v5:Labcd/Zm$a;

    iget-object v6, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-direct {v2, v4, v5, v6}, Labcd/Zm$c;-><init>(Labcd/Zm;Labcd/Zm$a;Ljava/util/ArrayList;)V

    iget-object v4, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    invoke-static {v4, v3}, Labcd/Zm;->j6(Labcd/Zm;I)Labcd/Nr;

    move-result-object v3

    invoke-virtual {v2, v3}, Labcd/Zm$c;->j6(Labcd/Nr;)V

    goto :goto_1a

    :cond_5b
    iget-object v1, p0, Labcd/Zm$c;->VH:Labcd/Zm;

    new-instance v2, Labcd/Nr;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result v3

    invoke-virtual {p1}, Labcd/Nr;->Hw()Labcd/Ur;

    move-result-object v4

    invoke-static {v0}, Labcd/au;->Zo(I)Labcd/au;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Labcd/Nr;-><init>(ILabcd/Ur;Labcd/au;I)V

    iget-object v0, p0, Labcd/Zm$c;->Zo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Labcd/Nr;->DW()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labcd/au;

    invoke-static {v1, v2, p1}, Labcd/Zm;->j6(Labcd/Zm;Labcd/Nr;Labcd/au;)Z

    return-void
.end method
