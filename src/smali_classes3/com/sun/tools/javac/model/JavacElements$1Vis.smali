.class Lcom/sun/tools/javac/model/JavacElements$1Vis;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "JavacElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/model/JavacElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Vis"
.end annotation


# instance fields
.field result:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/model/JavacElements;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/model/JavacElements;)V
    .registers 3

    .line 219
    iput-object p1, p0, Lcom/sun/tools/javac/model/JavacElements$1Vis;->this$0:Lcom/sun/tools/javac/model/JavacElements;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1Vis;->result:Lcom/sun/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 3

    .line 225
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1Vis;->result:Lcom/sun/tools/javac/util/List;

    .line 226
    return-void
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 3

    .line 228
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1Vis;->result:Lcom/sun/tools/javac/util/List;

    .line 229
    return-void
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 3

    .line 222
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->packageAnnotations:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1Vis;->result:Lcom/sun/tools/javac/util/List;

    .line 223
    return-void
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 3

    .line 231
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    iput-object v0, p0, Lcom/sun/tools/javac/model/JavacElements$1Vis;->result:Lcom/sun/tools/javac/util/List;

    .line 232
    return-void
.end method
