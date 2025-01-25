.class public Lcom/sun/tools/javac/code/Type$ErasedClassType;
.super Lcom/sun/tools/javac/code/Type$ClassType;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErasedClassType"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V
    .registers 4

    .line 779
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/tools/javac/code/Type$ClassType;-><init>(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    .line 780
    return-void
.end method


# virtual methods
.method public hasErasedSupertypes()Z
    .registers 2

    .line 784
    const/4 v0, 0x1

    return v0
.end method
