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
        "Ljava/lang/Comparable",
        "<",
        "Labcd/Qn$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final DW:I

.field private final j6:Labcd/Ks;


# direct methods
.method public constructor <init>(Labcd/Ks;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_1

    if-eqz p1, :cond_0

    iput p2, p0, Labcd/Qn$a;->DW:I

    iput-object p1, p0, Labcd/Qn$a;->j6:Labcd/Ks;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "exceptionType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .registers 3

    check-cast p1, Labcd/Qn$a;

    invoke-virtual {p0, p1}, Labcd/Qn$a;->j6(Labcd/Qn$a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v1, p1, Labcd/Qn$a;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Labcd/Qn$a;

    invoke-virtual {p0, p1}, Labcd/Qn$a;->j6(Labcd/Qn$a;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
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

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Labcd/Qn$a;->j6:Labcd/Ks;

    iget-object v1, p1, Labcd/Qn$a;->j6:Labcd/Ks;

    invoke-virtual {v0, v1}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    goto :goto_0
.end method
