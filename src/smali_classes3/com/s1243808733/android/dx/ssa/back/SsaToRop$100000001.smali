.class Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;
.super Ljava/lang/Object;
.source "SsaToRop.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;)Lcom/s1243808733/android/dx/ssa/back/SsaToRop;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->access$L1000001(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    invoke-static {v1}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->access$L1000001(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$100000001;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
