.class Labcd/Us;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Ws;->j6()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Labcd/ms;",
        ">;"
    }
.end annotation


# instance fields
.field final DW:Labcd/Ws;

.field final j6:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Labcd/Ws;Ljava/util/HashMap;)V
    .registers 3

    iput-object p1, p0, Labcd/Us;->DW:Labcd/Ws;

    iput-object p2, p0, Labcd/Us;->j6:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Labcd/ms;

    check-cast p2, Labcd/ms;

    invoke-virtual {p0, p1, p2}, Labcd/Us;->j6(Labcd/ms;Labcd/ms;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public j6(Labcd/ms;Labcd/ms;)I
    .registers 5

    iget-object v0, p0, Labcd/Us;->j6:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Labcd/Us;->j6:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_1f

    invoke-virtual {p1, p2}, Labcd/ms;->j6(Labcd/ms;)I

    move-result v0

    :cond_1f
    return v0
.end method
