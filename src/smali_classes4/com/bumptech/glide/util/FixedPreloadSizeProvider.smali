.class public Lcom/bumptech/glide/util/FixedPreloadSizeProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final size:[I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iput-object v0, p0, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    iget-object v1, p0, Lcom/bumptech/glide/util/FixedPreloadSizeProvider;->size:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method
