.class Lcom/sun/tools/javac/comp/Infer$2;
.super Lcom/sun/tools/javac/code/Type$Mapping;
.source "Infer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/comp/Infer;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/Infer;Ljava/lang/String;)V
    .registers 3

    .line 135
    iput-object p1, p0, Lcom/sun/tools/javac/comp/Infer$2;->this$0:Lcom/sun/tools/javac/comp/Infer;

    invoke-direct {p0, p2}, Lcom/sun/tools/javac/code/Type$Mapping;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private isConstraintCyclic(Lcom/sun/tools/javac/code/Type$UndetVar;)Z
    .registers 3

    .line 156
    new-instance v0, Lcom/sun/tools/javac/comp/Infer$2$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/comp/Infer$2$1;-><init>(Lcom/sun/tools/javac/comp/Infer$2;)V

    .line 196
    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types$UnaryVisitor;->visit(Lcom/sun/tools/javac/code/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;
    .registers 7

    .line 137
    iget v0, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3a

    const/16 v1, 0x15

    if-eq v0, v1, :cond_f

    .line 151
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/code/Type;->map(Lcom/sun/tools/javac/code/Type$Mapping;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    :goto_e
    return-object v0

    .line 142
    :cond_f
    check-cast p1, Lcom/sun/tools/javac/code/Type$UndetVar;

    .line 143
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_25

    .line 147
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/comp/Infer$2;->isConstraintCyclic(Lcom/sun/tools/javac/code/Type$UndetVar;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 148
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    goto :goto_e

    .line 149
    :cond_1e
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/Infer$2;->apply(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto :goto_e

    .line 144
    :cond_25
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$2;->this$0:Lcom/sun/tools/javac/comp/Infer;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Infer;->access$000(Lcom/sun/tools/javac/comp/Infer;)Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    .line 145
    const-string v2, "type.variable.has.undetermined.type"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0

    .line 139
    :cond_3a
    iget-object v0, p0, Lcom/sun/tools/javac/comp/Infer$2;->this$0:Lcom/sun/tools/javac/comp/Infer;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/Infer;->access$000(Lcom/sun/tools/javac/comp/Infer;)Lcom/sun/tools/javac/comp/Infer$NoInstanceException;

    move-result-object v0

    .line 140
    const-string v1, "undetermined.type"

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/comp/Infer$NoInstanceException;->setMessage(Ljava/lang/String;)Lcom/sun/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v0

    throw v0
.end method
