.class public abstract Lcom/sun/tools/javac/code/Printer;
.super Ljava/lang/Object;
.source "Printer.java"

# interfaces
.implements Lcom/sun/tools/javac/code/Type$Visitor;
.implements Lcom/sun/tools/javac/code/Symbol$Visitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sun/tools/javac/code/Type$Visitor",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Locale;",
        ">;",
        "Lcom/sun/tools/javac/code/Symbol$Visitor",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# static fields
.field static final PRIME:I = 0x3e5


# instance fields
.field seenCaptured:Lcom/sun/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/sun/tools/javac/util/List;->nil()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Printer;->seenCaptured:Lcom/sun/tools/javac/util/List;

    return-void
.end method

.method public static createStandardPrinter(Lcom/sun/tools/javac/api/Messages;)Lcom/sun/tools/javac/code/Printer;
    .registers 2

    .line 98
    new-instance v0, Lcom/sun/tools/javac/code/Printer$1;

    invoke-direct {v0, p0}, Lcom/sun/tools/javac/code/Printer$1;-><init>(Lcom/sun/tools/javac/api/Messages;)V

    return-object v0
.end method


# virtual methods
.method protected abstract capturedVarId(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method protected className(Lcom/sun/tools/javac/code/Type$ClassType;ZLjava/util/Locale;)Ljava/lang/String;
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 265
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    .line 266
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->length()I

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->flags()J

    move-result-wide v2

    const-wide/32 v4, 0x1000000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_47

    .line 267
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 268
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    :goto_28
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 269
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    iget-object v0, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    move-object v1, v0

    goto :goto_28

    .line 272
    :cond_42
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    :goto_46
    return-object v0

    .line 273
    :cond_47
    iget-object v1, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/Name;->length()I

    move-result v1

    if-nez v1, :cond_91

    .line 275
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->type:Lcom/sun/tools/javac/code/Type;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ClassType;

    .line 276
    if-nez v0, :cond_63

    .line 277
    const-string v0, "compiler.misc.anonymous.class"

    new-array v1, v7, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v6

    invoke-virtual {p0, p3, v0, v1}, Lcom/sun/tools/javac/code/Printer;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 278
    :cond_63
    iget-object v1, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 279
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->interfaces_field:Lcom/sun/tools/javac/util/List;

    iget-object v0, v0, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 280
    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v1, "compiler.misc.anonymous.class"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, p3, v1, v2}, Lcom/sun/tools/javac/code/Printer;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 282
    :cond_80
    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ClassType;->supertype_field:Lcom/sun/tools/javac/code/Type;

    .line 283
    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 282
    const-string v1, "compiler.misc.anonymous.class"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, p3, v1, v2}, Lcom/sun/tools/javac/code/Printer;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 286
    :cond_91
    if-eqz p2, :cond_9c

    .line 287
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 289
    :cond_9c
    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46
.end method

.method protected varargs abstract localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.end method

