.class public Labcd/Qn$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Qn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Labcd/Qn$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:I

.field private final j6:Labcd/Ks;


# direct methods
.method public constructor <init>(Labcd/Ks;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_14

    if-eqz p1, :cond_c

    iput p2, p0, Labcd/Qn$a;->DW:I

    iput-object p1, p0, Labcd/Qn$a;->j6:Labcd/Ks;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "exceptionType == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public Hw()Labcd/Ks;
    .registers 2

    iget-object v0, p0, Labcd/Qn$a;->j6:Labcd/Ks;

    return-object v0
.end method

.method public Zo()I
    .registers 2

    iget v0, p0, Labcd/Qn$a;->DW:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Labcd/Qn$a;

    invoke-virtual {p0, p1}, Labcd/Qn$a;->j6(Labcd/Qn$a;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Labcd/Qn$a;

    if-eqz v0, :cond_e

    check-cast p1, Labcd/Qn$a;

    invoke-virtual {p0, p1}, Labcd/Qn$a;->j6(Labcd/Qn$a;)I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Labcd/Qn$a;->DW:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Labcd/Qn$a;->j6:Labcd/Ks;

    invoke-virtual {v1}, Labcd/Ks;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public j6(Labcd/Qn$a;)I
    .registers 4

    iget v0, p0, Labcd/Qn$a;->DW:I

    iget v1, p1, Labcd/Qn$a;->DW:I

    if-ge v0, v1, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    if-le v0, v1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    iget-object v0, p0, Labcd/Qn$a;->j6:Labcd/Ks;

    iget-object p1, p1, Labcd/Qn$a;->j6:Labcd/Ks;

    invoke-virtual {v0, p1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result p1

    return p1
.end method
