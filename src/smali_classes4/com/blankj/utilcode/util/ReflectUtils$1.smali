.class Lcom/blankj/utilcode/util/ReflectUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/ReflectUtils;->sortConstructors(Ljava/util/List;)V
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
        "Ljava/lang/reflect/Constructor",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/blankj/utilcode/util/ReflectUtils;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/ReflectUtils;)V
    .registers 2

    iput-object p1, p0, Lcom/blankj/utilcode/util/ReflectUtils$1;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/reflect/Constructor;

    check-cast p2, Ljava/lang/reflect/Constructor;

    invoke-virtual {p0, p1, p2}, Lcom/blankj/utilcode/util/ReflectUtils$1;->compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v2

    move v1, v0

    :goto_b
    if-ge v1, v4, :cond_2e

    aget-object v5, v2, v1

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    iget-object v0, p0, Lcom/blankj/utilcode/util/ReflectUtils$1;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/ReflectUtils;->access$000(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/blankj/utilcode/util/ReflectUtils$1;->this$0:Lcom/blankj/utilcode/util/ReflectUtils;

    aget-object v1, v3, v1

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/ReflectUtils;->access$000(Lcom/blankj/utilcode/util/ReflectUtils;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :cond_2e
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, -0x1

    goto :goto_2e

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method
