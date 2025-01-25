.class public Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;
.super Ljava/lang/Object;
.source "RichDiagnosticFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ClassNameSimplifier"
.end annotation


# instance fields
.field nameClashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;>;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;


# direct methods
.method protected constructor <init>(Lcom/sun/tools/javac/util/RichDiagnosticFormatter;)V
    .registers 3

    .line 292
    iput-object p1, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->this$0:Lcom/sun/tools/javac/util/RichDiagnosticFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->nameClashes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected addUsage(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 5

    .line 301
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    .line 302
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->nameClashes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 303
    if-nez v0, :cond_12

    .line 304
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 306
    :cond_12
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 307
    iget-object v2, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->nameClashes:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_21
    return-void
.end method

.method public simplify(Lcom/sun/tools/javac/code/Symbol;)Ljava/lang/String;
    .registers 6

    .line 311
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 313
    iget-object v0, p0, Lcom/sun/tools/javac/util/RichDiagnosticFormatter$ClassNameSimplifier;->nameClashes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/List;

    .line 314
    if-eqz v0, :cond_2b

    .line 315
    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7c

    .line 316
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 317
    :cond_2b
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 318
    :goto_2f
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4d

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4d

    .line 321
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    .line 322
    iget-object p1, p1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    goto :goto_2f

    .line 324
    :cond_4d
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol;->getSimpleName()Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    const-string v0, ""

    .line 327
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/util/Name;

    .line 328
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 330
    const-string v0, "."

    move-object v1, v0

    .line 331
    goto :goto_61

    .line 332
    :cond_77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    :goto_7b
    return-object v0

    :cond_7c
    move-object v0, v1

    goto :goto_7b
.end method