.method protected printMethodArgs(Lcom/sun/tools/javac/util/List;ZLjava/util/Locale;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 303
    if-nez p2, :cond_7

    .line 304
    invoke-virtual {p0, p1, p3}, Lcom/sun/tools/javac/code/Printer;->visitTypes(Lcom/sun/tools/javac/util/List;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :goto_6
    return-object v0

    .line 306
    :cond_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    :goto_c
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 308
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    iget-object p1, p1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    .line 310
    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 312
    :cond_27
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    iget v0, v0, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_48

    .line 313
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type$ArrayType;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :goto_43
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 316
    :cond_48
    iget-object v0, p1, Lcom/sun/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p3}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_43
.end method

.method public visit(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 159
    invoke-virtual {p1, p0, p2}, Lcom/sun/tools/javac/code/Symbol;->accept(Lcom/sun/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 148
    invoke-virtual {p1, p0, p2}, Lcom/sun/tools/javac/code/Type;->accept(Lcom/sun/tools/javac/code/Type$Visitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType(Lcom/sun/tools/javac/code/Type$ArrayType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ArrayType;->elemtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitCapturedType(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    iget-object v0, p0, Lcom/sun/tools/javac/code/Printer;->seenCaptured:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->capturedVarId(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "compiler.misc.type.captureof.1"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, p2, v1, v2}, Lcom/sun/tools/javac/code/Printer;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :goto_18
    return-object v0

    .line 169
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/sun/tools/javac/code/Printer;->seenCaptured:Lcom/sun/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lcom/sun/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/tools/javac/code/Printer;->seenCaptured:Lcom/sun/tools/javac/util/List;

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->capturedVarId(Lcom/sun/tools/javac/code/Type$CapturedType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$CapturedType;->wildcard:Lcom/sun/tools/javac/code/Type$WildcardType;

    .line 172
    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, "compiler.misc.type.captureof"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {p0, p2, v2, v3}, Lcom/sun/tools/javac/code/Printer;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_19 .. :try_end_39} :catchall_41

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/sun/tools/javac/code/Printer;->seenCaptured:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, p0, Lcom/sun/tools/javac/code/Printer;->seenCaptured:Lcom/sun/tools/javac/util/List;

    goto :goto_18

    :catchall_41
    move-exception v0

    iget-object v1, p0, Lcom/sun/tools/javac/code/Printer;->seenCaptured:Lcom/sun/tools/javac/util/List;

    iget-object v1, v1, Lcom/sun/tools/javac/util/List;->tail:Lcom/sun/tools/javac/util/List;

    iput-object v1, p0, Lcom/sun/tools/javac/code/Printer;->seenCaptured:Lcom/sun/tools/javac/util/List;

    .line 176
    throw v0
.end method

.method public bridge synthetic visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitClassSymbol(Lcom/sun/tools/javac/code/Symbol$ClassSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7

    .line 324
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 325
    const-string v0, "compiler.misc.anonymous.class"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->flatname:Lcom/sun/tools/javac/util/Name;

    aput-object v3, v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/tools/javac/code/Printer;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_16
    return-object v0

    .line 326
    :cond_17
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$ClassSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method public bridge synthetic visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitClassType(Lcom/sun/tools/javac/code/Type$ClassType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 201
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_54

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ClassType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, v1, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget v1, v1, Lcom/sun/tools/javac/code/Symbol;->kind:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_54

    .line 203
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getEnclosingType()Lcom/sun/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2}, Lcom/sun/tools/javac/code/Printer;->className(Lcom/sun/tools/javac/code/Type$ClassType;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    :goto_30
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 210
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Type$ClassType;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visitTypes(Lcom/sun/tools/javac/util/List;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_54
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p2}, Lcom/sun/tools/javac/code/Printer;->className(Lcom/sun/tools/javac/code/Type$ClassType;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_30
.end method

.method public bridge synthetic visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitErrorType(Lcom/sun/tools/javac/code/Type$ErrorType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitForAll(Lcom/sun/tools/javac/code/Type$ForAll;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->tvars:Lcom/sun/tools/javac/util/List;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visitTypes(Lcom/sun/tools/javac/util/List;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$ForAll;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 11

    .line 331
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->isStaticOrInstanceInit()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 332
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_e
    :goto_e
    return-object v0

    .line 334
    :cond_f
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name;->table:Lcom/sun/tools/javac/util/Name$Table;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Name$Table;->names:Lcom/sun/tools/javac/util/Names;

    iget-object v1, v1, Lcom/sun/tools/javac/util/Names;->init:Lcom/sun/tools/javac/util/Name;

    if-ne v0, v1, :cond_87

    .line 335
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->owner:Lcom/sun/tools/javac/code/Symbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_23
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    if-eqz v1, :cond_e

    .line 338
    iget-object v1, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    iget v1, v1, Lcom/sun/tools/javac/code/Type;->tag:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_52

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {v2}, Lcom/sun/tools/javac/code/Type;->getTypeArguments()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/sun/tools/javac/code/Printer;->visitTypes(Lcom/sun/tools/javac/util/List;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->type:Lcom/sun/tools/javac/code/Type;

    .line 342
    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Type;->getParameterTypes()Lcom/sun/tools/javac/util/List;

    move-result-object v2

    .line 343
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->flags()J

    move-result-wide v4

    const-wide v6, 0x400000000L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8e

    const/4 v0, 0x1

    .line 341
    :goto_76
    invoke-virtual {p0, v2, v0, p2}, Lcom/sun/tools/javac/code/Printer;->printMethodArgs(Lcom/sun/tools/javac/util/List;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 336
    :cond_87
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$MethodSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 343
    :cond_8e
    const/4 v0, 0x0

    goto :goto_76
.end method

.method public bridge synthetic visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitMethodType(Lcom/sun/tools/javac/code/Type$MethodType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$MethodType;->argtypes:Lcom/sun/tools/javac/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p2}, Lcom/sun/tools/javac/code/Printer;->printMethodArgs(Lcom/sun/tools/javac/util/List;ZLjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$MethodType;->restype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitOperatorSymbol(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitOperatorSymbol(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitOperatorSymbol(Lcom/sun/tools/javac/code/Symbol$OperatorSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 352
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitMethodSymbol(Lcom/sun/tools/javac/code/Symbol$MethodSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitPackageSymbol(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitPackageSymbol(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitPackageSymbol(Lcom/sun/tools/javac/code/Symbol$PackageSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 357
    invoke-virtual {p1}, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->isUnnamed()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 358
    const-string v0, "compiler.misc.unnamed.package"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/tools/javac/code/Printer;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_f
    return-object v0

    .line 359
    :cond_10
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol$PackageSymbol;->fullname:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public bridge synthetic visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitPackageType(Lcom/sun/tools/javac/code/Type$PackageType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 224
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$PackageType;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0}, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->getQualifiedName()Lcom/sun/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 374
    iget-object v0, p1, Lcom/sun/tools/javac/code/Symbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitSymbols(Lcom/sun/tools/javac/util/List;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Symbol;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 133
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Symbol;

    .line 135
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_8

    .line 137
    :cond_1c
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitType(Lcom/sun/tools/javac/code/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitType(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 248
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    if-nez v0, :cond_14

    .line 249
    :cond_a
    const-string v0, "compiler.misc.type.none"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1}, Lcom/sun/tools/javac/code/Printer;->localize(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_13
    return-object v0

    :cond_14
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type;->tsym:Lcom/sun/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lcom/sun/tools/javac/code/Symbol$TypeSymbol;->name:Lcom/sun/tools/javac/util/Name;

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public bridge synthetic visitTypeSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitTypeSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeSymbol(Lcom/sun/tools/javac/code/Symbol$TypeSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitTypeVar(Lcom/sun/tools/javac/code/Type$TypeVar;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitType(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitTypes(Lcom/sun/tools/javac/util/List;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/tools/javac/util/List",
            "<",
            "Lcom/sun/tools/javac/code/Type;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 118
    invoke-static {}, Lcom/sun/tools/javac/util/ListBuffer;->lb()Lcom/sun/tools/javac/util/ListBuffer;

    move-result-object v1

    .line 119
    invoke-virtual {p1}, Lcom/sun/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/tools/javac/code/Type;

    .line 120
    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lcom/sun/tools/javac/util/ListBuffer;

    goto :goto_8

    .line 122
    :cond_1c
    invoke-virtual {v1}, Lcom/sun/tools/javac/util/ListBuffer;->toList()Lcom/sun/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/tools/javac/util/List;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitUndetVar(Lcom/sun/tools/javac/code/Type$UndetVar;Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 187
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    if-eqz v0, :cond_b

    .line 188
    iget-object v0, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->inst:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v0, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$UndetVar;->qtype:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic visitVarSymbol(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitVarSymbol(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitVarSymbol(Lcom/sun/tools/javac/code/Symbol$VarSymbol;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitSymbol(Lcom/sun/tools/javac/code/Symbol;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 66
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/sun/tools/javac/code/Printer;->visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitWildcardType(Lcom/sun/tools/javac/code/Type$WildcardType;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    .line 229
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 231
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->kind:Lcom/sun/tools/javac/code/BoundKind;

    sget-object v2, Lcom/sun/tools/javac/code/BoundKind;->UNBOUND:Lcom/sun/tools/javac/code/BoundKind;

    if-eq v1, v2, :cond_19

    .line 232
    iget-object v1, p1, Lcom/sun/tools/javac/code/Type$WildcardType;->type:Lcom/sun/tools/javac/code/Type;

    invoke-virtual {p0, v1, p2}, Lcom/sun/tools/javac/code/Printer;->visit(Lcom/sun/tools/javac/code/Type;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
