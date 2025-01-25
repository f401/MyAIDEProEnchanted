.class Lcom/s1243808733/android/dx/ssa/back/SsaToRop$2;
.super Ljava/lang/Object;
.source "SsaToRop.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->getRegistersByFrequency()[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$2;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 4

    .line 371
    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$2;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->-$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$2;->this$0:Lcom/s1243808733/android/dx/ssa/back/SsaToRop;

    invoke-static {v0}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop;->-$$Nest$fgetssaMeth(Lcom/s1243808733/android/dx/ssa/back/SsaToRop;)Lcom/s1243808733/android/dx/ssa/SsaMethod;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/ssa/SsaMethod;->getUseListForRegister(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 368
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/ssa/back/SsaToRop$2;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
