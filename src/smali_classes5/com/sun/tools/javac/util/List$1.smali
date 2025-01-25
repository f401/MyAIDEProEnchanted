.class Lcom/sun/tools/javac/util/List$1;
.super Lcom/sun/tools/javac/util/List;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/tools/javac/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sun/tools/javac/util/List;-><init>(Ljava/lang/Object;Lcom/sun/tools/javac/util/List;)V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public setTail(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
