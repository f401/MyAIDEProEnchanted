.class public final Lcom/google/android/gms/internal/ads/DA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/Oz;
.implements Lcom/google/android/gms/internal/ads/Wz;


# static fields
.field private static final DW:I

.field private static final j6:Lcom/google/android/gms/internal/ads/Sz;


# instance fields
.field private EQ:Lcom/google/android/gms/internal/ads/LD;

.field private final FH:Lcom/google/android/gms/internal/ads/LD;

.field private final Hw:Lcom/google/android/gms/internal/ads/LD;

.field private J0:I

.field private J8:Lcom/google/android/gms/internal/ads/Rz;

.field private QX:J

.field private VH:I

.field private Ws:[Lcom/google/android/gms/internal/ads/FA;

.field private XL:Z

.field private final Zo:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/android/gms/internal/ads/lA;",
            ">;"
        }
    .end annotation
.end field

.field private gn:I

.field private tp:I

.field private u7:J

.field private final v5:Lcom/google/android/gms/internal/ads/LD;

.field private we:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/EA;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/EA;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/DA;->j6:Lcom/google/android/gms/internal/ads/Sz;

    const-string v0, "qt  "

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/TD;->Zo(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/DA;->DW:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    sget-object v1, Lcom/google/android/gms/internal/ads/ID;->j6:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->FH:Lcom/google/android/gms/internal/ads/LD;

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    return-void
.end method

.method private final DW(J)V
    .registers 16

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lA;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/lA;->pO:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/lA;

    iget v0, v6, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v1, Lcom/google/android/gms/internal/ads/kA;->BT:I

    if-ne v0, v1, :cond_5

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    new-instance v12, Lcom/google/android/gms/internal/ads/Tz;

    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/Tz;-><init>()V

    sget v1, Lcom/google/android/gms/internal/ads/kA;->zh:I

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/DA;->XL:Z

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/mA;Z)Lcom/google/android/gms/internal/ads/zzki;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/Tz;->j6(Lcom/google/android/gms/internal/ads/zzki;)Z

    move-object v7, v0

    :goto_1
    const/4 v0, 0x0

    move-wide v8, v2

    move v10, v0

    :goto_2
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_4

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/lA;->Gj:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lA;

    iget v1, v0, Lcom/google/android/gms/internal/ads/kA;->sg:I

    sget v2, Lcom/google/android/gms/internal/ads/kA;->P8:I

    if-ne v1, v2, :cond_3

    sget v1, Lcom/google/android/gms/internal/ads/kA;->vy:I

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/lA;->Hw(I)Lcom/google/android/gms/internal/ads/mA;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/DA;->XL:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/mA;JLcom/google/android/gms/internal/ads/zzhp;Z)Lcom/google/android/gms/internal/ads/IA;

    move-result-object v1

    if-eqz v1, :cond_3

    sget v2, Lcom/google/android/gms/internal/ads/kA;->ei:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/ads/kA;->nw:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v0

    sget v2, Lcom/google/android/gms/internal/ads/kA;->SI:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/lA;->v5(I)Lcom/google/android/gms/internal/ads/lA;

    move-result-object v0

    invoke-static {v1, v0, v12}, Lcom/google/android/gms/internal/ads/nA;->j6(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/lA;Lcom/google/android/gms/internal/ads/Tz;)Lcom/google/android/gms/internal/ads/LA;

    move-result-object v0

    iget v2, v0, Lcom/google/android/gms/internal/ads/LA;->j6:I

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/android/gms/internal/ads/FA;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DA;->J8:Lcom/google/android/gms/internal/ads/Rz;

    iget v4, v1, Lcom/google/android/gms/internal/ads/IA;->DW:I

    invoke-interface {v3, v10, v4}, Lcom/google/android/gms/internal/ads/Rz;->j6(II)Lcom/google/android/gms/internal/ads/Yz;

    move-result-object v3

    invoke-direct {v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/FA;-><init>(Lcom/google/android/gms/internal/ads/IA;Lcom/google/android/gms/internal/ads/LA;Lcom/google/android/gms/internal/ads/Yz;)V

    iget v0, v0, Lcom/google/android/gms/internal/ads/LA;->Hw:I

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/IA;->Zo:Lcom/google/android/gms/internal/ads/zzfs;

    add-int/lit8 v0, v0, 0x1e

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfs;->j6(I)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    iget v3, v1, Lcom/google/android/gms/internal/ads/IA;->DW:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/Tz;->j6()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v12, Lcom/google/android/gms/internal/ads/Tz;->FH:I

    iget v4, v12, Lcom/google/android/gms/internal/ads/Tz;->Hw:I

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzfs;->j6(II)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfs;->j6(Lcom/google/android/gms/internal/ads/zzki;)Lcom/google/android/gms/internal/ads/zzfs;

    move-result-object v0

    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/FA;->FH:Lcom/google/android/gms/internal/ads/Yz;

    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/zzfs;)V

    iget-wide v0, v1, Lcom/google/android/gms/internal/ads/IA;->v5:J

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move-wide v0, v8

    add-int/lit8 v2, v10, 0x1

    move-wide v8, v0

    move v10, v2

    goto/16 :goto_2

    :cond_4
    iput-wide v8, p0, Lcom/google/android/gms/internal/ads/DA;->QX:J

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/FA;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/FA;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Ws:[Lcom/google/android/gms/internal/ads/FA;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->J8:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Rz;->j6()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->J8:Lcom/google/android/gms/internal/ads/Rz;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/Rz;->j6(Lcom/google/android/gms/internal/ads/Wz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lA;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/lA;->j6(Lcom/google/android/gms/internal/ads/lA;)V

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DA;->Hw()V

    :cond_7
    return-void

    :cond_8
    move-object v7, v0

    goto/16 :goto_1

    :cond_9
    move-object v7, v0

    goto/16 :goto_1
.end method

.method private final Hw()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    return-void
.end method


# virtual methods
.method public final DW()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final FH()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/DA;->QX:J

    return-wide v0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;Lcom/google/android/gms/internal/ads/Vz;)I
    .registers 15

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const-wide v0, 0x7fffffffffffffffL

    const/4 v3, 0x0

    const/4 v2, -0x1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/DA;->Ws:[Lcom/google/android/gms/internal/ads/FA;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    iget v5, v4, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    iget v6, v4, Lcom/google/android/gms/internal/ads/LA;->j6:I

    if-eq v5, v6, :cond_1

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/LA;->DW:[J

    aget-wide v4, v4, v5

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    move-wide v0, v4

    move v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne v2, v0, :cond_3

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_3
    aget-object v8, v4, v2

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/FA;->FH:Lcom/google/android/gms/internal/ads/Yz;

    iget v4, v8, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/LA;->DW:[J

    aget-wide v2, v2, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LA;->FH:[I

    aget v0, v0, v4

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/FA;->j6:Lcom/google/android/gms/internal/ads/IA;

    iget v5, v5, Lcom/google/android/gms/internal/ads/IA;->VH:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    const-wide/16 v6, 0x8

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, -0x8

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v6

    iget v5, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    sub-long v6, v2, v6

    int-to-long v10, v5

    add-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-ltz v5, :cond_5

    const-wide/32 v10, 0x40000

    cmp-long v5, v6, v10

    if-ltz v5, :cond_6

    :cond_5
    iput-wide v2, p2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    long-to-int v2, v6

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/FA;->j6:Lcom/google/android/gms/internal/ads/IA;

    iget v2, v2, Lcom/google/android/gms/internal/ads/IA;->EQ:I

    if-eqz v2, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-byte v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput-byte v6, v3, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput-byte v6, v3, v5

    rsub-int/lit8 v3, v2, 0x4

    :goto_2
    iget v5, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    if-ge v5, v0, :cond_8

    iget v5, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    invoke-interface {p1, v5, v3, v2}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DA;->Hw:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/LD;->Ws()I

    move-result v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DA;->FH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DA;->FH:Lcom/google/android/gms/internal/ads/LD;

    const/4 v6, 0x4

    invoke-interface {v1, v5, v6}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/LD;I)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    add-int/2addr v0, v3

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    invoke-interface {v1, p1, v5, v6}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    sub-int v5, v6, v5

    iput v5, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    goto :goto_2

    :cond_8
    move v5, v0

    :goto_3
    iget-object v0, v8, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/LA;->v5:[J

    aget-wide v2, v2, v4

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LA;->Zo:[I

    aget v4, v0, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/Yz;->j6(JIIILcom/google/android/gms/internal/ads/Zz;)V

    iget v0, v8, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_9
    :goto_4
    iget v2, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    if-ge v2, v0, :cond_a

    sub-int v2, v0, v2

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/Yz;->j6(Lcom/google/android/gms/internal/ads/Qz;IZ)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    sub-int v2, v3, v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    goto :goto_4

    :cond_a
    move v5, v0

    goto :goto_3

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    iget v3, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    int-to-long v4, v3

    sub-long v4, v0, v4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    long-to-int v3, v4

    invoke-interface {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    sget v1, Lcom/google/android/gms/internal/ads/kA;->j6:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v3, Lcom/google/android/gms/internal/ads/DA;->DW:I

    if-ne v1, v3, :cond_e

    :goto_5
    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/DA;->XL:Z

    :cond_d
    :goto_7
    const/4 v0, 0x0

    :goto_8
    add-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/DA;->DW(J)V

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/LD;->Hw(I)V

    :cond_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->tp()I

    move-result v1

    if-lez v1, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v1

    sget v3, Lcom/google/android/gms/internal/ads/DA;->DW:I

    if-ne v1, v3, :cond_f

    goto :goto_5

    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/lA;

    new-instance v1, Lcom/google/android/gms/internal/ads/mA;

    iget v3, p0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    invoke-direct {v1, v3, v8}, Lcom/google/android/gms/internal/ads/mA;-><init>(ILcom/google/android/gms/internal/ads/LD;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/lA;->j6(Lcom/google/android/gms/internal/ads/mA;)V

    goto :goto_7

    :cond_12
    const-wide/32 v0, 0x40000

    cmp-long v0, v4, v0

    if-gez v0, :cond_13

    long-to-int v0, v4

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/Qz;->DW(I)V

    goto :goto_7

    :cond_13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/Vz;->j6:J

    const/4 v0, 0x1

    goto :goto_8

    :cond_14
    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Qz;->j6([BIIZ)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto/16 :goto_1

    :cond_15
    const/16 v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/LD;->DW(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->we()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->Hw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    :cond_16
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/Qz;->readFully([BII)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/LD;->QX()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    :cond_17
    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    sget v2, Lcom/google/android/gms/internal/ads/kA;->BT:I

    if-eq v0, v2, :cond_18

    sget v2, Lcom/google/android/gms/internal/ads/kA;->P8:I

    if-eq v0, v2, :cond_18

    sget v2, Lcom/google/android/gms/internal/ads/kA;->ei:I

    if-eq v0, v2, :cond_18

    sget v2, Lcom/google/android/gms/internal/ads/kA;->nw:I

    if-eq v0, v2, :cond_18

    sget v2, Lcom/google/android/gms/internal/ads/kA;->SI:I

    if-eq v0, v2, :cond_18

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Sf:I

    if-ne v0, v2, :cond_19

    :cond_18
    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_1b

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Qz;->getPosition()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    add-long/2addr v2, v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    new-instance v4, Lcom/google/android/gms/internal/ads/lA;

    iget v5, p0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/lA;-><init>(IJ)V

    invoke-virtual {v0, v4}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1a

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/DA;->DW(J)V

    move v0, v1

    goto/16 :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_b

    :cond_1a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DA;->Hw()V

    move v0, v1

    goto/16 :goto_a

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->gn:I

    sget v2, Lcom/google/android/gms/internal/ads/kA;->g3:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->vy:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Mz:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->I:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->hz:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->aq:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->FN:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->vJ:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->jO:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->oY:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->ko:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->Ev:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->ye:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->ef:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->j6:I

    if-eq v0, v2, :cond_1c

    sget v2, Lcom/google/android/gms/internal/ads/kA;->zh:I

    if-ne v0, v2, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_20

    iget v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1e

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1f

    const/4 v0, 0x1

    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/CD;->DW(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/LD;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/DA;->u7:J

    long-to-int v2, v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/LD;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->v5:Lcom/google/android/gms/internal/ads/LD;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/LD;->j6:[B

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    move v0, v1

    goto/16 :goto_a

    :cond_1d
    const/4 v0, 0x0

    goto :goto_c

    :cond_1e
    const/4 v0, 0x0

    goto :goto_d

    :cond_1f
    const/4 v0, 0x0

    goto :goto_e

    :cond_20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DA;->EQ:Lcom/google/android/gms/internal/ads/LD;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->VH:I

    move v0, v1

    goto/16 :goto_a

    :cond_21
    move v0, v2

    goto/16 :goto_9
.end method

.method public final j6(J)J
    .registers 12

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/DA;->Ws:[Lcom/google/android/gms/internal/ads/FA;

    array-length v6, v5

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/LA;->j6(J)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/LA;->DW(J)I

    move-result v0

    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/LA;->DW:[J

    aget-wide v0, v1, v0

    cmp-long v7, v0, v2

    if-gez v7, :cond_2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public final j6()V
    .registers 1

    return-void
.end method

.method public final j6(JJ)V
    .registers 12

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DA;->Zo:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->tp:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->we:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/DA;->J0:I

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/DA;->Hw()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DA;->Ws:[Lcom/google/android/gms/internal/ads/FA;

    if-eqz v2, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/FA;->DW:Lcom/google/android/gms/internal/ads/LA;

    invoke-virtual {v5, p3, p4}, Lcom/google/android/gms/internal/ads/LA;->j6(J)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_2

    invoke-virtual {v5, p3, p4}, Lcom/google/android/gms/internal/ads/LA;->DW(J)I

    move-result v0

    :cond_2
    iput v0, v4, Lcom/google/android/gms/internal/ads/FA;->Hw:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Rz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DA;->J8:Lcom/google/android/gms/internal/ads/Rz;

    return-void
.end method

.method public final j6(Lcom/google/android/gms/internal/ads/Qz;)Z
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/HA;->DW(Lcom/google/android/gms/internal/ads/Qz;)Z

    move-result v0

    return v0
.end method
