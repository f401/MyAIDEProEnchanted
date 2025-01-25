.class public Labcd/Jm$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:I

.field private final FH:I

.field private final Hw:Labcd/Ks;

.field private final j6:I


# direct methods
.method public constructor <init>(IIILabcd/Ks;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_22

    if-lt p2, p1, :cond_1a

    if-ltz p3, :cond_12

    iput p1, p0, Labcd/Jm$a;->j6:I

    iput p2, p0, Labcd/Jm$a;->DW:I

    iput p3, p0, Labcd/Jm$a;->FH:I

    iput-object p4, p0, Labcd/Jm$a;->Hw:Labcd/Ks;

    return-void

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlerPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endPc < startPc"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/Jm$a;->Hw:Labcd/Ks;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    sget-object v0, Labcd/Ks;->DW:Labcd/Ks;

    :goto_7
    return-object v0
.end method

.method public FH()I
    .registers 2

    iget v0, p0, Labcd/Jm$a;->FH:I

    return v0
.end method

.method public Hw()I
    .registers 2

    iget v0, p0, Labcd/Jm$a;->j6:I

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/Jm$a;->DW:I

    return v0
.end method

.method public j6(I)Z
    .registers 3

    iget v0, p0, Labcd/Jm$a;->j6:I

    if-lt p1, v0, :cond_a

    iget v0, p0, Labcd/Jm$a;->DW:I

    if-ge p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
