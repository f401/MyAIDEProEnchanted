.class Lcom/sun/tools/javac/comp/Check$1AnnotationValidator;
.super Lcom/sun/tools/javac/tree/TreeScanner;
.source "Check.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnnotationValidator"
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Check;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Check;)V
    .registers 2

    .line 2246
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Check$1AnnotationValidator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 3

    .line 2249
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2250
    invoke-super {p0, p1}, Lcom/sun/tools/javac/tree/TreeScanner;->visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V

    .line 2251
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Check$1AnnotationValidator;->this$0:Lcom/sun/tools/javac/comp/Check;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/comp/Check;->validateAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V

    .line 2253
    :cond_10
    return-void
.end method
