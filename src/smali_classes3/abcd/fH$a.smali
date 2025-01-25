.class Labcd/fH$a;
.super Labcd/bH$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/fH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private Hw:I

.field final Zo:Labcd/fH;

.field private v5:I


# direct methods
.method private constructor <init>(Labcd/fH;)V
    .registers 2

    iput-object p1, p0, Labcd/fH$a;->Zo:Labcd/fH;

    invoke-direct {p0, p1}, Labcd/bH$a;-><init>(Labcd/bH;)V

    return-void
.end method

.method synthetic constructor <init>(Labcd/fH;Labcd/fH$a;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/fH$a;-><init>(Labcd/fH;)V

    return-void
.end method


# virtual methods
.method protected j6()Labcd/bH$b;
    .registers 2

    new-instance v0, Labcd/eH;

    invoke-direct {v0, p0}, Labcd/eH;-><init>(Labcd/fH$a;)V

    return-object v0
.end method

.method public next()Labcd/bH$b;
    .registers 8

    :goto_0
    iget v0, p0, Labcd/fH$a;->Hw:I

    iget-object v1, p0, Labcd/fH$a;->Zo:Labcd/fH;

    invoke-static {v1}, Labcd/fH;->j6(Labcd/fH;)[[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_67

    iget v0, p0, Labcd/fH$a;->v5:I

    iget-object v1, p0, Labcd/fH$a;->Zo:Labcd/fH;

    invoke-static {v1}, Labcd/fH;->j6(Labcd/fH;)[[I

    move-result-object v1

    iget v2, p0, Labcd/fH$a;->Hw:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_5f

    iget v0, p0, Labcd/fH$a;->v5:I

    div-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Labcd/fH$a;->Zo:Labcd/fH;

    invoke-static {v1}, Labcd/fH;->DW(Labcd/fH;)[[B

    move-result-object v1

    iget v2, p0, Labcd/fH$a;->Hw:I

    aget-object v1, v1, v2

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Labcd/FK;->FH([BI)J

    move-result-wide v0

    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4d

    const-wide v2, -0x80000001L

    and-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Labcd/fH$a;->Zo:Labcd/fH;

    invoke-static {v0}, Labcd/fH;->FH(Labcd/fH;)[B

    move-result-object v0

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Labcd/FK;->Hw([BI)J

    move-result-wide v0

    :cond_4d
    iget-object v2, p0, Labcd/bH$a;->j6:Labcd/bH$b;

    iput-wide v0, v2, Labcd/bH$b;->DW:J

    iget v0, p0, Labcd/fH$a;->v5:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Labcd/fH$a;->v5:I

    iget-wide v0, p0, Labcd/bH$a;->DW:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Labcd/bH$a;->DW:J

    return-object v2

    :cond_5f
    const/4 v0, 0x0

    iput v0, p0, Labcd/fH$a;->v5:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Labcd/fH$a;->Hw:I

    goto :goto_0

    :cond_67
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_6e

    :goto_6d
    throw v0

    :goto_6e
    goto :goto_6d
.end method
