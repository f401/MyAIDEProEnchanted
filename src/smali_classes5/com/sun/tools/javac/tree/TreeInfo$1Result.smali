.class Lcom/sun/tools/javac/tree/TreeInfo$1Result;
.super Ljava/lang/Error;
.source "TreeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/tree/TreeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Result"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x527689c44f0eae19L


# instance fields
.field path:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .line 519
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 520
    iput-object p1, p0, Lcom/sun/tools/javac/tree/TreeInfo$1Result;->path:Lcom/sun/tools/javac/util/List;

    .line 521
    return-void
.end method
