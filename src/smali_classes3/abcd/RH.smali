.class Labcd/RH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/TH;->DW(Labcd/LE;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/MH;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/TH;


# direct methods
.method constructor <init>(Labcd/TH;)V
    .registers 2

    iput-object p1, p0, Labcd/RH;->j6:Labcd/TH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/MH;

    check-cast p2, Labcd/MH;

    invoke-virtual {p0, p1, p2}, Labcd/RH;->j6(Labcd/MH;Labcd/MH;)I

    move-result p1

    return p1
.end method

.method public j6(Labcd/MH;Labcd/MH;)I
    .registers 5

    invoke-virtual {p1}, Labcd/MH;->vy()Z

    move-result v0

    invoke-virtual {p2}, Labcd/MH;->vy()Z

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-virtual {p1}, Labcd/MH;->yS()I

    move-result v0

    invoke-virtual {p2}, Labcd/MH;->yS()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_18

    return v0

    :cond_18
    invoke-virtual {p1}, Labcd/MH;->er()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Labcd/MH;->er()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_28

    return v0

    :cond_28
    invoke-virtual {p1}, Labcd/MH;->er()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Labcd/MH;->er()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_38

    return v0

    :cond_38
    invoke-virtual {p1}, Labcd/MH;->P8()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Labcd/MH;->P8()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_48

    return v0

    :cond_48
    invoke-virtual {p2}, Labcd/MH;->gW()I

    move-result p2

    invoke-virtual {p1}, Labcd/MH;->gW()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method
