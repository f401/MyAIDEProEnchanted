.class public Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;
.super Ljava/lang/Object;
.source "DomFront.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s1243808733/android/dx/ssa/DomFront;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DomInfo"
.end annotation


# instance fields
.field public dominanceFrontiers:Lcom/s1243808733/android/dx/util/IntSet;

.field public idom:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/ssa/DomFront$DomInfo;->idom:I

    return-void
.end method
