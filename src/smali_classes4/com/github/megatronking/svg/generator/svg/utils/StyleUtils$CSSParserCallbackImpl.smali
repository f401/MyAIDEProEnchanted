.class Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/megatronking/svg/generator/svg/css/CSSParserCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSParserCallbackImpl"
.end annotation


# instance fields
.field private isInRule:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private propertySave:Ljava/lang/String;

.field private styleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public endRule()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->isInRule:Z

    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->styleMap:Ljava/util/Map;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->propertySave:Ljava/lang/String;

    return-void
.end method

.method public handleImport(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public handleProperty(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-static {p1}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->isInRule:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->styleMap:Ljava/util/Map;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->propertySave:Ljava/lang/String;

    if-nez v0, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->propertySave:Ljava/lang/String;

    :cond_18
    return-void
.end method

.method public handleSelector(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->isInRule:Z

    if-nez v1, :cond_1e

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->styleMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->map:Ljava/util/Map;

    iget-object v2, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->styleMap:Ljava/util/Map;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->propertySave:Ljava/lang/String;

    return-void

    :cond_1e
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->styleMap:Ljava/util/Map;

    goto :goto_19
.end method

.method public handleValue(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    invoke-static {p1}, Lcom/github/megatronking/svg/generator/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->isInRule:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->styleMap:Ljava/util/Map;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->propertySave:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->styleMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->propertySave:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->propertySave:Ljava/lang/String;

    :cond_22
    return-void
.end method

.method public startRule()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->isInRule:Z

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/github/megatronking/svg/generator/svg/utils/StyleUtils$CSSParserCallbackImpl;->propertySave:Ljava/lang/String;

    return-void
.end method
