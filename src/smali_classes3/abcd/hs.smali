.class public final Labcd/hs;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Labcd/hs;


# instance fields
.field private final DW:Labcd/Js;

.field private final FH:I

.field private final Hw:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/hs;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Labcd/hs;-><init>(Labcd/Js;II)V

    sput-object v0, Labcd/hs;->j6:Labcd/hs;

    return-void
.end method

.method public constructor <init>(Labcd/Js;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-lt p2, v0, :cond_17

    if-lt p3, v0, :cond_f

    iput-object p1, p0, Labcd/hs;->DW:Labcd/Js;

    iput p2, p0, Labcd/hs;->FH:I

    iput p3, p0, Labcd/hs;->Hw:I

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "line < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "address < -1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public DW(Labcd/hs;)Z
    .registers 4

    iget v0, p0, Labcd/hs;->Hw:I

    iget v1, p1, Labcd/hs;->Hw:I

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Labcd/hs;->DW:Labcd/Js;

    iget-object p1, p1, Labcd/hs;->DW:Labcd/Js;

    if-eq v0, p1, :cond_14

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Labcd/Js;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_14
    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Labcd/hs;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    :cond_a
    check-cast p1, Labcd/hs;

    iget v2, p0, Labcd/hs;->FH:I

    iget v3, p1, Labcd/hs;->FH:I

    if-ne v2, v3, :cond_19

    invoke-virtual {p0, p1}, Labcd/hs;->DW(Labcd/hs;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Labcd/hs;->DW:Labcd/Js;

    invoke-virtual {v0}, Labcd/Js;->hashCode()I

    move-result v0

    iget v1, p0, Labcd/hs;->FH:I

    add-int/2addr v0, v1

    iget v1, p0, Labcd/hs;->Hw:I

    add-int/2addr v0, v1

    return v0
.end method

.method public j6()I
    .registers 2

    iget v0, p0, Labcd/hs;->Hw:I

    return v0
.end method

.method public j6(Labcd/hs;)Z
    .registers 3

    iget v0, p0, Labcd/hs;->Hw:I

    iget p1, p1, Labcd/hs;->Hw:I

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Labcd/hs;->DW:Labcd/Js;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Labcd/Js;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_17
    iget v1, p0, Labcd/hs;->Hw:I

    if-ltz v1, :cond_1e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1e
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Labcd/hs;->FH:I

    if-gez v1, :cond_2a

    const-string v1, "????"

    goto :goto_2e

    :cond_2a
    invoke-static {v1}, Labcd/Yt;->v5(I)Ljava/lang/String;

    move-result-object v1

    :goto_2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
