.class Lcom/sun/tools/javac/comp/Resolve$AccessError;
.super Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessError"
.end annotation


# instance fields
.field private env:Lcom/sun/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private site:Lcom/sun/tools/javac/code/Type;

.field final this$0:Lcom/sun/tools/javac/comp/Resolve;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 4

    const/4 v0, 0x0

    .line 2230
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/sun/tools/javac/comp/Resolve$AccessError;-><init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 2231
    return-void
.end method

.method constructor <init>(Lcom/sun/tools/javac/comp/Resolve;Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/comp/Env",
            "<",
            "Lcom/sun/tools/javac/comp/AttrContext;",
            ">;",
            "Lcom/sun/tools/javac/code/Type;",
            "Lcom/sun/tools/javac/code/Symbol;",
            ")V"
        }
    .end annotation

    .line 2233
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 2234
    const/16 v0, 0x42

    const-string v1, "access error"

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/sun/tools/javac/comp/Resolve$InvalidSymbolError;-><init>(Lcom/sun/tools/javac/comp/Resolve;ILcom/sun/tools/javac/code/Symbol;Ljava/lang/String;)V

    .line 2235
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->env:Lcom/sun/tools/javac/comp/Env;

    .line 2236
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->site:Lcom/sun/tools/javac/code/Type;

    .line 2237
    invoke-static {p1}, Lcom/sun/tools/javac/comp/Resolve;->access$100(Lcom/sun/tools/javac/comp/Resolve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2238
    iget-object v0, p1, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is inaccessible."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "proc.messager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/util/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2239
    :cond_0
    return-void
.end method


# virtual methods
.method public exists()Z
    .registers 2

    .line 2243
    const/4 v0, 0x0

    return v0
.end method

.method getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 16
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

    .line 2254
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 2255
    const/4 v0, 0x0

    .line 2275
    :goto_0
    return-object v0

    .line 2257
    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v1, p4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v1, :cond_1

    .line 2258
    new-instance v0, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    const/16 v2, 0x47

    invoke-direct {v0, v1, v2}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lcom/sun/tools/javac/comp/Resolve;I)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sun/tools/javac/comp/Resolve$SymbolNotFoundError;->getDiagnostic(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto :goto_0

    .line 2257
    :cond_1
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->env:Lcom/sun/tools/javac/comp/Env;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->site:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    .line 2263
    invoke-virtual {v2, v0, v1}, Lcom/sun/tools/javac/comp/Resolve;->isAccessible(Lcom/sun/tools/javac/comp/Env;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2264
    :cond_2
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2266
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 2264
    const-string v4, "not.def.access.class.intf.cant.access"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto :goto_0

    .line 2268
    :cond_3
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x6

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 2269
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2271
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v4

    const-wide/16 v6, 0x6

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/sun/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2272
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v6

    .line 2269
    const-string v4, "report.access"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v1, 0x1

    aput-object v3, v5, v1

    const/4 v1, 0x2

    aput-object v6, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto/16 :goto_0

    .line 2275
    :cond_4
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v1, v1, Lcom/sun/tools/javac/comp/Resolve;->log:Lcom/sun/tools/javac/util/Log;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Log;->currentSource()Lcom/sun/tools/javac/util/DiagnosticSource;

    move-result-object v2

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$AccessError;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2276
    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Symbol;->location()Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    .line 2275
    const-string v4, "not.def.public.cant.access"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v3, v5, v1

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->create(Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticType;Lcom/sun/tools/javac/util/DiagnosticSource;Lcom/sun/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    goto/16 :goto_0
.end method
