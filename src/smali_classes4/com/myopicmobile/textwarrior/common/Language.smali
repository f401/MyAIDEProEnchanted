.class public abstract Lcom/myopicmobile/textwarrior/common/Language;
.super Ljava/lang/Object;


# static fields
.field public static final BACKSPACE:C = '\b'

.field private static final BASIC_C_OPERATORS:[C

.field public static final EOF:C = '\uffff'

.field public static final GLYPH_NEWLINE:Ljava/lang/String; = "↵"

.field public static final GLYPH_SPACE:Ljava/lang/String; = "·"

.field public static final GLYPH_TAB:Ljava/lang/String; = "»"

.field public static final NEWLINE:C = '\n'

.field public static final NULL_CHAR:C = '\u0000'

.field public static final TAB:C = '\t'


# instance fields
.field protected _bases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _keyword:[Ljava/lang/String;

.field protected _keywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _name:[Ljava/lang/String;

.field protected _names:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected _operators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _ueserCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _userWords:[Ljava/lang/String;

.field protected _users:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/myopicmobile/textwarrior/common/Language;->BASIC_C_OPERATORS:[C

    return-void

    :array_a
    .array-data 2
        0x28s
        0x29s
        0x7bs
        0x7ds
        0x2es
        0x2cs
        0x3bs
        0x3ds
        0x2bs
        0x2ds
        0x2fs
        0x2as
        0x26s
        0x21s
        0x7cs
        0x3as
        0x5bs
        0x5ds
        0x3cs
        0x3es
        0x3fs
        0x7es
        0x25s
        0x5es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_keywords:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_names:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_bases:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_users:Ljava/util/HashMap;

    sget-object v0, Lcom/myopicmobile/textwarrior/common/Language;->BASIC_C_OPERATORS:[C

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/common/Language;->generateOperators([C)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_operators:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_ueserCache:Ljava/util/ArrayList;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_userWords:[Ljava/lang/String;

    return-void
.end method

.method private contains(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_d
.end method

.method private contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_6

    :goto_5
    return v1

    :cond_6
    aget-object v2, p1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    goto :goto_5

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private generateOperators([C)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    array-length v2, p1

    if-lt v0, v2, :cond_b

    return-object v1

    :cond_b
    new-instance v2, Ljava/lang/Character;

    aget-char v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public addBasePackage(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_bases:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUserWord(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_ueserCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_names:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_ueserCache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_users:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearUserWord()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_ueserCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_users:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getBasePackage(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_bases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_keyword:[Ljava/lang/String;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_name:[Ljava/lang/String;

    return-object v0
.end method

.method public getUserWord()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_userWords:[Ljava/lang/String;

    return-object v0
.end method

.method public final isBasePackage(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_bases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isBaseWord(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_bases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    :goto_a
    array-length v3, v0

    if-lt v1, v3, :cond_e

    :goto_d
    return v2

    :cond_e
    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x1

    goto :goto_d

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public isDelimiterA(C)Z
    .registers 3

    const/16 v0, 0x22

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isDelimiterB(C)Z
    .registers 3

    const/16 v0, 0x27

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isEscapeChar(C)Z
    .registers 3

    const/16 v0, 0x5c

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final isKeyword(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_keywords:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLineAStart(C)Z
    .registers 3

    const/16 v0, 0x23

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isLineBStart(C)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isLineStart(CC)Z
    .registers 4

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_6

    if-eq p2, v0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isMultilineEndDelimiter(CC)Z
    .registers 4

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_8

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isMultilineStartDelimiter(CC)Z
    .registers 4

    const/16 v0, 0x2f

    if-ne p1, v0, :cond_8

    const/16 v0, 0x2a

    if-eq p2, v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final isName(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_names:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isOperator(C)Z
    .registers 4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_operators:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isProgLang()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSentenceTerminator(C)Z
    .registers 3

    const/16 v0, 0x2e

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final isUserWord(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_users:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWhitespace(C)Z
    .registers 3

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1b

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1b

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1b

    const v0, 0xffff

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public isWordStart(C)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setKeywords([Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/Language;->_keyword:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_keywords:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_b
    array-length v1, p1

    if-lt v0, v1, :cond_f

    return-void

    :cond_f
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/Language;->_keywords:Ljava/util/HashMap;

    aget-object v2, p1, v0

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public setNames([Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/common/Language;->_name:[Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_names:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_10
    array-length v2, p1

    if-lt v0, v2, :cond_21

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_name:[Ljava/lang/String;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_name:[Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void

    :cond_21
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/common/Language;->_names:Ljava/util/HashMap;

    aget-object v3, p1, v0

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method protected setOperators([C)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/common/Language;->generateOperators([C)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_operators:Ljava/util/HashMap;

    return-void
.end method

.method public updateUserWord()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_ueserCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/common/Language;->_ueserCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/common/Language;->_userWords:[Ljava/lang/String;

    return-void
.end method
