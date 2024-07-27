.class Lcom/blankj/utilcode/util/MapUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/blankj/utilcode/util/MapUtils$Closure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/MapUtils;->transform(Ljava/util/Map;Lcom/blankj/utilcode/util/MapUtils$Transformer;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/blankj/utilcode/util/MapUtils$Closure",
        "<TK1;TV1;>;"
    }
.end annotation


# instance fields
.field final val$transMap:Ljava/util/Map;

.field final val$transformer:Lcom/blankj/utilcode/util/MapUtils$Transformer;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/MapUtils$Transformer;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/blankj/utilcode/util/MapUtils$1;->val$transformer:Lcom/blankj/utilcode/util/MapUtils$Transformer;

    iput-object p2, p0, Lcom/blankj/utilcode/util/MapUtils$1;->val$transMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK1;TV1;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/blankj/utilcode/util/MapUtils$1;->val$transformer:Lcom/blankj/utilcode/util/MapUtils$Transformer;

    invoke-interface {v0, p1, p2}, Lcom/blankj/utilcode/util/MapUtils$Transformer;->transform(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/MapUtils$1;->val$transMap:Ljava/util/Map;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
