.class Lcom/sun/tools/javac/comp/Check$2;
.super Ljava/lang/Object;
.source "Check.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/tools/javac/comp/Check;->validateAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sun/tools/javac/code/Symbol;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Check;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Check;)V
    .registers 2

    .line 2395
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$2;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)I
    .registers 5

    .line 2397
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p2, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Name;->compareTo(Lcom/sun/tools/javac/util/Name;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 2395
    check-cast p1, Lcom/sun/tools/javac/code/Symbol;

    check-cast p2, Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/comp/Check$2;->compare(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)I

    move-result v0

    return v0
.end method
