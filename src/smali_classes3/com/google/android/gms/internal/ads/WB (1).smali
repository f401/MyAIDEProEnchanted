.class public final Lcom/google/android/gms/internal/ads/WB;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/HB;
.implements Lcom/google/android/gms/internal/ads/IB;
.implements Lcom/google/android/gms/internal/ads/uD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/YB;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/HB;",
        "Lcom/google/android/gms/internal/ads/IB;",
        "Lcom/google/android/gms/internal/ads/uD<",
        "Lcom/google/android/gms/internal/ads/RB;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:[I

.field private final EQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/PB;",
            ">;"
        }
    .end annotation
.end field

.field private final FH:[Z

.field private final Hw:Lcom/google/android/gms/internal/ads/YB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final J0:[Lcom/google/android/gms/internal/ads/EB;

.field private final J8:Lcom/google/android/gms/internal/ads/QB;

.field private QX:J

.field private final VH:I

.field private Ws:Lcom/google/android/gms/internal/ads/zzfs;

.field XL:J

.field private final Zo:Lcom/google/android/gms/internal/ads/eB;

.field aM:Z

.field private final gn:Lcom/google/android/gms/internal/ads/tD;

.field private final j6:I

.field private final tp:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/PB;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Lcom/google/android/gms/internal/ads/VB;

.field private final v5:Lcom/google/android/gms/internal/ads/JB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/JB<",
            "Lcom/google/android/gms/internal/ads/WB<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final we:Lcom/google/android/gms/internal/ads/EB;


# direct methods
.method public constructor <init>(I[ILcom/google/android/gms/internal/ads/YB;Lcom/google/android/gms/internal/ads/JB;Lcom/google/android/gms/internal/ads/gD;JILcom/google/android/gms/internal/ads/eB;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[ITT;",
            "Lcom/google/android/gms/internal/ads/JB<",
            "Lcom/google/android/gms/internal/ads/WB<",
            "TT;>;>;",
            "Lcom/google/android/gms/internal/ads/gD;",
            "JI",
            "Lcom/google/android/gms/internal/ads/eB;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/WB;->DW:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/WB;->v5:Lcom/google/android/gms/internal/ads/JB;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iput p8, p0, Lcom/google/android/gms/internal/ads/WB;->VH:I

    new-instance p3, Lcom/google/android/gms/internal/ads/tD;

    const-string p4, "Loader:ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/android/gms/internal/ads/tD;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    new-instance p3, Lcom/google/android/gms/internal/ads/VB;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/VB;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->u7:Lcom/google/android/gms/internal/ads/VB;

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->EQ:Ljava/util/List;

    const/4 p3, 0x0

    if-nez p2, :cond_31

    const/4 p4, 0x0

    goto :goto_32

    :cond_31
    array-length p4, p2

    :goto_32
    new-array p8, p4, [Lcom/google/android/gms/internal/ads/EB;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    new-array p8, p4, [Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    add-int/lit8 p8, p4, 0x1

    new-array p9, p8, [I

    new-array p8, p8, [Lcom/google/android/gms/internal/ads/EB;

    new-instance v0, Lcom/google/android/gms/internal/ads/EB;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/ads/EB;-><init>(Lcom/google/android/gms/internal/ads/gD;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    aput p1, p9, p3

    aput-object v0, p8, p3

    :goto_4b
    if-ge p3, p4, :cond_60

    new-instance p1, Lcom/google/android/gms/internal/ads/EB;

    invoke-direct {p1, p5}, Lcom/google/android/gms/internal/ads/EB;-><init>(Lcom/google/android/gms/internal/ads/gD;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    aput-object p1, v0, p3

    add-int/lit8 v0, p3, 0x1

    aput-object p1, p8, v0

    aget p1, p2, p3

    aput p1, p9, v0

    move p3, v0

    goto :goto_4b

    :cond_60
    new-instance p1, Lcom/google/android/gms/internal/ads/QB;

    invoke-direct {p1, p9, p8}, Lcom/google/android/gms/internal/ads/QB;-><init>([I[Lcom/google/android/gms/internal/ads/EB;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/WB;->J8:Lcom/google/android/gms/internal/ads/QB;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/WB;)[Z
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    return-object p0
.end method


# virtual methods
.method public final DW()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    return-wide v0

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-eqz v0, :cond_10

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PB;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/RB;->VH:J

    return-wide v0
.end method

.method public final DW(J)Z
    .registers 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    const/4 v2, 0x0

    if-nez v1, :cond_80

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v1

    if-eqz v1, :cond_11

    goto/16 :goto_80

    :cond_11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1e

    move-object v3, v4

    goto :goto_26

    :cond_1e
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/aC;

    :goto_26
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    const-wide v7, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v9, v5, v7

    if-eqz v9, :cond_32

    goto :goto_34

    :cond_32
    move-wide/from16 v5, p1

    :goto_34
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/WB;->u7:Lcom/google/android/gms/internal/ads/VB;

    invoke-interface {v1, v3, v5, v6, v9}, Lcom/google/android/gms/internal/ads/YB;->j6(Lcom/google/android/gms/internal/ads/aC;JLcom/google/android/gms/internal/ads/VB;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->u7:Lcom/google/android/gms/internal/ads/VB;

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/VB;->DW:Z

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/VB;->j6:Lcom/google/android/gms/internal/ads/RB;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/VB;->j6:Lcom/google/android/gms/internal/ads/RB;

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/VB;->DW:Z

    const/4 v1, 0x1

    if-eqz v3, :cond_4b

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    return v1

    :cond_4b
    if-nez v5, :cond_4e

    return v2

    :cond_4e
    instance-of v2, v5, Lcom/google/android/gms/internal/ads/PB;

    if-eqz v2, :cond_61

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    move-object v2, v5

    check-cast v2, Lcom/google/android/gms/internal/ads/PB;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->J8:Lcom/google/android/gms/internal/ads/QB;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/PB;->j6(Lcom/google/android/gms/internal/ads/QB;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_61
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    iget v3, v0, Lcom/google/android/gms/internal/ads/WB;->VH:I

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;I)J

    move-result-wide v17

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v8, v5, Lcom/google/android/gms/internal/ads/RB;->DW:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iget-object v10, v5, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget v11, v5, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    iget-object v12, v5, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    iget-wide v13, v5, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/RB;->VH:J

    move-wide v15, v2

    invoke-virtual/range {v6 .. v18}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJ)V

    return v1

    :cond_80
    :goto_80
    return v2
.end method

.method public final FH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->v5()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public final Hw(J)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_14

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/EB;->VH()V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    return-void
.end method

.method public final VH()J
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-eqz v0, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    return-wide v0

    :cond_10
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/PB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/aC;->Zo()Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_3a

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_39

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/PB;

    goto :goto_3a

    :cond_39
    const/4 v2, 0x0

    :goto_3a
    if-eqz v2, :cond_42

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/RB;->VH:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final Zo(J)V
    .registers 9

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->DW()J

    move-result-wide v3

    cmp-long v5, p1, v3

    if-gez v5, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    invoke-virtual {v0, p1, p2, v3}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_52

    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PB;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/PB;->j6(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/EB;->Hw()I

    move-result v3

    if-gt v0, v3, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_22

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v3, v0

    :goto_47
    if-ge v2, v3, :cond_51

    aget-object v4, v0, v2

    invoke-virtual {v4, p1, p2, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_51
    return-void

    :cond_52
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tD;->FH()V

    return-void

    :cond_69
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length p2, p1

    :goto_71
    if-ge v2, p2, :cond_7b

    aget-object v0, p1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_7b
    return-void
.end method

.method public final gn()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I
    .registers 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, -0x3

    return v1

    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/EB;->Hw()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    :goto_18
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_36

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/PB;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/PB;->j6(I)I

    move-result v2

    if-gt v2, v1, :cond_36

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_18

    :cond_36
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/PB;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->Ws:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/zzfs;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget v3, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/eB;->j6(ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;J)V

    :cond_56
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/WB;->Ws:Lcom/google/android/gms/internal/ads/zzfs;

    :cond_58
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    iget-boolean v14, v0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move-wide v15, v1

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZJ)I

    move-result v1

    return v1
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJLjava/io/IOException;)I
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/RB;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/RB;->Hw()J

    move-result-wide v17

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/PB;

    const/4 v3, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_21

    const-wide/16 v4, 0x0

    cmp-long v6, v17, v4

    if-eqz v6, :cond_21

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, v3, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v4, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v4, 0x1

    :goto_22
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    move-object/from16 v13, p6

    invoke-interface {v5, v1, v4, v13}, Lcom/google/android/gms/internal/ads/YB;->j6(Lcom/google/android/gms/internal/ads/RB;ZLjava/lang/Exception;)Z

    move-result v4

    if-eqz v4, :cond_68

    if-eqz v2, :cond_65

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/PB;

    if-ne v2, v1, :cond_3a

    const/4 v4, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    :goto_3b
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/PB;->j6(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/EB;->j6(I)V

    const/4 v4, 0x0

    :goto_48
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v6, v5

    if-ge v4, v6, :cond_59

    aget-object v5, v5, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/PB;->j6(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/EB;->j6(I)V

    goto :goto_48

    :cond_59
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    :cond_65
    const/16 v21, 0x1

    goto :goto_6a

    :cond_68
    const/16 v21, 0x0

    :goto_6a
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v4, v1, Lcom/google/android/gms/internal/ads/RB;->DW:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget v7, v1, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/RB;->VH:J

    move-wide/from16 v13, p2

    const/4 v1, 0x0

    move-wide/from16 v15, p4

    move-object/from16 v19, p6

    move/from16 v20, v21

    invoke-virtual/range {v2 .. v20}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v21, :cond_91

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->v5:Lcom/google/android/gms/internal/ads/JB;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    const/4 v15, 0x2

    goto :goto_92

    :cond_91
    const/4 v15, 0x0

    :goto_92
    return v15
.end method

.method public final j6(JI)Lcom/google/android/gms/internal/ads/XB;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/gms/internal/ads/XB;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->DW:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_2a

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    aput-boolean v1, p3, v0

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    new-instance p1, Lcom/google/android/gms/internal/ads/XB;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/google/android/gms/internal/ads/XB;-><init>(Lcom/google/android/gms/internal/ads/WB;Lcom/google/android/gms/internal/ads/WB;Lcom/google/android/gms/internal/ads/EB;I)V

    return-object p1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_34

    :goto_33
    throw p1

    :goto_34
    goto :goto_33
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/YB;->j6()V

    :cond_14
    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJ)V
    .registers 24

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p1

    check-cast v10, Lcom/google/android/gms/internal/ads/RB;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/YB;->j6(Lcom/google/android/gms/internal/ads/RB;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v3, v10, Lcom/google/android/gms/internal/ads/RB;->DW:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget v6, v10, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    iget-object v7, v10, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    iget-wide v8, v10, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    move-object/from16 p1, v1

    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/RB;->VH:J

    move-object/from16 v16, v10

    move-wide v10, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/RB;->Hw()J

    move-result-wide v16

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->v5:Lcom/google/android/gms/internal/ads/JB;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V
    .registers 25

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    move-object/from16 v10, p1

    check-cast v10, Lcom/google/android/gms/internal/ads/RB;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v2, v10, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v3, v10, Lcom/google/android/gms/internal/ads/RB;->DW:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iget-object v5, v10, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget v6, v10, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    iget-object v7, v10, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    iget-wide v8, v10, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    move-object/from16 p1, v1

    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/RB;->VH:J

    move-object/from16 v16, v10

    move-wide v10, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/RB;->Hw()J

    move-result-wide v16

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/eB;->DW(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, p0

    if-nez p6, :cond_47

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v3, :cond_42

    aget-object v5, v1, v4

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    :cond_42
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->v5:Lcom/google/android/gms/internal/ads/JB;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    :cond_47
    return-void
.end method

.method public final tp()Lcom/google/android/gms/internal/ads/YB;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    return-object v0
.end method

.method final u7()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    const-wide v2, -0x7fffffffffffffffL  # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public final v5(J)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v2, v1

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_12

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method
