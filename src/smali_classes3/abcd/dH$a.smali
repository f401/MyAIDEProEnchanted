.class Labcd/dH$a;
.super Labcd/bH$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/dH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private Hw:I

.field final Zo:Labcd/dH;

.field private v5:I


# direct methods
.method private constructor <init>(Labcd/dH;)V
    .registers 2

    iput-object p1, p0, Labcd/dH$a;->Zo:Labcd/dH;

    invoke-direct {p0, p1}, Labcd/bH$a;-><init>(Labcd/bH;)V

    return-void
.end method

.method synthetic constructor <init>(Labcd/dH;Labcd/dH$a;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/dH$a;-><init>(Labcd/dH;)V

    return-void
.end method


# virtual methods
.method protected j6()Labcd/bH$b;
    .registers 2

    new-instance v0, Labcd/cH;

    invoke-direct {v0, p0}, Labcd/cH;-><init>(Labcd/dH$a;)V

    return-object v0
.end method

.method public next()Labcd/bH$b;
    .registers 5

    :goto_0
    iget v0, p0, Labcd/dH$a;->Hw:I

    iget-object v1, p0, Labcd/dH$a;->Zo:Labcd/dH;

    invoke-static {v1}, Labcd/dH;->j6(Labcd/dH;)[[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_55

    iget-object v0, p0, Labcd/dH$a;->Zo:Labcd/dH;

    invoke-static {v0}, Labcd/dH;->j6(Labcd/dH;)[[B

    move-result-object v0

    iget v1, p0, Labcd/dH$a;->Hw:I

    aget-object v0, v0, v1

    if-nez v0, :cond_18

    goto :goto_4e

    :cond_18
    iget v0, p0, Labcd/dH$a;->v5:I

    iget-object v1, p0, Labcd/dH$a;->Zo:Labcd/dH;

    invoke-static {v1}, Labcd/dH;->j6(Labcd/dH;)[[B

    move-result-object v1

    iget v2, p0, Labcd/dH$a;->Hw:I

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    iget-object v0, p0, Labcd/bH$a;->j6:Labcd/bH$b;

    iget-object v1, p0, Labcd/dH$a;->Zo:Labcd/dH;

    invoke-static {v1}, Labcd/dH;->j6(Labcd/dH;)[[B

    move-result-object v1

    iget v2, p0, Labcd/dH$a;->Hw:I

    aget-object v1, v1, v2

    iget v2, p0, Labcd/dH$a;->v5:I

    invoke-static {v1, v2}, Labcd/FK;->FH([BI)J

    move-result-wide v1

    iput-wide v1, v0, Labcd/bH$b;->DW:J

    iget v0, p0, Labcd/dH$a;->v5:I

    add-int/lit8 v0, v0, 0x18

    iput v0, p0, Labcd/dH$a;->v5:I

    iget-wide v0, p0, Labcd/bH$a;->DW:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Labcd/bH$a;->DW:J

    iget-object v0, p0, Labcd/bH$a;->j6:Labcd/bH$b;

    return-object v0

    :cond_4b
    const/4 v0, 0x0

    iput v0, p0, Labcd/dH$a;->v5:I

    :goto_4e
    iget v0, p0, Labcd/dH$a;->Hw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Labcd/dH$a;->Hw:I

    goto :goto_0

    :cond_55
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    goto :goto_5c

    :goto_5b
    throw v0

    :goto_5c
    goto :goto_5b
.end method
