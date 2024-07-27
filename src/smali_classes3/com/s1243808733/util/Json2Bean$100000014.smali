.class Lcom/s1243808733/util/Json2Bean$100000014;
.super Ljava/lang/Object;
.source "Json2Bean.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final val$activity:Landroid/app/Activity;

.field private final val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;


# direct methods
.method constructor <init>(Lcom/s1243808733/util/Json2Java$Configurd;Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    iput-object p2, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$activity:Landroid/app/Activity;

    return-void
.end method

.method private getItem()[Ljava/lang/String;
    .registers 8

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Add set method"

    aput-object v1, v0, v2

    const-string v1, "Add get method"

    aput-object v1, v0, v3

    const-string v1, "Sorting set and get methods"

    aput-object v1, v0, v4

    const-string v1, "public field"

    aput-object v1, v0, v5

    const-string v1, "List<?> -> ?[]"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "int -> Integer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toString"

    aput-object v2, v0, v1

    .line 288
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u6dfb\u52a0set\u65b9\u6cd5"

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u6dfb\u52a0get\u65b9\u6cd5"

    aput-object v1, v0, v3

    const-string v1, "\u6392\u5e8f set\u3001get\u65b9\u6cd5"

    aput-object v1, v0, v4

    const-string v1, "public field"

    aput-object v1, v0, v5

    const-string v1, "List<?> -> ?[]"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "int -> Integer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toString"

    aput-object v2, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Lcom/s1243808733/util/Json2Java$Configurd;->isSetters()Z

    move-result v1

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Lcom/s1243808733/util/Json2Java$Configurd;->isGetters()Z

    move-result v2

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Lcom/s1243808733/util/Json2Java$Configurd;->isSortMethod()Z

    move-result v3

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Lcom/s1243808733/util/Json2Java$Configurd;->isPublicField()Z

    move-result v4

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseArray()Z

    move-result v5

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Lcom/s1243808733/util/Json2Java$Configurd;->isUseInteger()Z

    move-result v6

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-virtual {v0}, Lcom/s1243808733/util/Json2Java$Configurd;->isToString()Z

    move-result v7

    .line 303
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$activity:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/s1243808733/util/Utils;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u914d\u7f6e"

    :goto_0
    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/s1243808733/util/Json2Bean$100000014;->getItem()[Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/s1243808733/util/Json2Bean$100000014$100000013;

    iget-object v10, p0, Lcom/s1243808733/util/Json2Bean$100000014;->val$configurd:Lcom/s1243808733/util/Json2Java$Configurd;

    invoke-direct {v9, p0, v10}, Lcom/s1243808733/util/Json2Bean$100000014$100000013;-><init>(Lcom/s1243808733/util/Json2Bean$100000014;Lcom/s1243808733/util/Json2Java$Configurd;)V

    const/4 v10, 0x7

    new-array v10, v10, [Z

    const/4 v11, 0x0

    aput-boolean v1, v10, v11

    const/4 v1, 0x1

    aput-boolean v2, v10, v1

    const/4 v1, 0x2

    aput-boolean v3, v10, v1

    const/4 v1, 0x3

    aput-boolean v4, v10, v1

    const/4 v1, 0x4

    aput-boolean v5, v10, v1

    const/4 v1, 0x5

    aput-boolean v6, v10, v1

    const/4 v1, 0x6

    aput-boolean v7, v10, v1

    invoke-virtual {v0, v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const-string v0, "Configure"

    goto :goto_0
.end method
