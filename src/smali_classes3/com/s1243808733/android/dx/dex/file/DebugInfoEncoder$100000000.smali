.class Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000000;
.super Ljava/lang/Object;
.source "DebugInfoEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000000;->this$0:Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000000;)Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000000;->this$0:Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)I
    .registers 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 506
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v0

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    check-cast p2, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$100000000;->compare(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 511
    if-eq p1, p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
