.class final Lcom/google/common/base/Throwables$1;
.super Ljava/util/AbstractList;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Throwables;->jlaStackTrace(Ljava/lang/Throwable;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/StackTraceElement;",
        ">;"
    }
.end annotation


# instance fields
.field final val$t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 414
    iput-object p1, p0, Lcom/google/common/base/Throwables$1;->val$t:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3

    .line 414
    invoke-virtual {p0, p1}, Lcom/google/common/base/Throwables$1;->get(I)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/StackTraceElement;
    .registers 7

    .line 418
    invoke-static {}, Lcom/google/common/base/Throwables;->access$000()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Throwables;->access$100()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/base/Throwables$1;->val$t:Ljava/lang/Throwable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Throwables;->access$200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    .line 417
    return-object v0
.end method

.method public size()I
    .registers 6

    .line 423
    invoke-static {}, Lcom/google/common/base/Throwables;->access$300()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/Throwables;->access$100()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/base/Throwables$1;->val$t:Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Throwables;->access$200(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
