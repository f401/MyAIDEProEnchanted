.class Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$1;
.super Ljava/lang/Object;
.source "DebugInfoEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;->buildSortedPositions()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$1;->this$0:Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)I
    .registers 3

    .line 506
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result p1

    invoke-virtual {p2}, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 503
    check-cast p1, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    check-cast p2, Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/s1243808733/android/dx/dex/file/DebugInfoEncoder$1;->compare(Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;Lcom/s1243808733/android/dx/dex/code/PositionList$Entry;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
