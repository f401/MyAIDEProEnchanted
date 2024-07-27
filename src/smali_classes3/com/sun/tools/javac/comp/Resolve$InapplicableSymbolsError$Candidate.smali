.class Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;
.super Ljava/lang/Object;
.source "Resolve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Candidate"
.end annotation


# instance fields
.field final details:Lcom/sun/tools/javac/util/JCDiagnostic;

.field final step:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

.field final sym:Lcom/sun/tools/javac/code/Symbol;

.field final this$1:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;


# direct methods
.method private constructor <init>(Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)V
    .registers 5

    .line 2185
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->this$1:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2186
    iput-object p2, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->step:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 2187
    iput-object p3, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2188
    iput-object p4, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->details:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 2189
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;Lcom/sun/tools/javac/comp/Resolve$1;)V
    .registers 6

    .line 2179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;-><init>(Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/util/JCDiagnostic;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    .line 2201
    instance-of v1, p1, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;

    if-eqz v1, :cond_3

    .line 2202
    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2203
    check-cast p1, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;

    iget-object v2, p1, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2204
    if-eq v1, v2, :cond_0

    iget-object v3, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->this$1:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 2205
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sun/tools/javac/code/Symbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symbol;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v3, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->this$1:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 2206
    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/sun/tools/javac/code/Symbol;->overrides(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/code/Types;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2207
    :cond_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Symbol;->isConstructor()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    if-eq v1, v2, :cond_3

    .line 2208
    :cond_2
    const/4 v0, 0x1

    .line 2210
    :cond_3
    return v0
.end method

.method getDiagnostic(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/JCDiagnostic;
    .registers 10

    .line 2192
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->this$1:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve;->diags:Lcom/sun/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2193
    invoke-static {v1}, Lcom/sun/tools/javac/code/Kinds;->kindName(Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Kinds$KindName;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->this$1:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v3, v3, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v3, v3, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 2194
    invoke-virtual {v2, p1, v3}, Lcom/sun/tools/javac/code/Symbol;->location(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->this$1:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-object v4, v4, Lcom/sun/tools/javac/comp/Resolve;->types:Lcom/sun/tools/javac/code/Types;

    .line 2195
    invoke-virtual {v3, p1, v4}, Lcom/sun/tools/javac/code/Symbol;->asMemberOf(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Types;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->details:Lcom/sun/tools/javac/util/JCDiagnostic;

    .line 2192
    const-string v5, "inapplicable.method"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x1

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    invoke-virtual {v0, v5, v6}, Lcom/sun/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/util/JCDiagnostic;

    move-result-object v0

    return-object v0
.end method

.method isValid()Z
    .registers 7

    const-wide v4, 0x400000000L

    const-wide/16 v2, 0x0

    .line 2214
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->step:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    sget-object v1, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->VARARITY:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->sym:Lcom/sun/tools/javac/code/Symbol;

    .line 2215
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->step:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v0, p0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError$Candidate;->this$1:Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;

    iget-object v0, v0, Lcom/sun/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lcom/sun/tools/javac/comp/Resolve;

    iget-boolean v0, v0, Lcom/sun/tools/javac/comp/Resolve;->boxingEnabled:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BOX:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    :goto_0
    if-ne v1, v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 2214
    :goto_1
    return v0

    .line 2215
    :cond_2
    sget-object v0, Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;->BASIC:Lcom/sun/tools/javac/comp/Resolve$MethodResolutionPhase;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
