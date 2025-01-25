.class public Lorg/antlr/v4/runtime/misc/Triple;
.super Ljava/lang/Object;
.source "Triple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TC;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/antlr/v4/runtime/misc/Triple;->a:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lorg/antlr/v4/runtime/misc/Triple;->b:Ljava/lang/Object;

    .line 17
    iput-object p3, p0, Lorg/antlr/v4/runtime/misc/Triple;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 25
    :cond_4
    instance-of v1, p1, Lorg/antlr/v4/runtime/misc/Triple;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 29
    :cond_a
    check-cast p1, Lorg/antlr/v4/runtime/misc/Triple;

    .line 30
    sget-object v1, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Triple;->a:Ljava/lang/Object;

    iget-object v4, p1, Lorg/antlr/v4/runtime/misc/Triple;->a:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Triple;->b:Ljava/lang/Object;

    iget-object v4, p1, Lorg/antlr/v4/runtime/misc/Triple;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v1, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->INSTANCE:Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;

    iget-object v3, p0, Lorg/antlr/v4/runtime/misc/Triple;->c:Ljava/lang/Object;

    iget-object p1, p1, Lorg/antlr/v4/runtime/misc/Triple;->c:Ljava/lang/Object;

    invoke-virtual {v1, v3, p1}, Lorg/antlr/v4/runtime/misc/ObjectEqualityComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 37
    invoke-static {}, Lorg/antlr/v4/runtime/misc/MurmurHash;->initialize()I

    move-result v0

    .line 38
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Triple;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 39
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Triple;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 40
    iget-object v1, p0, Lorg/antlr/v4/runtime/misc/Triple;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->update(ILjava/lang/Object;)I

    move-result v0

    .line 41
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/antlr/v4/runtime/misc/MurmurHash;->finish(II)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/Triple;->a:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/Triple;->b:Ljava/lang/Object;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/antlr/v4/runtime/misc/Triple;->c:Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v1, "(%s, %s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
