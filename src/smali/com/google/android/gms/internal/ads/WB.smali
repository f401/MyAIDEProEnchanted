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
        "Lcom/google/android/gms/internal/ads/uD",
        "<",
        "Lcom/google/android/gms/internal/ads/RB;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:[I

.field private final EQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/ads/PB;",
            ">;"
        }
    .end annotation
.end field

.field private final u7:Lcom/google/android/gms/internal/ads/VB;

.field private final v5:Lcom/google/android/gms/internal/ads/JB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/JB",
            "<",
            "Lcom/google/android/gms/internal/ads/WB",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final we:Lcom/google/android/gms/internal/ads/EB;


# direct methods
.method public constructor <init>(I[ILcom/google/android/gms/internal/ads/YB;Lcom/google/android/gms/internal/ads/JB;Lcom/google/android/gms/internal/ads/gD;JILcom/google/android/gms/internal/ads/eB;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[ITT;",
            "Lcom/google/android/gms/internal/ads/JB",
            "<",
            "Lcom/google/android/gms/internal/ads/WB",
            "<TT;>;>;",
            "Lcom/google/android/gms/internal/ads/gD;",
            "JI",
            "Lcom/google/android/gms/internal/ads/eB;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/WB;->DW:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/WB;->v5:Lcom/google/android/gms/internal/ads/JB;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iput p8, p0, Lcom/google/android/gms/internal/ads/WB;->VH:I

    new-instance v0, Lcom/google/android/gms/internal/ads/tD;

    const-string v2, "Loader:ChunkSampleStream"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/tD;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    new-instance v0, Lcom/google/android/gms/internal/ads/VB;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/VB;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->u7:Lcom/google/android/gms/internal/ads/VB;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->EQ:Ljava/util/List;

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    new-array v2, v0, [Lcom/google/android/gms/internal/ads/EB;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    add-int/lit8 v2, v0, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [Lcom/google/android/gms/internal/ads/EB;

    new-instance v2, Lcom/google/android/gms/internal/ads/EB;

    invoke-direct {v2, p5}, Lcom/google/android/gms/internal/ads/EB;-><init>(Lcom/google/android/gms/internal/ads/gD;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    aput p1, v3, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    aput-object v2, v4, v1

    :goto_1
    if-ge v1, v0, :cond_1

    new-instance v5, Lcom/google/android/gms/internal/ads/EB;

    invoke-direct {v5, p5}, Lcom/google/android/gms/internal/ads/EB;-><init>(Lcom/google/android/gms/internal/ads/gD;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    aput-object v5, v2, v1

    add-int/lit8 v2, v1, 0x1

    aput-object v5, v4, v2

    aget v1, p2, v1

    aput v1, v3, v2

    move v1, v2

    goto :goto_1

    :cond_0
    array-length v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/QB;

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/QB;-><init>([I[Lcom/google/android/gms/internal/ads/EB;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->J8:Lcom/google/android/gms/internal/ads/QB;

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    return-void
.end method

.method static synthetic j6(Lcom/google/android/gms/internal/ads/WB;)[Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    return-object v0
.end method


# virtual methods
.method public final DW()J
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    :goto_0
    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PB;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/RB;->VH:J

    goto :goto_0
.end method

.method public final DW(J)Z
    .registers 20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    move-wide/from16 p1, v4

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/WB;->u7:Lcom/google/android/gms/internal/ads/VB;

    move-wide/from16 v0, p1

    invoke-interface {v3, v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/YB;->j6(Lcom/google/android/gms/internal/ads/aC;JLcom/google/android/gms/internal/ads/VB;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->u7:Lcom/google/android/gms/internal/ads/VB;

    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/VB;->DW:Z

    iget-object v12, v2, Lcom/google/android/gms/internal/ads/VB;->j6:Lcom/google/android/gms/internal/ads/RB;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/google/android/gms/internal/ads/VB;->j6:Lcom/google/android/gms/internal/ads/RB;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/google/android/gms/internal/ads/VB;->DW:Z

    if-eqz v3, :cond_4

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/aC;

    goto :goto_1

    :cond_4
    if-nez v12, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    instance-of v2, v12, Lcom/google/android/gms/internal/ads/PB;

    if-eqz v2, :cond_6

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    move-object v2, v12

    check-cast v2, Lcom/google/android/gms/internal/ads/PB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->J8:Lcom/google/android/gms/internal/ads/QB;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/PB;->j6(Lcom/google/android/gms/internal/ads/QB;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gms/internal/ads/WB;->VH:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v12, v0, v3}, Lcom/google/android/gms/internal/ads/tD;->j6(Lcom/google/android/gms/internal/ads/wD;Lcom/google/android/gms/internal/ads/uD;I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    iget v5, v12, Lcom/google/android/gms/internal/ads/RB;->DW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iget-object v7, v12, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget v8, v12, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    iget-object v9, v12, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    iget-wide v10, v12, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    iget-wide v12, v12, Lcom/google/android/gms/internal/ads/RB;->VH:J

    invoke-virtual/range {v3 .. v15}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJ)V

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public final FH()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->v5()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final Hw(J)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->VH()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    goto :goto_0
.end method

.method public final VH()J
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/aC;->Zo()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    if-eqz v0, :cond_4

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/RB;->VH:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/EB;->DW()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PB;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_2
.end method

.method public final Zo(J)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->DW()J

    move-result-wide v4

    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PB;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/PB;->j6(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/EB;->Hw()I

    move-result v3

    if-gt v0, v3, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4, p1, p2, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->FH()V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public final gn()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/EB;->j6()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;Z)I
    .registers 12

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/WB;->u7()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/EB;->Hw()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PB;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/PB;->j6(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/PB;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->Ws:Lcom/google/android/gms/internal/ads/zzfs;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    iget v2, p0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/eB;->j6(ILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;J)V

    :cond_2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/WB;->Ws:Lcom/google/android/gms/internal/ads/zzfs;

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/WB;->aM:Z

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/EB;->j6(Lcom/google/android/gms/internal/ads/Jy;Lcom/google/android/gms/internal/ads/Ez;ZZJ)I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJLjava/io/IOException;)I
    .registers 29

    check-cast p1, Lcom/google/android/gms/internal/ads/RB;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/RB;->Hw()J

    move-result-wide v18

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/PB;

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v18, v4

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-interface {v4, v0, v2, v1}, Lcom/google/android/gms/internal/ads/YB;->j6(Lcom/google/android/gms/internal/ads/RB;ZLjava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/PB;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/PB;->j6(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/EB;->j6(I)V

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-object v4, v4, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/PB;->j6(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/EB;->j6(I)V

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->tp:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/WB;->XL:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    :cond_4
    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/gms/internal/ads/RB;->DW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/RB;->VH:J

    const/4 v2, 0x0

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v3 .. v21}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->v5:Lcom/google/android/gms/internal/ads/JB;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    const/4 v2, 0x2

    :cond_5
    return v2

    :cond_6
    const/16 v21, 0x0

    goto :goto_3
.end method

.method public final j6(JI)Lcom/google/android/gms/internal/ads/XB;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/gms/internal/ads/XB;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->DW:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    aget-boolean v1, v1, v0

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    new-instance v1, Lcom/google/android/gms/internal/ads/XB;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    aget-object v2, v2, v0

    invoke-direct {v1, p0, p0, v2, v0}, Lcom/google/android/gms/internal/ads/XB;-><init>(Lcom/google/android/gms/internal/ads/WB;Lcom/google/android/gms/internal/ads/WB;Lcom/google/android/gms/internal/ads/EB;I)V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final j6()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/tD;->j6(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->gn:Lcom/google/android/gms/internal/ads/tD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/tD;->DW()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/YB;->j6()V

    :cond_0
    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJ)V
    .registers 26

    check-cast p1, Lcom/google/android/gms/internal/ads/RB;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->Hw:Lcom/google/android/gms/internal/ads/YB;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/YB;->j6(Lcom/google/android/gms/internal/ads/RB;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/gms/internal/ads/RB;->DW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/RB;->VH:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/RB;->Hw()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/eB;->j6(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->v5:Lcom/google/android/gms/internal/ads/JB;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    return-void
.end method

.method public final synthetic j6(Lcom/google/android/gms/internal/ads/wD;JJZ)V
    .registers 27

    check-cast p1, Lcom/google/android/gms/internal/ads/RB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->Zo:Lcom/google/android/gms/internal/ads/eB;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/RB;->j6:Lcom/google/android/gms/internal/ads/mD;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/google/android/gms/internal/ads/RB;->DW:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/gms/internal/ads/WB;->j6:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/RB;->FH:Lcom/google/android/gms/internal/ads/zzfs;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/google/android/gms/internal/ads/RB;->Hw:I

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/RB;->v5:Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/RB;->Zo:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/RB;->VH:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/RB;->Hw()J

    move-result-wide v18

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    invoke-virtual/range {v3 .. v19}, Lcom/google/android/gms/internal/ads/eB;->DW(Lcom/google/android/gms/internal/ads/mD;IILcom/google/android/gms/internal/ads/zzfs;ILjava/lang/Object;JJJJJ)V

    if-nez p6, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->we:Lcom/google/android/gms/internal/ads/EB;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/EB;->j6(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WB;->v5:Lcom/google/android/gms/internal/ads/JB;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/JB;->j6(Lcom/google/android/gms/internal/ads/IB;)V

    :cond_1
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
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/WB;->QX:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v5(J)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/WB;->J0:[Lcom/google/android/gms/internal/ads/EB;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/WB;->FH:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/EB;->j6(JZ)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
