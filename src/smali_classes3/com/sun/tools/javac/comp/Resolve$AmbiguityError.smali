.class Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;
.super Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmbiguityError"
.end annotation


# instance fields
.field sym2:Lcom/sun/tools/javac/code/Symbol;

.field final this$0:Lcom/sun/tools/javac/comp/Resolve;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 6

    .line 2317
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 2318
    const/16 v0, 0x41

    const-string v1, "ambiguity error"

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V

    .line 2319
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym2:Lcom/sun/tools/javac/code/Symbol;

    .line 2320
    return-void
.end method


# virtual methods
.method getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lcom/sun/tools/javac/code/Symbol;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/util/Name;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;)",
            "Lcom/sun/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    .line 2330
    move-object v2, p0

    .line 2332
    :goto_0
    iget-object v1, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x41

    if-ne v1, v3, :cond_0

    .line 2333
    iget-object v1, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    move-object v2, v1

    goto :goto_0

    .line 2334
    :cond_0
    iget-object v1, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym2:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/16 v3, 0x41

    if-ne v1, v3, :cond_1

    .line 2335
    iget-object v1, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym2:Lcom/sun/tools/javac/code/Symbol;

    check-cast v1, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;

    move-object v2, v1

    goto :goto_0

    .line 2338
    :cond_1
    iget-object v1, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    .line 2339
    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v3, v3, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v3, v3, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v1, v3, :cond_2

    iget-object v1, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    move-object v4, v1

    .line 2340
    :goto_1
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v3, v3, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v3}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v3

    iget-object v5, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2342
    invoke-static {v5}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v7

    iget-object v8, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v6, p0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v6, v6, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 2344
    move-object/from16 v0, p4

    invoke-virtual {v5, v0, v6}, Lcom/sun/tools/javac/code/Symbol;->location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v9

    iget-object v5, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym2:Lcom/sun/tools/javac/code/Symbol;

    .line 2345
    invoke-static {v5}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v10

    iget-object v2, v2, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->sym2:Lcom/sun/tools/javac/code/Symbol;

    iget-object v5, p0, Lcom/sun/tools/javac/comp/Resolve$AmbiguityError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v5, v5, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 2347
    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v5}, Lcom/sun/tools/javac/code/Symbol;->location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v11

    .line 2340
    const-string v5, "ref.ambiguous"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v6, v12

    const/4 v4, 0x1

    aput-object v7, v6, v4

    const/4 v4, 0x2

    aput-object v8, v6, v4

    const/4 v4, 0x3

    aput-object v9, v6, v4

    const/4 v4, 0x4

    aput-object v10, v6, v4

    const/4 v4, 0x5

    aput-object v2, v6, v4

    const/4 v2, 0x6

    aput-object v11, v6, v2

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1

    :cond_2
    move-object v4, v1

    goto :goto_1
.end method
