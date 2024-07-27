.class public Labcd/Pt$b;
.super Ljava/io/InputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Pt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field private DW:I

.field final FH:Labcd/Pt;

.field private j6:I


# direct methods
.method public constructor <init>(Labcd/Pt;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Labcd/Pt$b;->FH:Labcd/Pt;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v0, p0, Labcd/Pt$b;->j6:I

    iput v0, p0, Labcd/Pt$b;->DW:I

    return-void
.end method


# virtual methods
.method public available()I
    .registers 3

    iget-object v0, p0, Labcd/Pt$b;->FH:Labcd/Pt;

    invoke-static {v0}, Labcd/Pt;->j6(Labcd/Pt;)I

    move-result v0

    iget v1, p0, Labcd/Pt$b;->j6:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .registers 3

    iget v0, p0, Labcd/Pt$b;->j6:I

    iput v0, p0, Labcd/Pt$b;->DW:I

    return-void
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 3

    iget v0, p0, Labcd/Pt$b;->j6:I

    iget-object v1, p0, Labcd/Pt$b;->FH:Labcd/Pt;

    invoke-static {v1}, Labcd/Pt;->j6(Labcd/Pt;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Labcd/Pt$b;->FH:Labcd/Pt;

    iget v1, p0, Labcd/Pt$b;->j6:I

    invoke-static {v0, v1}, Labcd/Pt;->j6(Labcd/Pt;I)I

    move-result v0

    iget v1, p0, Labcd/Pt$b;->j6:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Labcd/Pt$b;->j6:I

    goto :goto_0
.end method

.method public read([BII)I
    .registers 7

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length v0, p1

    sub-int p3, v0, p2

    :cond_0
    iget-object v0, p0, Labcd/Pt$b;->FH:Labcd/Pt;

    invoke-static {v0}, Labcd/Pt;->j6(Labcd/Pt;)I

    move-result v0

    iget v1, p0, Labcd/Pt$b;->j6:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-object v0, p0, Labcd/Pt$b;->FH:Labcd/Pt;

    invoke-static {v0}, Labcd/Pt;->DW(Labcd/Pt;)[B

    move-result-object v0

    iget v1, p0, Labcd/Pt$b;->j6:I

    iget-object v2, p0, Labcd/Pt$b;->FH:Labcd/Pt;

    invoke-static {v2}, Labcd/Pt;->FH(Labcd/Pt;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Labcd/Pt$b;->j6:I

    add-int/2addr v0, p3

    iput v0, p0, Labcd/Pt$b;->j6:I

    return p3
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Labcd/Pt$b;->DW:I

    iput v0, p0, Labcd/Pt$b;->j6:I

    return-void
.end method
