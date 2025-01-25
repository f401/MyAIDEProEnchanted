.class Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "MemberEnter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/comp/MemberEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Synthesizer"
.end annotation


# instance fields
.field interfaceExpected:Z

.field originalType:Lcom/sun/tools/javac/code/Type;

.field result:Lcom/sun/tools/javac/code/Type;

.field synthesizedSymbols:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field final this$0:Lcom/sun/tools/javac/comp/MemberEnter;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/comp/MemberEnter;Lcom/sun/tools/javac/code/Type;Z)V
    .registers 5

    .line 1101
    iput-object p1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 1098
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->synthesizedSymbols:Lcom/sun/tools/javac/util/List;

    .line 1102
    iput-object p2, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->originalType:Lcom/sun/tools/javac/code/Type;

    .line 1103
    iput-boolean p3, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->interfaceExpected:Z

    .line 1104
    return-void
.end method


# virtual methods
.method synthesizeClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;
    .registers 7

    .line 1169
    iget-boolean v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->interfaceExpected:Z

    if-eqz v0, :cond_25

    const/16 v0, 0x200

    .line 1170
    :goto_6
    new-instance v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)V

    .line 1171
    new-instance v0, Lcom/sun/tools/javac/code/Scope$ErrorScope;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Scope$ErrorScope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->members_field:Lcom/sun/tools/javac/code/Scope;

    .line 1172
    new-instance v0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$2;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->originalType:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v0, p0, v2, v1}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$2;-><init>(Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v0, v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 1178
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->synthesizedSymbols:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->synthesizedSymbols:Lcom/sun/tools/javac/util/List;

    .line 1179
    return-object v1

    .line 1169
    :cond_25
    const/4 v0, 0x0

    goto :goto_6
.end method

.method synthesizeTyparams(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;I)V
    .registers 7

    .line 1183
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 1184
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/sun/tools/javac/util/Assert;->check(Z)V

    .line 1185
    const/4 v1, 0x1

    if-ne p2, v1, :cond_32

    .line 1186
    new-instance v1, Lcom/sun/tools/javac/code/Type$TypeVar;

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/MemberEnter;->access$600(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Names;

    move-result-object v2

    const-string v3, "T"

    invoke-virtual {v2, v3}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v3}, Lcom/sun/tools/javac/comp/MemberEnter;->access$500(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v1, v2, p1, v3}, Lcom/sun/tools/javac/code/Type$TypeVar;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V

    .line 1187
    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2, v1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    .line 1194
    :cond_31
    return-void

    .line 1189
    :cond_32
    :goto_32
    if-lez p2, :cond_31

    .line 1190
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/MemberEnter;->access$600(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/util/Names;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/sun/tools/javac/code/Type$TypeVar;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lcom/sun/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v2}, Lcom/sun/tools/javac/comp/MemberEnter;->access$500(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symtab;->botType:Lcom/sun/tools/javac/code/Type;

    invoke-direct {v3, v1, p1, v2}, Lcom/sun/tools/javac/code/Type$TypeVar;-><init>(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Type;)V

    .line 1191
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->typarams_field:Lcom/sun/tools/javac/util/List;

    .line 1189
    add-int/lit8 p2, p2, -0x1

    goto :goto_32
.end method

.method visit(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Type;
    .registers 3

    .line 1107
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V

    .line 1108
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->result:Lcom/sun/tools/javac/code/Type;

    return-object v0
.end method

.method visit(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 1112
    new-instance v1, Lcom/sun/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lcom/sun/tools/javac/util/ListBuffer;-><init>()V

    .line 1113
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 1114
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->visit(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_9

    .line 1115
    :cond_1d
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 4

    .line 1125
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_d

    .line 1126
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->result:Lcom/sun/tools/javac/code/Type;

    .line 1130
    :goto_c
    return-void

    .line 1128
    :cond_d
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v1}, Lcom/sun/tools/javac/comp/MemberEnter;->access$500(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symtab;->unnamedPackage:Lcom/sun/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->synthesizeClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->result:Lcom/sun/tools/javac/code/Type;

    goto :goto_c
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 4

    .line 1134
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_d

    .line 1135
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->result:Lcom/sun/tools/javac/code/Type;

    .line 1148
    :goto_c
    return-void

    .line 1138
    :cond_d
    iget-boolean v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->interfaceExpected:Z

    .line 1140
    const/4 v0, 0x0

    :try_start_10
    iput-boolean v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->interfaceExpected:Z

    .line 1141
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->visit(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Type;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_27

    move-result-object v0

    .line 1143
    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->interfaceExpected:Z

    .line 1144
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->synthesizeClass(Lcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    .line 1146
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->result:Lcom/sun/tools/javac/code/Type;

    goto :goto_c

    .line 1143
    :catchall_27
    move-exception v0

    iput-boolean v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->interfaceExpected:Z

    .line 1144
    throw v0
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3

    .line 1120
    iget-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->this$0:Lcom/sun/tools/javac/comp/MemberEnter;

    invoke-static {v0}, Lcom/sun/tools/javac/comp/MemberEnter;->access$500(Lcom/sun/tools/javac/comp/MemberEnter;)Lcom/sun/tools/javac/code/Symtab;

    move-result-object v0

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symtab;->errType:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->result:Lcom/sun/tools/javac/code/Type;

    .line 1121
    return-void
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 6

    .line 1152
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_d

    .line 1153
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    iput-object v0, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->result:Lcom/sun/tools/javac/code/Type;

    .line 1166
    :goto_c
    return-void

    .line 1155
    :cond_d
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->visit(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 1156
    iget-object v1, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->synthesizedSymbols:Lcom/sun/tools/javac/util/List;

    iget-object v2, v0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v1, v2}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1157
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->synthesizeTyparams(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;I)V

    .line 1158
    :cond_2c
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->visit(Lcom/sun/tools/javac/util/List;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    .line 1159
    new-instance v2, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$1;

    iget-object v3, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer$1;-><init>(Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Lcom/sun/tools/javac/util/List;)V

    iput-object v2, p0, Lcom/sun/tools/javac/comp/MemberEnter$Synthesizer;->result:Lcom/sun/tools/javac/code/Type;

    goto :goto_c
.end method
