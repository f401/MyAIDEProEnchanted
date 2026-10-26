.class public Lorg/antlr/v4/runtime/misc/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v0

    .line 25
    :cond_1
    instance-of v2, p1, Lorg/antlr/v4/runtime/misc/Pair;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 29
    :cond_2
    check-cast p1, Lorg/antlr/v4/runtime/misc/Pair;

    .line 30
    sget-object v2, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    iget-object v4, p1, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    iget-object v4, p1, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .line 36
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 37
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 38
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 39
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 44
    const-string v0, "(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Pair;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Pair;->b:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
