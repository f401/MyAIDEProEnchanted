.class Labcd/tH$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/tH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final DW:I

.field final FH:I

.field private final j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Labcd/yE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    rsub-int/lit8 v0, p1, 0x20

    iput v0, p0, Labcd/tH$a;->DW:I

    iput p1, p0, Labcd/tH$a;->FH:I

    return-void
.end method

.method private FH(Labcd/YD;)I
    .registers 4

    invoke-virtual {p1}, Labcd/YD;->hashCode()I

    move-result v0

    iget v1, p0, Labcd/tH$a;->DW:I

    ushr-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method DW(Labcd/YD;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Labcd/tH$a;->FH(Labcd/YD;)I

    move-result v0

    move v2, v1

    move v3, v0

    :goto_0
    const/16 v0, 0x8

    if-lt v2, v0, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget-object v0, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v3, 0x1

    iget-object v3, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    move v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0
.end method

.method j6(Labcd/YD;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Labcd/tH$a;->FH(Labcd/YD;)I

    move-result v0

    move v3, v1

    move v4, v0

    :cond_0
    :goto_0
    const/16 v0, 0x8

    if-lt v3, v0, :cond_1

    :goto_1
    return v1

    :cond_1
    iget-object v0, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labcd/yE;

    if-nez v0, :cond_2

    iget-object v0, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v5, 0x0

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-static {v0, p1}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v4, 0x1

    iget-object v4, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    if-ne v0, v4, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_0
.end method
