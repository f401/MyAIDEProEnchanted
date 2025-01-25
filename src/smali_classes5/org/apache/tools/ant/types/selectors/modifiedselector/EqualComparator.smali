.class public Lorg/apache/tools/ant/types/selectors/modifiedselector/EqualComparator;
.super Ljava/lang/Object;
.source "EqualComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 42
    if-nez p1, :cond_8

    .line 43
    if-nez p2, :cond_6

    .line 44
    const/4 v0, 0x1

    .line 48
    :goto_5
    return v0

    .line 46
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 48
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, "EqualComparator"

    return-object v0
.end method
