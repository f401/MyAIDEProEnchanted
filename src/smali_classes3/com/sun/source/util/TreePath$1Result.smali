.class Lcom/sun/source/util/TreePath$1Result;
.super Ljava/lang/Error;
.source "TreePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/source/util/TreePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Result"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x527689c44f0eae19L


# instance fields
.field path:Lcom/sun/source/util/TreePath;


# direct methods
.method constructor <init>(Lcom/sun/source/util/TreePath;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Error;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sun/source/util/TreePath$1Result;->path:Lcom/sun/source/util/TreePath;

    .line 60
    return-void
.end method
