.class Lcom/bumptech/glide/ListPreloader$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/ListPreloader;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/bumptech/glide/ListPreloader;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/ListPreloader;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/ListPreloader$1;->this$0:Lcom/bumptech/glide/ListPreloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreloadItems(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/ListPreloader$1;->this$0:Lcom/bumptech/glide/ListPreloader;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/ListPreloader;->getItems(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/GenericRequestBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/ListPreloader$1;->this$0:Lcom/bumptech/glide/ListPreloader;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/ListPreloader;->getRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method
