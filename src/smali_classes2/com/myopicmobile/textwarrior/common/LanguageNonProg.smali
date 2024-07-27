.class public Lcom/myopicmobile/textwarrior/common/LanguageNonProg;
.super Lcom/myopicmobile/textwarrior/common/Language;


# static fields
.field private static _theOne:Lcom/myopicmobile/textwarrior/common/Language;

.field private static final keywords:[Ljava/lang/String;

.field private static final operators:[C


# direct methods
.method static final constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    check-cast v0, Lcom/myopicmobile/textwarrior/common/Language;

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->keywords:[Ljava/lang/String;

    new-array v0, v1, [C

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->operators:[C

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/common/Language;-><init>()V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->keywords:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/myopicmobile/textwarrior/common/Language;->setKeywords([Ljava/lang/String;)V

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->operators:[C

    invoke-super {p0, v0}, Lcom/myopicmobile/textwarrior/common/Language;->setOperators([C)V

    return-void
.end method

.method public static getInstance()Lcom/myopicmobile/textwarrior/common/Language;
    .registers 1

    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    if-nez v0, :cond_0

    new-instance v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;

    invoke-direct {v0}, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;-><init>()V

    sput-object v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    :cond_0
    sget-object v0, Lcom/myopicmobile/textwarrior/common/LanguageNonProg;->_theOne:Lcom/myopicmobile/textwarrior/common/Language;

    return-object v0
.end method


# virtual methods
.method public isDelimiterA(C)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isDelimiterB(C)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isEscapeChar(C)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isLineAStart(C)Z
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isLineStart(CC)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isMultilineEndDelimiter(CC)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isMultilineStartDelimiter(CC)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isProgLang()Z
    .registers 2
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
