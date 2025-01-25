.class Lcom/sun/tools/javac/code/Scope$1;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Lcom/sun/tools/javac/util/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/util/Filter",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accepts(Lcom/sun/tools/javac/code/Symbol;)Z
    .registers 3

    .line 305
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic accepts(Ljava/lang/Object;)Z
    .registers 3

    .line 303
    check-cast p1, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/code/Scope$1;->accepts(Lcom/sun/tools/javac/code/Symbol;)Z

    move-result v0

    return v0
.end method
