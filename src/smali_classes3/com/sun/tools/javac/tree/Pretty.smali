.class public Lcom/sun/tools/javac/tree/Pretty;
.super Lcom/sun/tools/javac/tree/JCTree$Visitor;
.source "Pretty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;,
        Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;
    }
.end annotation


# instance fields
.field docComments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enclClassName:Lcom/sun/tools/javac/util/Name;

.field lineSep:Ljava/lang/String;

.field lmargin:I

.field out:Ljava/io/Writer;

.field prec:I

.field private final sourceOutput:Z

.field public width:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Z)V
    .registers 4

    .line 49
    invoke-direct {p0}, Lcom/sun/tools/javac/tree/JCTree$Visitor;-><init>()V

    .line 67
    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/tools/javac/tree/Pretty;->width:I

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/tools/javac/tree/Pretty;->lmargin:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->docComments:Ljava/util/Map;

    .line 130
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->lineSep:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/sun/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    .line 51
    iput-boolean p2, p0, Lcom/sun/tools/javac/tree/Pretty;->sourceOutput:Z

    .line 52
    return-void
.end method

.method static lineEndPos(Ljava/lang/String;I)I
    .registers 3

    .line 252
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 253
    if-gez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 254
    :cond_0
    return v0
.end method

.method private printBaseElementType(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1147
    invoke-static {p1}, Lcom/sun/tools/javac/tree/TreeInfo;->innermostType(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1148
    return-void
.end method

.method private printBrackets(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1154
    :goto_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 1155
    const-string v1, "[]"

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1156
    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    .line 1159
    return-void

    .line 1157
    :cond_0
    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-object p1, v0

    goto :goto_0
.end method


# virtual methods
.method align()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/tools/javac/tree/Pretty;->lmargin:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method close(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method indent()V
    .registers 3

    .line 91
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->lmargin:I

    iget v1, p0, Lcom/sun/tools/javac/tree/Pretty;->width:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/tools/javac/tree/Pretty;->lmargin:I

    .line 92
    return-void
.end method

.method isEnumerator(Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 6

    .line 313
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsed(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Z
    .registers 4

    .line 368
    new-instance v0, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;

    invoke-direct {v0, p0, p1}, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;-><init>(Lcom/sun/tools/javac/tree/Pretty;Lcom/sun/tools/javac/code/Symbol;)V

    .line 369
    invoke-virtual {v0, p2}, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;->scan(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 370
    iget-boolean v0, v0, Lcom/sun/tools/javac/tree/Pretty$1UsedVisitor;->result:Z

    return v0
.end method

.method open(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public operatorName(I)Ljava/lang/String;
    .registers 3

    .line 931
    packed-switch p1, :pswitch_data_0

    .line 960
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 959
    :pswitch_0
    const-string v0, "%"

    :goto_0
    return-object v0

    .line 958
    :pswitch_1
    const-string v0, "/"

    goto :goto_0

    .line 957
    :pswitch_2
    const-string v0, "*"

    goto :goto_0

    .line 956
    :pswitch_3
    const-string v0, "-"

    goto :goto_0

    .line 955
    :pswitch_4
    const-string v0, "+"

    goto :goto_0

    .line 954
    :pswitch_5
    const-string v0, ">>>"

    goto :goto_0

    .line 953
    :pswitch_6
    const-string v0, ">>"

    goto :goto_0

    .line 952
    :pswitch_7
    const-string v0, "<<"

    goto :goto_0

    .line 948
    :pswitch_8
    const-string v0, ">="

    goto :goto_0

    .line 947
    :pswitch_9
    const-string v0, "<="

    goto :goto_0

    .line 946
    :pswitch_a
    const-string v0, ">"

    goto :goto_0

    .line 945
    :pswitch_b
    const-string v0, "<"

    goto :goto_0

    .line 944
    :pswitch_c
    const-string v0, "!="

    goto :goto_0

    .line 943
    :pswitch_d
    const-string v0, "=="

    goto :goto_0

    .line 951
    :pswitch_e
    const-string v0, "&"

    goto :goto_0

    .line 950
    :pswitch_f
    const-string v0, "^"

    goto :goto_0

    .line 949
    :pswitch_10
    const-string v0, "|"

    goto :goto_0

    .line 942
    :pswitch_11
    const-string v0, "&&"

    goto :goto_0

    .line 941
    :pswitch_12
    const-string v0, "||"

    goto :goto_0

    .line 940
    :pswitch_13
    const-string v0, "<*nullchk*>"

    goto :goto_0

    .line 939
    :pswitch_14
    const-string v0, "--"

    goto :goto_0

    .line 938
    :pswitch_15
    const-string v0, "++"

    goto :goto_0

    .line 937
    :pswitch_16
    const-string v0, "--"

    goto :goto_0

    .line 936
    :pswitch_17
    const-string v0, "++"

    goto :goto_0

    .line 935
    :pswitch_18
    const-string v0, "~"

    goto :goto_0

    .line 934
    :pswitch_19
    const-string v0, "!"

    goto :goto_0

    .line 933
    :pswitch_1a
    const-string v0, "-"

    goto :goto_0

    .line 932
    :pswitch_1b
    const-string v0, "+"

    goto :goto_0

    .line 931
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public print(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/tools/javac/util/Convert;->escapeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public printAnnotations(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 222
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 223
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 220
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 225
    :cond_0
    return-void
.end method

.method public printBlock(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 272
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->indent()V

    .line 273
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/Pretty;->printStats(Lcom/sun/tools/javac/util/List;)V

    .line 274
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->undent()V

    .line 275
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 276
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public printDocComment(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    .line 231
    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->docComments:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 232
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    if-eqz v0, :cond_2

    .line 234
    const-string v2, "/**"

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 236
    invoke-static {v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->lineEndPos(Ljava/lang/String;I)I

    move-result v2

    .line 237
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 239
    const-string v3, " *"

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    const-string v3, " "

    invoke-virtual {p0, v3}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 241
    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 242
    add-int/lit8 v1, v2, 0x1

    .line 243
    invoke-static {v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->lineEndPos(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    const-string v0, " */"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 246
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 249
    :cond_2
    return-void
.end method

.method public printEnumBody(Lcom/sun/tools/javac/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 283
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 284
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->indent()V

    .line 285
    const/4 v0, 0x1

    move-object v1, p1

    move v2, v0

    .line 286
    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->isEnumerator(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    if-nez v2, :cond_0

    .line 289
    const-string v0, ","

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 293
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 294
    const/4 v2, 0x0

    .line 286
    :cond_1
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_0

    .line 297
    :cond_2
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 299
    :goto_1
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->isEnumerator(Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 302
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 303
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 299
    :cond_3
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_1

    .line 306
    :cond_4
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->undent()V

    .line 307
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 308
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 309
    return-void
.end method

.method public printExpr(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 173
    return-void
.end method

.method public printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget v1, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    .line 154
    :try_start_0
    iput p2, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    .line 155
    if-nez p1, :cond_0

    const-string v0, "/*missing*/"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    iput v1, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    .line 165
    return-void

    .line 157
    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/sun/tools/javac/tree/JCTree;->accept(Lcom/sun/tools/javac/tree/JCTree$Visitor;)V
    :try_end_1
    .catch Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 162
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    iput v1, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    .line 165
    throw v0
.end method

.method public printExprs(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    const-string v0, ", "

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public printExprs(Lcom/sun/tools/javac/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">(",
            "Lcom/sun/tools/javac/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 187
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 189
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 187
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method public printFlags(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    .line 213
    const-wide/16 v0, 0x1000

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "/*synthetic*/ "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 214
    :cond_0
    invoke-static {p1, p2}, Lcom/sun/tools/javac/tree/TreeInfo;->flagNames(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 215
    const-wide/16 v0, 0xfff

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 216
    :cond_1
    const-wide/16 v0, 0x2000

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-string v0, "@"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 217
    :cond_2
    return-void
.end method

.method public printStat(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 179
    return-void
.end method

.method public printStats(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<+",
            "Lcom/sun/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    :goto_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 205
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 206
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 203
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method public printTypeParameters(Lcom/sun/tools/javac/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 263
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 265
    :cond_0
    return-void
.end method

.method public printUnit(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x2

    .line 324
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Ljava/util/Map;

    iput-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->docComments:Ljava/util/Map;

    .line 325
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/Pretty;->printDocComment(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 326
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "package "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->pid:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 329
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 332
    :cond_0
    const/4 v0, 0x1

    .line 333
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lcom/sun/tools/javac/util/List;

    move v1, v0

    .line 334
    :goto_0
    invoke-virtual {v2}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_1

    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 336
    :cond_1
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 337
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCImport;

    .line 338
    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCImport;->qualid:Lcom/sun/tools/javac/tree/JCTree;

    invoke-static {v3}, Lcom/sun/tools/javac/tree/TreeInfo;->name(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/util/Name;

    move-result-object v3

    .line 339
    iget-object v4, v3, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v4, v4, Lcom/sun/tools/javac/util/Names;->asterisk:Lcom/sun/tools/javac/util/Name;

    if-eq v3, v4, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCImport;->qualid:Lcom/sun/tools/javac/tree/JCTree;

    .line 341
    invoke-static {v3}, Lcom/sun/tools/javac/tree/TreeInfo;->symbol(Lcom/sun/tools/javac/tree/JCTree;)Lcom/sun/tools/javac/code/Symbol;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/sun/tools/javac/tree/Pretty;->isUsed(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/tree/JCTree;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 342
    :cond_2
    if-eqz v1, :cond_3

    .line 343
    const/4 v1, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 346
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    :cond_4
    move v0, v1

    .line 335
    :goto_1
    iget-object v2, v2, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move v1, v0

    goto :goto_0

    .line 349
    :cond_5
    iget-object v0, v2, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    move v0, v1

    goto :goto_1

    .line 352
    :cond_6
    if-eqz p2, :cond_7

    .line 353
    invoke-virtual {p0, p2}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 354
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 356
    :cond_7
    return-void
.end method

.method public println()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/sun/tools/javac/tree/Pretty;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method undent()V
    .registers 3

    .line 97
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->lmargin:I

    iget v1, p0, Lcom/sun/tools/javac/tree/Pretty;->width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/tools/javac/tree/Pretty;->lmargin:I

    .line 98
    return-void
.end method

.method public visitAnnotation(Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;)V
    .registers 4

    .line 1239
    :try_start_0
    const-string v0, "@"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1240
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->annotationType:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1241
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1242
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAnnotation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 1243
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    return-void

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitApply(Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .registers 5

    .line 825
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 826
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 827
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;

    .line 828
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 829
    const-string v1, ".<"

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 830
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 841
    :goto_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 842
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 843
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 846
    return-void

    .line 833
    :cond_0
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 834
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 835
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 836
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 839
    :cond_1
    :try_start_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public visitAssert(Lcom/sun/tools/javac/tree/JCTree$JCAssert;)V
    .registers 4

    .line 811
    :try_start_0
    const-string v0, "assert "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 812
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 813
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 814
    const-string v0, " : "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 815
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssert;->detail:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 817
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 820
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitAssign(Lcom/sun/tools/javac/tree/JCTree$JCAssign;)V
    .registers 4

    .line 920
    :try_start_0
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->open(II)V

    .line 921
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 922
    const-string v0, " = "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 923
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssign;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 924
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    return-void

    .line 925
    :catch_0
    move-exception v0

    .line 926
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitAssignop(Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;)V
    .registers 4

    .line 966
    :try_start_0
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->open(II)V

    .line 967
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->getTag()I

    move-result v1

    add-int/lit8 v1, v1, -0x11

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->operatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 969
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 970
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitBinary(Lcom/sun/tools/javac/tree/JCTree$JCBinary;)V
    .registers 6

    .line 996
    :try_start_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->opPrec(I)I

    move-result v0

    .line 997
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->getTag()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->operatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 998
    iget v2, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/tree/Pretty;->open(II)V

    .line 999
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->lhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1001
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBinary;->rhs:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1002
    iget v1, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitBlock(Lcom/sun/tools/javac/tree/JCTree$JCBlock;)V
    .registers 4

    .line 535
    :try_start_0
    iget-wide v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->flags:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printFlags(J)V

    .line 536
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBlock;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printBlock(Lcom/sun/tools/javac/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitBreak(Lcom/sun/tools/javac/tree/JCTree$JCBreak;)V
    .registers 4

    .line 768
    :try_start_0
    const-string v0, "break"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 769
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->label:Lcom/sun/tools/javac/util/Name;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCBreak;->label:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 770
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    return-void

    .line 771
    :catch_0
    move-exception v0

    .line 772
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitCase(Lcom/sun/tools/javac/tree/JCTree$JCCase;)V
    .registers 4

    .line 648
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_0

    .line 649
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 654
    :goto_0
    const-string v0, ": "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 655
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 656
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->indent()V

    .line 657
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->stats:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStats(Lcom/sun/tools/javac/util/List;)V

    .line 658
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->undent()V

    .line 659
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 662
    return-void

    .line 651
    :cond_0
    const-string v0, "case "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 652
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCase;->pat:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitCatch(Lcom/sun/tools/javac/tree/JCTree$JCCatch;)V
    .registers 4

    .line 713
    :try_start_0
    const-string v0, " catch ("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 714
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->param:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 715
    const-string v0, ") "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 716
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCCatch;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    return-void

    .line 717
    :catch_0
    move-exception v0

    .line 718
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitClassDef(Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    .registers 12

    const-wide/16 v8, 0x4000

    const-wide/16 v6, 0x0

    .line 399
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 400
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/Pretty;->printDocComment(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 401
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printAnnotations(Lcom/sun/tools/javac/util/List;)V

    .line 402
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, -0x201

    and-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printFlags(J)V

    .line 403
    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    .line 404
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    iput-object v1, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    .line 405
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x200

    and-long/2addr v2, v4

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 407
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printTypeParameters(Lcom/sun/tools/javac/util/List;)V

    .line 408
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    const-string v1, " extends "

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 410
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 427
    :cond_0
    :goto_0
    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 428
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v2, v8

    cmp-long v1, v2, v6

    if-eqz v1, :cond_4

    .line 429
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printEnumBody(Lcom/sun/tools/javac/util/List;)V

    .line 433
    :goto_1
    iput-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    .line 436
    return-void

    .line 413
    :cond_1
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v2, v8

    cmp-long v1, v2, v6

    if-eqz v1, :cond_3

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 417
    :goto_2
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printTypeParameters(Lcom/sun/tools/javac/util/List;)V

    .line 418
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_2

    .line 419
    const-string v1, " extends "

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 420
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->extending:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 422
    :cond_2
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    const-string v1, " implements "

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 424
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 416
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_2

    .line 431
    :cond_4
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printBlock(Lcom/sun/tools/javac/util/List;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public visitConditional(Lcom/sun/tools/javac/tree/JCTree$JCConditional;)V
    .registers 4

    .line 724
    :try_start_0
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->open(II)V

    .line 725
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 726
    const-string v0, " ? "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 727
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->truepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 728
    const-string v0, " : "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 729
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCConditional;->falsepart:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 730
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    return-void

    .line 731
    :catch_0
    move-exception v0

    .line 732
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitContinue(Lcom/sun/tools/javac/tree/JCTree$JCContinue;)V
    .registers 4

    .line 778
    :try_start_0
    const-string v0, "continue"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 779
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->label:Lcom/sun/tools/javac/util/Name;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCContinue;->label:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 780
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    return-void

    .line 781
    :catch_0
    move-exception v0

    .line 782
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitDoLoop(Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .registers 4

    .line 544
    :try_start_0
    const-string v0, "do "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 545
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 546
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 547
    const-string v0, " while "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 548
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 549
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 555
    :goto_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 558
    return-void

    .line 551
    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 552
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 553
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitErroneous(Lcom/sun/tools/javac/tree/JCTree$JCErroneous;)V
    .registers 4

    .line 1214
    :try_start_0
    const-string v0, "(ERROR)"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    return-void

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitExec(Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;)V
    .registers 4

    .line 759
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 760
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :cond_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitForLoop(Lcom/sun/tools/javac/tree/JCTree$JCForLoop;)V
    .registers 6

    .line 580
    :try_start_0
    const-string v0, "for ("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 581
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCStatement;->getTag()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 583
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 584
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    .line 586
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 587
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 584
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->init:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 593
    :cond_1
    const-string v0, "; "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 594
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 595
    :cond_2
    const-string v0, "; "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 596
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->step:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 597
    const-string v0, ") "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 598
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitForeachLoop(Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .registers 4

    .line 606
    :try_start_0
    const-string v0, "for ("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 607
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 608
    const-string v0, " : "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 609
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 610
    const-string v0, ") "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 611
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitIdent(Lcom/sun/tools/javac/tree/JCTree$JCIdent;)V
    .registers 4

    .line 1055
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIdent;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    return-void

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitIf(Lcom/sun/tools/javac/tree/JCTree$JCIf;)V
    .registers 4

    .line 738
    :try_start_0
    const-string v0, "if "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 739
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_1

    .line 740
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 746
    :goto_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 747
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->thenpart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 748
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    if-eqz v0, :cond_0

    .line 749
    const-string v0, " else "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 750
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->elsepart:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 754
    :cond_0
    return-void

    .line 742
    :cond_1
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 743
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCIf;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 744
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitImport(Lcom/sun/tools/javac/tree/JCTree$JCImport;)V
    .registers 4

    .line 387
    :try_start_0
    const-string v0, "import "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 388
    iget-boolean v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz v0, :cond_0

    const-string v0, "static "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 389
    :cond_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCImport;->qualid:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 390
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 391
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitIndexed(Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;)V
    .registers 4

    .line 1035
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1036
    const-string v0, "["

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1037
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCArrayAccess;->index:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1038
    const-string v0, "]"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    return-void

    .line 1039
    :catch_0
    move-exception v0

    .line 1040
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitLabelled(Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .registers 4

    .line 619
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->label:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 620
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitLetExpr(Lcom/sun/tools/javac/tree/JCTree$LetExpr;)V
    .registers 4

    .line 1222
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(let "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$LetExpr;->expr:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitLiteral(Lcom/sun/tools/javac/tree/JCTree$JCLiteral;)V
    .registers 4

    .line 1063
    :try_start_0
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->typetag:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/tools/javac/util/Convert;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1081
    :goto_0
    return-void

    .line 1083
    :pswitch_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "true"

    :goto_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1083
    :cond_0
    const-string v0, "false"

    goto :goto_1

    .line 1074
    :pswitch_1
    :try_start_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1071
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1068
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1065
    :pswitch_4
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1086
    :cond_1
    const-string v0, "null"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1077
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCLiteral;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    .line 1079
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-char v0, v0

    .line 1078
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/tools/javac/util/Convert;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1063
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitMethodDef(Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;)V
    .registers 4

    .line 442
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sun/tools/javac/tree/Pretty;->sourceOutput:Z

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 446
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/Pretty;->printDocComment(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 447
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 448
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printTypeParameters(Lcom/sun/tools/javac/util/List;)V

    .line 449
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_4

    .line 450
    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 455
    :goto_2
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 456
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->params:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 457
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 458
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    const-string v0, " throws "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 460
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 462
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_2

    .line 463
    const-string v0, " default "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 464
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->defaultValue:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 466
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_5

    .line 467
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 468
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 450
    :cond_3
    :try_start_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    goto :goto_1

    .line 452
    :cond_4
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCMethodDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_2

    .line 470
    :cond_5
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public visitModifiers(Lcom/sun/tools/javac/tree/JCTree$JCModifiers;)V
    .registers 4

    .line 1230
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->annotations:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printAnnotations(Lcom/sun/tools/javac/util/List;)V

    .line 1231
    iget-wide v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printFlags(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1234
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitNewArray(Lcom/sun/tools/javac/tree/JCTree$JCNewArray;)V
    .registers 6

    .line 882
    :try_start_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_2

    .line 883
    const-string v1, "new "

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 884
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    .line 885
    invoke-virtual {v2}, Lcom/sun/tools/javac/tree/JCTree;->getTag()I

    move-result v1

    const/16 v3, 0x26

    if-ne v1, v3, :cond_0

    .line 886
    move-object v0, v2

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printBaseElementType(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 889
    :goto_0
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->dims:Lcom/sun/tools/javac/util/List;

    move-object v3, v1

    :goto_1
    invoke-virtual {v3}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 890
    const-string v1, "["

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 891
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 892
    const-string v1, "]"

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 889
    iget-object v1, v3, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v3, v1

    goto :goto_1

    .line 888
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v1

    .line 904
    new-instance v2, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v2, v1}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 894
    :cond_1
    :try_start_1
    instance-of v1, v2, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    if-eqz v1, :cond_2

    .line 895
    check-cast v2, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    invoke-direct {p0, v2}, Lcom/sun/tools/javac/tree/Pretty;->printBrackets(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V

    .line 897
    :cond_2
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_4

    .line 898
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_3

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 899
    :cond_3
    const-string v1, "{"

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 900
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewArray;->elems:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 901
    const-string v1, "}"

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 905
    :cond_4
    return-void
.end method

.method public visitNewClass(Lcom/sun/tools/javac/tree/JCTree$JCNewClass;)V
    .registers 8

    .line 851
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->encl:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 853
    const-string v0, "."

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 855
    :cond_0
    const-string v0, "new "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 856
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 857
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 858
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->typeargs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 859
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 861
    :cond_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 862
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 863
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 864
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 865
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_3

    .line 866
    iget-object v1, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    .line 867
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->name:Lcom/sun/tools/javac/util/Name;

    .line 870
    :goto_0
    iput-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    .line 871
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x4000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const-string v0, "/*enum*/"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 872
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printBlock(Lcom/sun/tools/javac/util/List;)V

    .line 873
    iput-object v1, p0, Lcom/sun/tools/javac/tree/Pretty;->enclClassName:Lcom/sun/tools/javac/util/Name;

    .line 877
    :cond_3
    return-void

    .line 869
    :cond_4
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v2, v2, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v2, v2, Lcom/sun/tools/javac/util/Names;->empty:Lcom/sun/tools/javac/util/Name;

    if-eq v0, v2, :cond_5

    .line 870
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->type:Lcom/sun/tools/javac/code/Type;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 875
    :catch_0
    move-exception v0

    .line 876
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitParens(Lcom/sun/tools/javac/tree/JCTree$JCParens;)V
    .registers 4

    .line 910
    :try_start_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 911
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCParens;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 912
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 915
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitReturn(Lcom/sun/tools/javac/tree/JCTree$JCReturn;)V
    .registers 4

    .line 788
    :try_start_0
    const-string v0, "return"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 789
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    .line 790
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 791
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCReturn;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 793
    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitSelect(Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;)V
    .registers 4

    .line 1046
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCFieldAccess;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitSkip(Lcom/sun/tools/javac/tree/JCTree$JCSkip;)V
    .registers 4

    .line 527
    :try_start_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitSwitch(Lcom/sun/tools/javac/tree/JCTree$JCSwitch;)V
    .registers 4

    .line 628
    :try_start_0
    const-string v0, "switch "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 629
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 630
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 636
    :goto_0
    const-string v0, " {"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 637
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 638
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->cases:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStats(Lcom/sun/tools/javac/util/List;)V

    .line 639
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 640
    const-string v0, "}"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 643
    return-void

    .line 632
    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 633
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSwitch;->selector:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 634
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitSynchronized(Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;)V
    .registers 4

    .line 667
    :try_start_0
    const-string v0, "synchronized "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 668
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 669
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 675
    :goto_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 676
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 679
    return-void

    .line 671
    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 672
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCSynchronized;->lock:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 673
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    :catch_0
    move-exception v0

    .line 678
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitThrow(Lcom/sun/tools/javac/tree/JCTree$JCThrow;)V
    .registers 4

    .line 801
    :try_start_0
    const-string v0, "throw "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 802
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCThrow;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 803
    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTopLevel(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .registers 4

    .line 379
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/tools/javac/tree/Pretty;->printUnit(Lcom/sun/tools/javac/tree/JCTree$JCCompilationUnit;Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTree(Lcom/sun/tools/javac/tree/JCTree;)V
    .registers 4

    .line 1251
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1252
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    return-void

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTry(Lcom/sun/tools/javac/tree/JCTree$JCTry;)V
    .registers 5

    .line 684
    :try_start_0
    const-string v0, "try "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 685
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 687
    const/4 v0, 0x1

    .line 688
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->resources:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    .line 689
    if-nez v1, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    .line 691
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->indent()V

    .line 693
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 694
    const/4 v0, 0x0

    move v1, v0

    .line 695
    goto :goto_0

    .line 696
    :cond_1
    const-string v0, ") "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 698
    :cond_2
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->body:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 699
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->catchers:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 700
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 699
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_1

    .line 702
    :cond_3
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_4

    .line 703
    const-string v0, " finally "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 704
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTry;->finalizer:Lcom/sun/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :cond_4
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTypeApply(Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;)V
    .registers 4

    .line 1163
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1164
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1165
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;)V

    .line 1166
    const-string v0, ">"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTypeArray(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .registers 4

    .line 1138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/tree/Pretty;->printBaseElementType(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1139
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/tree/Pretty;->printBrackets(Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    return-void

    .line 1140
    :catch_0
    move-exception v0

    .line 1141
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTypeBoundKind(Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;)V
    .registers 4

    .line 1206
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lcom/sun/tools/javac/code/BoundKind;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    return-void

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTypeCast(Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;)V
    .registers 4

    .line 1010
    :try_start_0
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->open(II)V

    .line 1011
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1012
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 1013
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1014
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeCast;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1015
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/16 v1, 0xe

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTypeIdent(Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;)V
    .registers 4

    .line 1099
    :try_start_0
    iget v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCPrimitiveTypeTree;->typetag:I

    packed-switch v0, :pswitch_data_0

    .line 1128
    const-string v0, "error"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1133
    :goto_0
    return-void

    .line 1125
    :pswitch_0
    const-string v0, "void"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 1122
    :pswitch_1
    :try_start_1
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1119
    :pswitch_2
    const-string v0, "double"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1116
    :pswitch_3
    const-string v0, "float"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1113
    :pswitch_4
    const-string v0, "long"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1110
    :pswitch_5
    const-string v0, "int"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1107
    :pswitch_6
    const-string v0, "short"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1104
    :pswitch_7
    const-string v0, "char"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 1101
    :pswitch_8
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1099
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitTypeParameter(Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;)V
    .registers 4

    .line 1182
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1183
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    const-string v0, " extends "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1185
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeParameter;->bounds:Lcom/sun/tools/javac/util/List;

    const-string v1, " & "

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :cond_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTypeTest(Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;)V
    .registers 4

    .line 1023
    :try_start_0
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->open(II)V

    .line 1024
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1025
    const-string v0, " instanceof "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1026
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lcom/sun/tools/javac/tree/JCTree;

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 1027
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->close(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1029
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitTypeUnion(Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;)V
    .registers 4

    .line 1174
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lcom/sun/tools/javac/util/List;

    const-string v1, " | "

    invoke-virtual {p0, v0, v1}, Lcom/sun/tools/javac/tree/Pretty;->printExprs(Lcom/sun/tools/javac/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    return-void

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitUnary(Lcom/sun/tools/javac/tree/JCTree$JCUnary;)V
    .registers 6

    .line 978
    :try_start_0
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v0

    invoke-static {v0}, Lcom/sun/tools/javac/tree/TreeInfo;->opPrec(I)I

    move-result v0

    .line 979
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->operatorName(I)Ljava/lang/String;

    move-result-object v1

    .line 980
    iget v2, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/tree/Pretty;->open(II)V

    .line 981
    invoke-virtual {p1}, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->getTag()I

    move-result v2

    const/16 v3, 0x35

    if-gt v2, v3, :cond_0

    .line 982
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 983
    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 988
    :goto_0
    iget v1, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    invoke-virtual {p0, v1, v0}, Lcom/sun/tools/javac/tree/Pretty;->close(II)V

    .line 991
    return-void

    .line 985
    :cond_0
    iget-object v2, p1, Lcom/sun/tools/javac/tree/JCTree$JCUnary;->arg:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;I)V

    .line 986
    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitVarDef(Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;)V
    .registers 8

    const-wide/16 v4, 0x0

    .line 479
    :try_start_0
    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->docComments:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/tools/javac/tree/Pretty;->docComments:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->println()V

    invoke-virtual {p0}, Lcom/sun/tools/javac/tree/Pretty;->align()V

    .line 482
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/tools/javac/tree/Pretty;->printDocComment(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 483
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 484
    const-string v0, "/*public static final*/ "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 485
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 486
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_2

    .line 487
    iget-boolean v0, p0, Lcom/sun/tools/javac/tree/Pretty;->sourceOutput:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_3

    .line 488
    const-string v0, " /*enum*/ "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;

    .line 490
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    const-string v1, "("

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 492
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->args:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 493
    const-string v1, ")"

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 495
    :cond_1
    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    if-eqz v1, :cond_2

    .line 496
    const-string v1, " "

    invoke-virtual {p0, v1}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 497
    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCNewClass;->def:Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCClassDecl;->defs:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printBlock(Lcom/sun/tools/javac/util/List;)V

    .line 522
    :cond_2
    :goto_0
    return-void

    .line 501
    :cond_3
    const-string v0, " /* = "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 502
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 503
    const-string v0, " */"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 506
    :cond_4
    :try_start_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 507
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lcom/sun/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v2, 0x400000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 508
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 514
    :goto_1
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_5

    .line 515
    const-string v0, " = "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 516
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->init:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 518
    :cond_5
    iget v0, p0, Lcom/sun/tools/javac/tree/Pretty;->prec:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, ";"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 511
    :cond_6
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/tree/JCTree$JCVariableDecl;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public visitWhileLoop(Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;)V
    .registers 4

    .line 563
    :try_start_0
    const-string v0, "while "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 564
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lcom/sun/tools/javac/tree/JCTree$JCExpression;->getTag()I

    move-result v0

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 571
    :goto_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 572
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->body:Lcom/sun/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printStat(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 575
    return-void

    .line 567
    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 568
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lcom/sun/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V

    .line 569
    const-string v0, ")"

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    .line 574
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public visitWildcard(Lcom/sun/tools/javac/tree/JCTree$JCWildcard;)V
    .registers 4

    .line 1195
    :try_start_0
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->kind:Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->print(Ljava/lang/Object;)V

    .line 1196
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->kind:Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v0, v0, Lcom/sun/tools/javac/tree/JCTree$TypeBoundKind;->kind:Lcom/sun/tools/javac/code/BoundKind;

    sget-object v1, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    if-eq v0, v1, :cond_0

    .line 1197
    iget-object v0, p1, Lcom/sun/tools/javac/tree/JCTree$JCWildcard;->inner:Lcom/sun/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lcom/sun/tools/javac/tree/Pretty;->printExpr(Lcom/sun/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :cond_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    .line 1199
    new-instance v1, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;

    invoke-direct {v1, v0}, Lcom/sun/tools/javac/tree/Pretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
