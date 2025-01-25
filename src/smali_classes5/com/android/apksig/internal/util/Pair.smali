.class public final Lcom/android/apksig/internal/util/Pair;
.super Ljava/lang/Object;


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
.field private final mFirst:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final mSecond:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/apksig/internal/util/Pair;->mFirst:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/apksig/internal/util/Pair;->mSecond:Ljava/lang/Object;

    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/apksig/internal/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Lcom/android/apksig/internal/util/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/apksig/internal/util/Pair;

    invoke-direct {v0, p0, p1}, Lcom/android/apksig/internal/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    if-eqz p1, :cond_22

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_22

    check-cast p1, Lcom/android/apksig/internal/util/Pair;

    iget-object v0, p0, Lcom/android/apksig/internal/util/Pair;->mFirst:Ljava/lang/Object;

    if-nez v0, :cond_24

    iget-object v0, p1, Lcom/android/apksig/internal/util/Pair;->mFirst:Ljava/lang/Object;

    if-nez v0, :cond_22

    :cond_1a
    iget-object v0, p0, Lcom/android/apksig/internal/util/Pair;->mSecond:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/apksig/internal/util/Pair;->mSecond:Ljava/lang/Object;

    if-nez v0, :cond_2d

    if-eqz v1, :cond_2

    :cond_22
    :goto_22
    const/4 v0, 0x0

    goto :goto_3

    :cond_24
    iget-object v1, p1, Lcom/android/apksig/internal/util/Pair;->mFirst:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_22

    :cond_2d
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_22
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/util/Pair;->mFirst:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/apksig/internal/util/Pair;->mSecond:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/apksig/internal/util/Pair;->mFirst:Ljava/lang/Object;

    if-nez v0, :cond_10

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/android/apksig/internal/util/Pair;->mSecond:Ljava/lang/Object;

    if-nez v2, :cond_15

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a
.end method
