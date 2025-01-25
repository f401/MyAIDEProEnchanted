.class Lcom/sun/tools/javac/code/Types$9;
.super Lcom/sun/tools/javac/code/Types$TypeRelation;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/sun/tools/javac/code/Types;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Types;)V
    .registers 2

    .line 1030
    iput-object p1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-direct {p0}, Lcom/sun/tools/javac/code/Types$TypeRelation;-><init>()V

    return-void
.end method


# virtual methods
.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 8

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1166
    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_84

    const/16 v3, 0xb

    if-eq v2, v3, :cond_45

    const/16 v3, 0xe

    if-eq v2, v3, :cond_24

    const/16 v3, 0x11

    if-eq v2, v3, :cond_1f

    const/16 v3, 0x13

    if-eq v2, v3, :cond_1f

    .line 1187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1e
    return-object v0

    .line 1169
    :cond_1f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1e

    .line 1171
    :cond_24
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    sget-object v3, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v2, p2, p1, v3}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1172
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    sget-object v2, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v2}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    .line 1173
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1e

    .line 1175
    :cond_40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1e

    .line 1180
    :cond_45
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-le v2, v4, :cond_59

    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 1181
    invoke-virtual {v2, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-gt v2, v4, :cond_71

    .line 1182
    :cond_59
    iget-object v2, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v2, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget v2, v2, Lcom/sun/tools/javac/code/Type;->tag:I

    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v3, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget v3, v3, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v2, v3, :cond_6c

    move v0, v1

    :cond_6c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1e

    .line 1184
    :cond_71
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->elemtype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/code/Types$9;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    goto :goto_1e

    .line 1178
    :cond_84
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1e
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1030
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$9;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 15

    const/16 v5, 0xa

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1058
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    .line 1059
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1058
    const/16 v3, 0x13

    if-eq v1, v3, :cond_17

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x11

    if-ne v1, v3, :cond_19

    :cond_17
    move-object v0, v2

    .line 1161
    :goto_18
    return-object v0

    .line 1061
    :cond_19
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xe

    if-ne v1, v3, :cond_41

    .line 1062
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->getUpperBound()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    sget-object v3, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v0, p1, v1, v3}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1063
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    move-object v0, v2

    .line 1064
    goto :goto_18

    .line 1066
    :cond_3c
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_18

    .line 1070
    :cond_41
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->isCompound()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 1071
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    .line 1072
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    sget-object v3, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    iput-object v3, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    .line 1073
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->supertype(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Types$9;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 1074
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_18

    .line 1075
    :cond_6e
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->interfaces(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/tools/javac/code/Type;

    .line 1076
    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Types$9;->visit(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_78

    .line 1077
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_18

    .line 1079
    :cond_95
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/util/Warner;

    sget-object v3, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v3}, Lcom/sun/tools/javac/util/Warner;->hasLint(Lcom/sun/tools/javac/code/Lint$LintCategory;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 1080
    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    :cond_aa
    move-object v0, v2

    .line 1081
    goto/16 :goto_18

    .line 1084
    :cond_ad
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 1086
    check-cast p2, Lcom/sun/tools/javac/code/Type$ClassType;

    invoke-virtual {p0, p2, p1}, Lcom/sun/tools/javac/code/Types$9;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_18

    .line 1089
    :cond_bb
    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-eq v1, v5, :cond_c5

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_185

    .line 1091
    :cond_c5
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, p2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v7

    if-nez v7, :cond_e9

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 1092
    invoke-virtual {v1, p2}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v4, p1}, Lcom/sun/tools/javac/code/Types;->erasure(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v1

    if-eqz v1, :cond_109

    .line 1093
    :cond_e9
    if-nez v7, :cond_18b

    iget v1, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0xb

    if-ne v1, v3, :cond_18b

    .line 1094
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 1095
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    :cond_106
    move-object v0, v2

    .line 1096
    goto/16 :goto_18

    .line 1146
    :cond_109
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    if-ne v0, v5, :cond_185

    .line 1147
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_146

    .line 1148
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-nez v0, :cond_139

    .line 1149
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    invoke-static {v1, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->access$400(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    .line 1148
    :goto_133
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_18

    .line 1150
    :cond_139
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    invoke-static {v1, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->access$500(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_133

    .line 1151
    :cond_146
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-eqz v0, :cond_17f

    .line 1152
    iget-object v0, p2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-nez v0, :cond_172

    .line 1153
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    invoke-static {v1, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->access$400(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    .line 1152
    :goto_16c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_18

    .line 1154
    :cond_172
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    invoke-static {v1, p1, p2, v0}, Lcom/sun/tools/javac/code/Types;->access$500(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    goto :goto_16c

    .line 1157
    :cond_17f
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_18

    .line 1161
    :cond_185
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_18

    .line 1097
    :cond_18b
    invoke-virtual {p2}, Lcom/sun/tools/javac/code/Type;->isRaw()Z

    move-result v1

    if-eqz v1, :cond_194

    move-object v0, v2

    .line 1098
    goto/16 :goto_18

    .line 1099
    :cond_194
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->isRaw()Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 1100
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->isUnbounded(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1af

    .line 1101
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    :cond_1af
    move-object v0, v2

    .line 1102
    goto/16 :goto_18

    .line 1105
    :cond_1b2
    if-eqz v7, :cond_28c

    move-object v6, p1

    .line 1106
    :goto_1b5
    if-eqz v7, :cond_1b8

    move-object p1, p2

    .line 1107
    :cond_1b8
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v1, v6, v11, v10}, Lcom/sun/tools/javac/code/Types;->access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1111
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v3, v6, v10, v10}, Lcom/sun/tools/javac/code/Types;->access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 1112
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v3, p1, v11, v10}, Lcom/sun/tools/javac/code/Types;->access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1113
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v3, p1, v10, v10}, Lcom/sun/tools/javac/code/Types;->access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1114
    iget-object v8, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v9, v4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v8, v3, v9}, Lcom/sun/tools/javac/code/Types;->asSub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1115
    if-nez v3, :cond_28f

    move-object v5, v0

    .line 1116
    :goto_1db
    if-nez v5, :cond_2d0

    .line 1117
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v1, v6, v11, v11}, Lcom/sun/tools/javac/code/Types;->access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    .line 1119
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v3, v6, v10, v11}, Lcom/sun/tools/javac/code/Types;->access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v4

    .line 1120
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v3, p1, v11, v11}, Lcom/sun/tools/javac/code/Types;->access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    .line 1121
    iget-object v3, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-static {v3, p1, v10, v11}, Lcom/sun/tools/javac/code/Types;->access$200(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;ZZ)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1122
    iget-object v8, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v9, v4, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v8, v3, v9}, Lcom/sun/tools/javac/code/Types;->asSub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v3

    .line 1123
    if-nez v3, :cond_299

    .line 1116
    :goto_1ff
    if-eqz v0, :cond_2aa

    .line 1126
    iget-object v5, v6, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v8, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-ne v5, v8, :cond_20d

    iget-object v5, v6, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v8, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eq v5, v8, :cond_232

    .line 1127
    :cond_20d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v6, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " != "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " != "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    .line 1129
    :cond_232
    iget-object v5, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/sun/tools/javac/code/Types;->disjointTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v5

    if-nez v5, :cond_2aa

    iget-object v5, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 1130
    invoke-virtual {v1}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v5, v1, v8}, Lcom/sun/tools/javac/code/Types;->disjointTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v1

    if-nez v1, :cond_2aa

    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 1131
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/sun/tools/javac/code/Types;->disjointTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_2aa

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    .line 1132
    invoke-virtual {v4}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sun/tools/javac/code/Type;->allparams()Lcom/sun/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sun/tools/javac/code/Types;->disjointTypes(Lcom/sun/tools/javac/util/List;Lcom/sun/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_2aa

    .line 1133
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    if-eqz v7, :cond_2a3

    invoke-static {v0, v6, p1}, Lcom/sun/tools/javac/code/Types;->access$300(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 1135
    :goto_27c
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    :cond_289
    move-object v0, v2

    .line 1136
    goto/16 :goto_18

    :cond_28c
    move-object v6, p2

    .line 1105
    goto/16 :goto_1b5

    .line 1115
    :cond_28f
    iget-object v8, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v9, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v8, v5, v9}, Lcom/sun/tools/javac/code/Types;->asSub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v5

    goto/16 :goto_1db

    .line 1123
    :cond_299
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v8, v1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v5, v8}, Lcom/sun/tools/javac/code/Types;->asSub(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)Lcom/sun/tools/javac/code/Type;

    move-result-object v0

    goto/16 :goto_1ff

    .line 1134
    :cond_2a3
    invoke-static {v0, p1, v6}, Lcom/sun/tools/javac/code/Types;->access$300(Lcom/sun/tools/javac/code/Types;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_289

    goto :goto_27c

    .line 1125
    :cond_2aa
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/code/Types;->isReifiable(Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_2be

    .line 1140
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, v6, p1}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_18

    .line 1142
    :cond_2be
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v1, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v1, v6, p1, v0}, Lcom/sun/tools/javac/code/Types;->isSubtypeUnchecked(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_18

    :cond_2d0
    move-object v0, v5

    goto/16 :goto_1ff
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1030
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$9;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 4

    .line 1213
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1030
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$9;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1033
    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x13

    if-ne v2, v3, :cond_d

    .line 1034
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1045
    :goto_c
    return-object v0

    .line 1036
    :cond_d
    iget v2, p1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3a

    packed-switch v2, :pswitch_data_46

    .line 1047
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1043
    :pswitch_1c  #0x9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 1041
    :pswitch_21  #0x8
    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2c

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_2c
    move v0, v1

    goto :goto_27

    .line 1039
    :pswitch_2e  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    iget v2, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/4 v3, 0x7

    if-gt v2, v3, :cond_38

    :goto_33
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    :cond_38
    move v0, v1

    goto :goto_33

    .line 1045
    :cond_3a
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 1036
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_2e  #00000002
        :pswitch_2e  #00000003
        :pswitch_2e  #00000004
        :pswitch_2e  #00000005
        :pswitch_2e  #00000006
        :pswitch_2e  #00000007
        :pswitch_21  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1030
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$9;->visitType(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 7

    const/4 v3, 0x1

    .line 1193
    iget v0, p2, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_29

    const/16 v1, 0x11

    if-eq v0, v1, :cond_24

    const/16 v1, 0x13

    if-eq v0, v1, :cond_24

    .line 1207
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v1, v2, p2, v0}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_23
    return-object v0

    .line 1196
    :cond_24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_23

    .line 1198
    :cond_29
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v0, p1, p2}, Lcom/sun/tools/javac/code/Types;->isSubtype(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1199
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_23

    .line 1200
    :cond_36
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$TypeVar;->bound:Lcom/sun/tools/javac/code/Type;

    sget-object v2, Lcom/sun/tools/javac/util/Warner;->noWarnings:Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v0, v1, p2, v2}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1201
    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    sget-object v1, Lcom/sun/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lcom/sun/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lcom/sun/tools/javac/util/Warner;->warn(Lcom/sun/tools/javac/code/Lint$LintCategory;)V

    .line 1202
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_23

    .line 1204
    :cond_54
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_23
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1030
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$9;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;
    .registers 6

    .line 1053
    iget-object v1, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lcom/sun/tools/javac/code/Types;->upperBound(Lcom/sun/tools/javac/code/Type;)Lcom/sun/tools/javac/code/Type;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/tools/javac/code/Types$9;->this$0:Lcom/sun/tools/javac/code/Types;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Types;->warnStack:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/util/Warner;

    invoke-virtual {v1, v2, p2, v0}, Lcom/sun/tools/javac/code/Types;->isCastable(Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/util/Warner;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1030
    check-cast p2, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Types$9;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Lcom/sun/tools/javac/code/Type;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
