.class public Lcom/google/googlejavaformat/java/ImportOrderer;
.super Ljava/lang/Object;
.source "ImportOrderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlejavaformat/java/ImportOrderer$Import;,
        Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;,
        Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z

.field private static final CLASS_START:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMPORT_OR_CLASS_START:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final lineSeparator:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final toks:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 33
    sget-object v0, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->CLASS:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    sget-object v1, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->INTERFACE:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    sget-object v2, Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;->ENUM:Lcom/google/googlejavaformat/java/javac/parser/Tokens$TokenKind;

    .line 39
    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/ImportOrderer;->CLASS_START:Lcom/google/common/collect/ImmutableSet;

    .line 45
    const-string v0, "import"

    const-string v1, "class"

    const-string v2, "interface"

    const-string v3, "enum"

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/googlejavaformat/java/ImportOrderer;->IMPORT_OR_CLASS_START:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/googlejavaformat/java/JavaInput$Tok;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->text:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    .line 54
    invoke-static {p1}, Lcom/google/googlejavaformat/Newlines;->guessLineSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private findIdentifier(ILcom/google/common/collect/ImmutableSet;)Lcom/google/common/base/Optional;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 267
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->isIdentifierToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 274
    :goto_1
    return-object v0

    .line 266
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_1
.end method

.method private isIdentifierToken(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNewlineToken(I)Z
    .registers 3

    .line 311
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isNewline()Z

    move-result v0

    return v0
.end method

.method private isSlashSlashCommentToken(I)Z
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->isSlashSlashComment()Z

    move-result v0

    return v0
.end method

.method private isSpaceToken(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 302
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, " \t\u000c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private reorderImports()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    const/4 v5, 0x0

    .line 70
    sget-object v0, Lcom/google/googlejavaformat/java/ImportOrderer;->IMPORT_OR_CLASS_START:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {p0, v5, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->findIdentifier(ILcom/google/common/collect/ImmutableSet;)Lcom/google/common/base/Optional;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "import"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->text:Ljava/lang/String;

    .line 116
    :goto_0
    return-object v0

    .line 75
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->unindent(I)I

    move-result v1

    .line 78
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->scanImports(I)Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;

    move-result-object v2

    .line 79
    iget v3, v2, Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;->index:I

    .line 82
    sget-object v0, Lcom/google/googlejavaformat/java/ImportOrderer;->IMPORT_OR_CLASS_START:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {p0, v3, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->findIdentifier(ILcom/google/common/collect/ImmutableSet;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "import"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 87
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-direct {p0, v5, v1}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_3
    iget-object v0, v2, Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;->imports:Lcom/google/common/collect/ImmutableSortedSet;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->reorderedImportsString(Lcom/google/common/collect/ImmutableSortedSet;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-static {}, Lcom/google/common/base/CharMatcher;->whitespace()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/base/CharMatcher;->trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    .line 99
    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getPosition()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->length()I

    move-result v0

    .line 100
    iget-object v3, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->text:Ljava/lang/String;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 84
    :cond_6
    new-instance v0, Lcom/google/googlejavaformat/java/FormatterException;

    const-string v1, "Imports not contiguous (perhaps a comment separates them?)"

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static reorderImports(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/google/googlejavaformat/java/ImportOrderer;->CLASS_START:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p0, v0}, Lcom/google/googlejavaformat/java/JavaInput;->buildToks(Ljava/lang/String;Lcom/google/common/collect/ImmutableSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/google/googlejavaformat/java/ImportOrderer;

    invoke-direct {v1, p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {v1}, Lcom/google/googlejavaformat/java/ImportOrderer;->reorderImports()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reorderedImportsString(Lcom/google/common/collect/ImmutableSortedSet;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<",
            "Lcom/google/googlejavaformat/java/ImportOrderer$Import;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;

    .line 209
    iget-boolean v0, v0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;

    .line 213
    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    if-nez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    iget-boolean v1, v0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;->isStatic:Z

    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private scanImported(I)Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    add-int/lit8 v2, p1, 0x1

    .line 244
    invoke-direct {p0, v2}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    new-instance v0, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;-><init>(Ljava/lang/String;I)V

    .line 251
    :goto_0
    return-object v0

    .line 247
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 248
    add-int/lit8 p1, v2, 0x1

    .line 249
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    const/16 v0, 0x2a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    new-instance v0, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->isIdentifierToken(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse imported name, at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/google/googlejavaformat/java/FormatterException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private scanImports(I)Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 142
    .line 143
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->naturalOrder()Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v2

    move v0, p1

    move v1, p1

    .line 147
    :goto_0
    iget-object v3, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v1, v3, :cond_b

    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "import"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 148
    add-int/lit8 v0, v1, 0x1

    .line 149
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    .line 152
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "static"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 153
    if-eqz v1, :cond_1

    .line 154
    add-int/lit8 v0, v0, 0x1

    .line 155
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->isIdentifierToken(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 162
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->scanImported(I)Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->access$000(Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {v0}, Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;->access$100(Lcom/google/googlejavaformat/java/ImportOrderer$StringAndIndex;)I

    move-result v0

    .line 165
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 168
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 171
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 177
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 180
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->isSlashSlashCommentToken(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 181
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->isNewlineToken(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 187
    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    add-int/lit8 p1, v0, 0x1

    .line 189
    new-instance v0, Lcom/google/googlejavaformat/java/ImportOrderer$Import;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/google/googlejavaformat/java/ImportOrderer$Import;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet$Builder;

    move v1, p1

    .line 194
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/ImportOrderer;->isNewlineToken(I)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v1}, Lcom/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    move v0, p1

    .line 197
    goto/16 :goto_0

    .line 185
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extra tokens after import: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/googlejavaformat/java/FormatterException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_9
    new-instance v0, Lcom/google/googlejavaformat/java/FormatterException;

    const-string v1, "Expected ; after import"

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token after import: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->tokenAt(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/google/googlejavaformat/java/FormatterException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlejavaformat/java/FormatterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_b
    new-instance v1, Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSortedSet$Builder;->build()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/googlejavaformat/java/ImportOrderer$ImportsAndIndex;-><init>(Lcom/google/common/collect/ImmutableSortedSet;I)V

    return-object v1
.end method

.method private tokString(II)Ljava/lang/String;
    .registers 5

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    :goto_0
    if-ge p1, p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tokenAt(I)Ljava/lang/String;
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/google/googlejavaformat/java/ImportOrderer;->toks:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlejavaformat/java/JavaInput$Tok;

    invoke-virtual {v0}, Lcom/google/googlejavaformat/java/JavaInput$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unindent(I)I
    .registers 3

    .line 281
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlejavaformat/java/ImportOrderer;->isSpaceToken(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    add-int/lit8 p1, p1, -0x1

    .line 284
    :cond_0
    return p1
.end method
