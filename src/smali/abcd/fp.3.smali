.class Labcd/fp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/hp;->DW()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Labcd/io$a;",
        ">;"
    }
.end annotation


# instance fields
.field final j6:Labcd/hp;


# direct methods
.method constructor <init>(Labcd/hp;)V
    .registers 2

    iput-object p1, p0, Labcd/fp;->j6:Labcd/hp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Labcd/io$a;

    check-cast p2, Labcd/io$a;

    invoke-virtual {p0, p1, p2}, Labcd/fp;->j6(Labcd/io$a;Labcd/io$a;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j6(Labcd/io$a;Labcd/io$a;)I
    .registers 5

    invoke-virtual {p1}, Labcd/io$a;->j6()I

    move-result v0

    invoke-virtual {p2}, Labcd/io$a;->j6()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
