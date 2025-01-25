.class public Lcom/sun/tools/javac/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final fst:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field public final snd:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 50
    if-nez p0, :cond_4

    if-eqz p1, :cond_c

    :cond_4
    if-eqz p0, :cond_e

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/tools/javac/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/sun/tools/javac/util/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/sun/tools/javac/util/Pair;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 54
    instance-of v0, p1, Lcom/sun/tools/javac/util/Pair;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/sun/tools/javac/util/Pair;

    iget-object v0, v0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    .line 56
    invoke-static {v1, v0}, Lcom/sun/tools/javac/util/Pair;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p1, Lcom/sun/tools/javac/util/Pair;

    iget-object v1, p1, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    .line 57
    invoke-static {v0, v1}, Lcom/sun/tools/javac/util/Pair;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    .line 54
    :goto_1e
    return v0

    .line 57
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public hashCode()I
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 63
    :goto_9
    return v0

    .line 61
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 62
    :cond_11
    iget-object v1, p0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_9

    .line 63
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-object v1, p0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_9
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pair["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
