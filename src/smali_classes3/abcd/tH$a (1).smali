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
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
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
    .registers 3

    invoke-virtual {p1}, Labcd/YD;->hashCode()I

    move-result p1

    iget v0, p0, Labcd/tH$a;->DW:I

    ushr-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method DW(Labcd/YD;)Z
    .registers 6

    invoke-direct {p0, p1}, Labcd/tH$a;->FH(Labcd/YD;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    const/16 v3, 0x8

    if-lt v2, v3, :cond_b

    goto :goto_15

    :cond_b
    iget-object v3, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/yE;

    if-nez v3, :cond_16

    :goto_15
    return v1

    :cond_16
    invoke-static {v3, p1}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ne v0, v3, :cond_29

    const/4 v0, 0x0

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method j6(Labcd/YD;)Z
    .registers 9

    invoke-direct {p0, p1}, Labcd/tH$a;->FH(Labcd/YD;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_6
    :goto_6
    const/16 v3, 0x8

    if-lt v2, v3, :cond_b

    return v1

    :cond_b
    iget-object v3, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Labcd/yE;

    const/4 v4, 0x1

    if-nez v3, :cond_24

    iget-object v3, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v5, 0x0

    invoke-virtual {p1}, Labcd/YD;->Hw()Labcd/yE;

    move-result-object v6

    invoke-static {v3, v0, v5, v6}, Labcd/tH$a$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v4

    :cond_24
    invoke-static {v3, p1}, Labcd/YD;->j6(Labcd/YD;Labcd/YD;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return v4

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Labcd/tH$a;->j6:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ne v0, v3, :cond_36

    const/4 v0, 0x0

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method
