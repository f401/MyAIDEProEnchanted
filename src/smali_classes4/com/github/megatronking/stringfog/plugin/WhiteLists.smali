.class final Lcom/github/megatronking/stringfog/plugin/WhiteLists;
.super Ljava/lang/Object;


# static fields
.field private static final CLASS_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static final constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->CLASS_WHITE_LIST:Ljava/util/List;

    const-string v0, "BuildConfig"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->addWhiteList(Ljava/lang/String;)V

    const-string v0, "R"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->addWhiteList(Ljava/lang/String;)V

    const-string v0, "R2"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->addWhiteList(Ljava/lang/String;)V

    const-string v0, "StringFog"

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->addWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addWhiteList(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->CLASS_WHITE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static checkClass(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->CLASS_WHITE_LIST:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_f
.end method

.method static inWhiteList(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/github/megatronking/stringfog/plugin/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p0}, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->shortClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->checkClass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private static shortClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/github/megatronking/stringfog/plugin/WhiteLists;->trueClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[.]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static trueClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
